import 'package:flutter/material.dart';
import 'package:mealapp/widgets/drawer.dart';

class Filter extends StatelessWidget {
  final String name = 'filter';
  const Filter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),drawer: const CustomDrawer(),);
  }
}
