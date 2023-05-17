import 'package:flutter/material.dart';
import 'package:mealapp/widgets/drawer.dart';

import '../data/data.dart';


List meals_list_updated=meals_list;

class Filter extends StatefulWidget {



  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  final String name = 'filter';
  void setFilters(){
  setState(() {
    meals_list_updated=meals_list.where((element) {
      if (vegetarian && !element.vegetarian) return false;
      if (vegan && !element.vegan) return false ;
      if (gluten && !element.gluten_free) return false;
      return true;
    }).toList();
  });
}
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(child: Text('save'),onPressed: setFilters,),
        Expanded(
          child: ListView(
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
                      gluten= value;
                    });
                  }),  
            ],
          ),
        ),
      ],
    );
  }
}
