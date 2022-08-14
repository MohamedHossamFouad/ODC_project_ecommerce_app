import 'dart:developer';
import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {
  int Counter = 0;
  void increamentCounter() {
    Counter++;
    print("$Counter");
    notifyListeners();
  }

  void dencreamentCounter() {
    if (Counter > 0) {
      Counter--;
      print("$Counter");
      notifyListeners();
    }
  }
}
