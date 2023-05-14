import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../widgets/categoriesGrid.dart';
import '../widgets/drawer.dart';
import '../widgets/favourites.dart';

class Home extends StatefulWidget {
  final String name='category';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

List widgets = [
  {'page': CategoriesScreen(), 'title': 'Foods'},
  {'page': const Favourites(), 'title': 'Favourite foods'},
  {'page': const Favourites(), 'title': 'Favourite foods'},
  {'page': const Favourites(), 'title': 'Favourite foods'},
];

class _HomeState extends State<Home> {
  int selectedWidgetIndex = 0;
  void selectedWidget(int value) {
    setState(() {
      selectedWidgetIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 224, 176),
      appBar: AppBar(
        title: Text(
          widgets[selectedWidgetIndex]["title"],
          style: const TextStyle(fontSize: 25, fontFamily: 'Sigmar'),
        ),
        centerTitle: true,
      ),
      body: widgets[selectedWidgetIndex]['page'],
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.black,
          onTap: selectedWidget,
          color: Colors.amber,
          items: const [
            Icon(
              Icons.food_bank,
              size: 30,
            ),
            Icon(
              Icons.favorite,
              size: 30,
            ),
            Icon(
              Icons.settings,
              size: 30,
            ),
            Icon(
              Icons.filter,
              size: 30,
            )
          ]),
      drawer: const CustomDrawer(),
    );
  }
}
