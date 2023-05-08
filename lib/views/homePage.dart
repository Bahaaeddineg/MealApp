import 'package:flutter/material.dart';
import 'package:mealapp/widgets/category_item.dart';
import 'package:mealapp/data/data.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 230, 224, 176),
        appBar: AppBar(
          title: const Text(
            'Meal App',
            style: TextStyle(fontSize: 25, fontFamily: 'Sigmar'),
          ),
          centerTitle: true,
        ),
        body: GridView(
            padding: const EdgeInsets.all(18),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 350,
                crossAxisSpacing: 20,
                mainAxisSpacing: 30),
            children: categories_list
                .map((e) => CategoryItem(
                      category: e.category,
                      image: e.image,
                      id:e.id
                    ))
                .toList()));
  }
}
