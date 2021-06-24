

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stocklist_app/entity/category.dart';

class CategoryListTile extends StatelessWidget {

  final Category category;
  final bool isSelected;
  final VoidCallback? onTap;

  CategoryListTile(this.category, { this.isSelected = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.category),
      title: Text(category.path),
      onTap: this.onTap ,
      selected: isSelected,

    );
  }
}

typedef OnClickCategoryListener = Function(Category);

class CategoryListView extends StatelessWidget {

  final List<Category> categories;
  final Set<int>? selectedCategoryIds;
  final OnClickCategoryListener? listener;
  final bool isSelectable;
  CategoryListView({required this.categories, this.selectedCategoryIds, this.listener, this.isSelectable = false});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return CategoryListTile(
          categories[index],
          onTap: this.listener == null ? null : () {
            listener!(categories[index]);
          },
          isSelected: this.isSelectable && (selectedCategoryIds?.any((element) => element == categories[index].id)?? false),
        );
      },
      itemCount: categories.length,
    );
  }
}

class CategorySelectionListTile extends StatelessWidget {
  final VoidCallback? onTap;
  final Category? category;
  final String? errorText;

  CategorySelectionListTile({ this.onTap, this.category, this.errorText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(category == null)
          ListTile(
            trailing: Icon(Icons.arrow_forward),
            title: Text("カテゴリを選択"),
            leading: Icon(Icons.category),
            onTap: onTap,
            subtitle: errorText == null ? null : Text(
              errorText!,
              style: TextStyle(
                  color: Theme.of(context).errorColor
              ),
            ),
          ),
        if(category != null)
          ListTile(
            leading: Icon(Icons.category),
            title: Text(category!.path),
            onTap: this.onTap ,
            selected: true,
            subtitle: errorText == null ? null : Text(
              errorText!,
              style: TextStyle(
                color: Theme.of(context).errorColor
              ),
            ),

          )
      ],
    );
  }
}