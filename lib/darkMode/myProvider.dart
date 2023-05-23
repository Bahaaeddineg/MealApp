import 'package:flutter/material.dart';

class MyProvider with ChangeNotifier {
  Color mode=const Color.fromARGB(255, 230, 224, 176);
  bool sBool=false;

  void switchMode(bool value){
      sBool=value;
      mode = !value ? const Color.fromARGB(255, 230, 224, 176):Colors.black;
      notifyListeners(); 
  }

}