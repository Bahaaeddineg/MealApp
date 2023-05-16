import 'package:flutter/material.dart';

class EachMeal extends StatelessWidget {
  final int price;
  final String mealName;
  final int time;
  final String image;
  final String id;
  
  const EachMeal({
    super.key,
    required this.price,
    required this.mealName,
    required this.time,
    required this.image,
    required this.id,
  });

  void selectedFood(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('mealDetails', arguments: {
      'image': image,
      'mealName': mealName,
      'price': price,
      'time': time,
      'id':id,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(20)),
        child: InkWell(
          onTap: () => selectedFood(context),
          child: Column(children: [
            SizedBox(
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/$image',
                    fit: BoxFit.fill,
                  ),
                )),
            Text(
              mealName,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 22,
                fontFamily: 'Sigmar',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.timer,
                  size: 30,
                ),
                Text(
                  '$time minutes',
                  style: const TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.monetization_on,
                      size: 30,
                    ),
                  ],
                ),
                Text('$price DZD',
                    style: const TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 14,
                        fontWeight: FontWeight.bold))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.food_bank, size: 40, color: Colors.red),
                Icon(Icons.monetization_on_outlined,
                    size: 40, color: Colors.green),
                Icon(
                  Icons.recommend,
                  size: 40,
                  semanticLabel: 'recommend',
                  color: Colors.yellow,
                ),
                Icon(Icons.star, size: 40, color: Colors.yellow),
              ],
            )
          ]),
        ));
  }
}
