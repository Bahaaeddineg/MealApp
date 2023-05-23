import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'darkMode/myProvider.dart';
import 'views/homePage.dart';
import 'views/mealScr.dart';
import 'views/splashScreen.dart';
import 'views/MealMenu.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=>MyProvider(),
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.amber),
        routes: {
          '/': (context) => const SplashScreen(),
          'meal': (context) => Meals(),
          'mealDetails': (context) => Details(),
          'category': (context) => const Home(),
        },
      ),
    );
  }
}
