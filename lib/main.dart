import 'package:flutter/material.dart';
import 'package:mealapp/views/mealScr.dart';
import 'views/splashScreen.dart';
import 'views/MealMenu.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      routes: {
        '/': (context) => const SplashScreen(),
        'meal': (context) => const Meals(),
        'mealDetails':(context)=> Details()
      },
    );
  }
}
