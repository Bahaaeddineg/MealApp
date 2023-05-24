// ignore: file_names
import 'package:flutter/material.dart';
import 'package:mealapp/widgets/eachMeal.dart';

import 'filter.dart';

class Meals extends StatefulWidget {
  const Meals({super.key});

  @override
  State<Meals> createState() => _MealsState();
}

class _MealsState extends State<Meals> {
  final String name = 'meal';

  @override
  Widget build(BuildContext context) {
    final Map arg = ModalRoute.of(context)?.settings.arguments as Map;
    final argCategory = arg['category'];
    final idCat = arg['id'];
    final newList =
        mealsListUpdated.where((element) => element.id == idCat).toList();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 224, 176),
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            argCategory,
            style: const TextStyle(fontFamily: 'Sigmar'),
          )),
      body: ListView(
          children: newList
              .map((e) => EachMeal(
                    price: e.price,
                    mealName: e.mealName,
                    time: e.time,
                    image: e.image,
                    id: e.id,
                  ))
              .toList()),
    );
  }
}
