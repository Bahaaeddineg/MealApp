import 'package:flutter/material.dart';
import 'package:mealapp/data/data.dart';

import 'eachMeal.dart';

class Favourites extends StatelessWidget {
  const Favourites({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
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
