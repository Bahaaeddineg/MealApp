import 'package:flutter/material.dart';
import 'package:mealapp/data/data.dart';

class Details extends StatelessWidget {
  final name = 'mealDetails';
  
  @override
  Widget build(BuildContext context) {
    final Map arg = ModalRoute.of(context)?.settings.arguments as Map;
    final mealName = arg['mealName'];
    final price = arg['price'];
    final image = arg['image'];
    final time = arg['time'];
    final id= arg['id'];
    MealDetails detailsObject =
        details.firstWhere((element) => element.mealName == mealName);
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).pop(id);
      },child: const Icon(Icons.delete)),
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            mealName,
            style: const TextStyle(
              fontFamily: 'Sigmar',
              fontSize: 25,
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/$image')),
          Center(
              child: Text(
            'Price: $price DZD',
            style: const TextStyle(fontFamily: 'Sigmar', fontSize: 25),
          )),
          Center(
              child: Text(
            'Time: $time min',
            style: const TextStyle(fontFamily: 'Sigmar', fontSize: 25),
          )),
          Center(
              child: Text(
            'Country: ${detailsObject.country}',
            style: const TextStyle(fontFamily: 'Sigmar', fontSize: 25),
          )),
          const Text('Ingredients: ',
              style: TextStyle(fontFamily: 'Sigmar', fontSize: 25)),
          Text(
            detailsObject.ingredients,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ]),
      ),
    );
  }
}
