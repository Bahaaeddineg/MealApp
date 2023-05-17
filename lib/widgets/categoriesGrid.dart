import 'package:flutter/material.dart';
import '../data/data.dart';
import 'category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: const EdgeInsets.all(18),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 170, crossAxisSpacing: 20, mainAxisSpacing: 30),
        children: categories_list
            .map((e) =>
                CategoryItem(category: e.category, image: e.image, id: e.id))
            .toList());

    ;
  }
}
