import 'package:flutter/material.dart';
import '../shared/item.dart';


class Carts with ChangeNotifier {
  List selectedProducts = [] ;
  double price = 15;

  add(Item product) {
    selectedProducts.add(product);
    // price += product.price as double ;
    notifyListeners();
  }

  delete(Item product) {
    selectedProducts.remove(product);
    // price -= product.price;

    notifyListeners();
  }

  get itemCount {
    return selectedProducts.length;
  }
}
