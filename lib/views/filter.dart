import 'package:flutter/material.dart';
import 'package:mealapp/widgets/drawer.dart';

import '../data/data.dart';

List mealsListUpdated = meals_list;

class Filter extends StatefulWidget {
  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  final String name = 'filter';
  void setFilters() {
    setState(() {
      mealsListUpdated = meals_list.where((element) {
        if (vegetarian && !element.vegetarian) return false;
        if (vegan && !element.vegan) return false;
        if (gluten && !element.gluten_free) return false;
        return true;
      }).toList();
    });
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(duration:Duration(seconds: 2),content: Text('Filters set',textAlign: TextAlign.center,),));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SwitchListTile(
            title: const Text('vegetarian'),
            value: vegetarian,
            onChanged: (value) {
              setState(() {
                vegetarian = value;
              });
            }),
        SwitchListTile(
            title: const Text('vegan'),
            value: vegan,
            onChanged: (value) {
              setState(() {
                vegan = value;
              });
            }),
        SwitchListTile(
            title: const Text('Gluten-Free'),
            value: gluten,
            onChanged: (value) {
              setState(() {
                gluten = value;
              });
            }),
        InkWell(
            onTap: setFilters,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(color: Colors.amber),
              child: const Text(
                'Set filters',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            )),
      ],
    );
  }
}
