

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/entity/item.dart';
import 'package:stocklist_app/entity/stock.dart';
import 'package:stocklist_app/main.dart';
import 'package:stocklist_app/screen/boxes_screen.dart';
import 'package:stocklist_app/widget/box_widget.dart';

/// StockEditorScreenにデータを渡すためのオブジェクト
class StockEditorArgs {
  final Stock? stock;
  final Item item;
  StockEditorArgs({required this.item, this.stock});
}

class StockEditorScreen extends HookWidget {


  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as StockEditorArgs;
    final boxId = useState(args.stock?.boxId);

    final inputCounter = useTextEditingController();
    inputCounter.value = TextEditingValue(
      text: (args.stock?.count)?.toString()?? ''
    );

    final item = useProvider(itemsStateProvider).get(args.item.id);

    Future<void> selectBox() async {
      final res = await Navigator.of(context).pushNamed(
          '/boxes',
          arguments: BoxesScreenArgs(
              selectable: BoxSelectable(maxSelectableCount: 1, selectedBoxIds: boxId.value == null ? [] : [boxId.value!])
          )
      );
      if(res is List && res.length > 0) {
        boxId.value = res[0];
        print("box選択:" + res.toString());
      }else if(res is List){
        boxId.value = null;
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: args.stock == null ? Text("新しく収納する") : Text("収納情報編集"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text("収納場所"),
          if(boxId.value == null)
            ListTile(
              title: Text("収納先を選択してください。"),
              leading: Icon(Icons.arrow_forward_ios),
              onTap: selectBox,
            ),
          if(boxId.value != null)
            BoxListTile(
              box: useProvider(boxesStateProvider).get(boxId.value),
              listener: selectBox,
            ),
          TextField(
            controller: inputCounter,
            decoration: InputDecoration(
              hintText: "収納する${item.name}の個数",
              labelText: "個数",

            ),
            keyboardType: TextInputType.number,
          )
        ],
      ),
    );
  }
}