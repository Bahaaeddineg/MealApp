import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: const Color.fromARGB(255, 230, 224, 176),
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, right: 15, left: 15),
          child: Column(children: [
            const SizedBox(
              width: double.infinity,
              height: 60,
              child: Center(
                  child: Text("Foody!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.amber,
                          fontFamily: 'Sigmar',
                          fontSize: 40))),
            ),
            const Divider(
              color: Colors.black,
            ),
            DrawerTile('anything', Icons.settings, () {}),
            DrawerTile('Categories', Icons.category, () {
              Navigator.of(context).pushReplacementNamed('category');
            }),
          ]),
        ));
  }

  // ignore: non_constant_identifier_names
  InkWell DrawerTile(String text, IconData icon, VoidCallback navigateFunc) {
    return InkWell(
      onTap: navigateFunc,
      child: Row(children: [
        Icon(
          icon,
          size: 35,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: const TextStyle(fontFamily: 'Sigmar', fontSize: 25),
        ),
      ]),
    );
  }
}
