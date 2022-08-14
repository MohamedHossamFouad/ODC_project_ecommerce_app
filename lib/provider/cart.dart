import 'package:flutter/material.dart';
import '../shared/item.dart';


class Carts with ChangeNotifier {
  List selectedProducts = [] ;
  double price = 0;

  add(Item product) {
    selectedProducts.add(product);
    price += product.priceItem.round();
    notifyListeners();
  }

  delete(Item product) {
    selectedProducts.remove(product);
    price -= product.priceItem.round();

    notifyListeners();
  }

  get itemCount {
    return selectedProducts.length;
  }
}
