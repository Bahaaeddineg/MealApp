import 'package:flutter/material.dart';

class EachMeal extends StatelessWidget {
  final int price;
  final String mealName;
  final int time;
  final String image;

  const EachMeal({
    super.key,
    required this.price,
    required this.mealName,
    required this.time,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(20)),
        child: InkWell(
          onTap: () => null,
          child: Column(children: [
            SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/$image',
                  fit: BoxFit.fill,
                )),
            Text(
              mealName,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 32,
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
                      fontSize: 18,
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
                        fontSize: 18,
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
