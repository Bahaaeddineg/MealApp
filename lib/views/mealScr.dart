import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final name = 'mealDetails';
 

 
  @override
  Widget build(BuildContext context) {
     final Map arg = ModalRoute.of(context)?.settings.arguments as Map;
     final mealName=arg['mealName'];
     final id = arg['id'];
     
    return Scaffold(
      appBar: AppBar(
          title: Text(
        mealName,
        style: const TextStyle(
          fontFamily: 'Sigmar',
          fontSize: 25,
        ),
      )),
      body: null,
    );
  }
}
