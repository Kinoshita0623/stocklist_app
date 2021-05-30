


import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

import '../main.dart';

class ItemEditorScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {

    final _nameFieldController = useTextEditingController();
    final _descriptionFieldController = useTextEditingController();
    final picker = ImagePicker();
    final pickedFile = useState<File?>(null);
    final isDisposable = useState<bool>(false);

    Future _pickImageFromCamera() async{
      final image = await picker.getImage(source: ImageSource.camera);
      final path = image?.path;
      if(path != null) {
        pickedFile.value = File(path);
      }
    }

    Future _pickImageFromGallery() async {
      final image = await picker.getImage(source: ImageSource.gallery);
      final path = image?.path;
      if(path != null) {
        pickedFile.value = File(path);
      }
    }

    void create() {

      final file = pickedFile.value;
      if(file == null) {
        return;
      }
      context.read(itemsStateProvider.notifier).create(
        name: _nameFieldController.text,
        isDisposable: isDisposable.value,
        description: _descriptionFieldController.text,
        image: file,
      );
      Navigator.pop(context);

    }

    void _showPickTypeDialog() {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text("写真を撮影"),
                onTap: (){
                  Navigator.of(context).pop();
                  _pickImageFromCamera();
                },
              ),
              ListTile(
                title: Text("ギャラリーから選択"),
                onTap: (){
                  Navigator.of(context).pop();
                  _pickImageFromGallery();
                },
              )
            ],
          );
        }
      );
    }

    Widget _buildImage() {
      Widget image;
      if(pickedFile.value == null) {
        image = Image.asset(
          "images/no_image_500.png",
          fit: BoxFit.cover,
        );
      }else{
        image = Image.file(
          pickedFile.value!,
          fit: BoxFit.cover,
        );
      }
      return image;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("物を追加する"),
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 100),
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
            child: TextField(
              controller: _nameFieldController,
              decoration: InputDecoration(
                labelText: "名称",
                hintText: "物の名称を入力して下さい"
              ),

            ),
          ),
          Container(
            child: AspectRatio(
              aspectRatio: 4/3,
              child: _buildImage(),
            ),
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
          ),
          ElevatedButton(
            onPressed: (){
              _showPickTypeDialog();
            },
            child: Text("写真を変更する")),
          SwitchListTile(
            title: Text("消耗品です"),
            value: isDisposable.value,
            onChanged: (bool state){
              isDisposable.value = state;
            }
          ),
          Container(
            padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
            child: TextField(
              controller: _descriptionFieldController,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                hintText: "物についての説明",
                labelText: "説明"
              ),
            )
          )

        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          create();
        },
        label: Text("作成"),
        icon: Icon(Icons.save),
      ),
    );
  }


}