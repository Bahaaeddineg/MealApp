import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mealapp/darkMode/myProvider.dart';
import 'package:provider/provider.dart';
import '../widgets/categoriesGrid.dart';
import '../widgets/drawer.dart';
import '../widgets/favourites.dart';
import 'filter.dart';

class Home extends StatefulWidget {
  final String name = 'category';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

List widgets = [
  {'page': CategoriesScreen(), 'title': 'Foods'},
  {'page': const Favourites(), 'title': 'Favourite foods'},
  {'page': Filter(), 'title': 'Filter'},
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
        backgroundColor: Provider.of<MyProvider>(context).mode,
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
            ]),
        drawer: const CustomDrawer(),
      
    ); 
  }
}
