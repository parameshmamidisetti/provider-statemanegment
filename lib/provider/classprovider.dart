import 'package:flutter/material.dart';

class Cowndown extends ChangeNotifier {
  int value = 1;
  counter() {
    value = value + 1;
    notifyListeners();
    print(value);
  }
}
