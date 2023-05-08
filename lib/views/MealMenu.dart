import 'package:flutter/material.dart';
import 'package:mealapp/data/data.dart';
import 'package:mealapp/widgets/eachMeal.dart';

class Meals extends StatelessWidget {
  final String name = 'meal';
  const Meals({super.key});
  @override
  Widget build(BuildContext context) {
    final Map arg = ModalRoute.of(context)?.settings.arguments as Map;
    final argCategory = arg['category'];
    final idCat = arg['id'];
    final newList = meals_list.where((element) => element.id == idCat).toList();
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
                  image: e.image))
              .toList()),
    );
  }
}