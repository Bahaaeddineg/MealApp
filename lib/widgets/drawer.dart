import 'package:flutter/material.dart';
import 'package:mealapp/darkMode/myProvider.dart';
import 'package:provider/provider.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Provider.of<MyProvider>(context).mode,
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, right: 15, left: 15),
          child: Column(children: [
            Switch(
                value: Provider.of<MyProvider>(context).sBool,
                onChanged: (value) =>
                    Provider.of<MyProvider>(context, listen: false)
                        .switchMode(value)),
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
