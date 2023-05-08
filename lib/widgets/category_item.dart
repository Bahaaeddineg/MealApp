import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String category;
  final String image;
  final String id;
  const CategoryItem(
      {super.key,
      required this.category,
      required this.image,
      required this.id});

  void toMeals(BuildContext ctx) {
    Navigator.of(ctx)
        .pushNamed('meal', arguments: {'category': category, 'id': id});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      onTap: () => toMeals(context),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.amber, borderRadius: BorderRadius.circular(20)),
          child: Column(children: [
            Expanded(
                child: SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/$image',
                      fit: BoxFit.cover,
                    ))),
            Hero(
              tag: 'ok',
              child: Text(
                category,
                style: const TextStyle(
                  fontSize: 22,
                  fontFamily: 'Sigmar',
                ),
              ),
            ),
          ])),
    );
  }
}
