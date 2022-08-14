import 'dart:developer';
import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {
  int counter = 0;
  void increamentCounter() {
    counter++;
    print("$Counter");
    notifyListeners();
  }

  void dencreamentCounter() {
    if (counter > 0) {
      counter--;
      print("$Counter");
      notifyListeners();
    }
  }
}
