import 'package:flutter/material.dart';
import 'package:mealapp/data/data.dart';

import 'eachMeal.dart';

class Favourites extends StatelessWidget {
  const Favourites({super.key});

  @override
  Widget build(BuildContext context) {
    return favouritesList.length == 0
        ? const Center(
            child: Text(
                "You have no favourite food ! Go dicover the available food !",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),))
        : ListView(
            children: favouritesList
                .map((e) => EachMeal(
                      price: e.price,
                      mealName: e.mealName,
                      time: e.time,
                      image: e.image,
                      id: e.id,
                    ))
                .toList());
  }
}
