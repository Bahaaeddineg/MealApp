import 'package:flutter/material.dart';
import 'package:mealapp/data/data.dart';
import 'package:mealapp/widgets/favourites.dart';

class EachMeal extends StatefulWidget {
  final int price;
  late int index ;
  final String mealName;
  final int time;
  final String image;
  final String id;
  
  EachMeal({
    super.key,
    required this.price,
    required this.mealName,
    required this.time,
    required this.image,
    required this.id,
 
  });

  @override
  State<EachMeal> createState() => _EachMealState();
}

class _EachMealState extends State<EachMeal> {
  void selectedFood(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('mealDetails', arguments: {
      'image': widget.image,
      'mealName': widget.mealName,
      'price': widget.price,
      'time': widget.time,
      'id':widget.id,
    });
  }

  void likeFood(String id){
    setState(() {
      widget.index=meals_list.indexWhere((element) =>element.id==id);
      favouritesList.add(meals_list[widget.index]);
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
                    'assets/images/${widget.image}',
                    fit: BoxFit.fill,
                  ),
                )),
            Text(
              widget.mealName,
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
                  '${widget.time} minutes',
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
                Text('${widget.price} DZD',
                    style: const TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 14,
                        fontWeight: FontWeight.bold))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [
                const Icon(Icons.food_bank, size: 40, color: Colors.red),
                const Icon(Icons.monetization_on_outlined,
                    size: 40, color: Colors.green),
                const Icon(
                  Icons.recommend,
                  size: 40,
                  semanticLabel: 'recommend',
                  color: Colors.yellow,
                ),
                InkWell(onTap:()=>likeFood(widget.id),child: const Icon(Icons.star, size: 40, color: Colors.yellow)),
              ],
            )
          ]),
        ));
  }
}
