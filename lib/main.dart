import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controllers/control.dart';
import 'shared/item.dart';
import 'view/Screens/checkout.dart';
import 'view/Screens/details.dart';
import 'view/Screens/home.dart';
import 'view/Screens/login.dart';
import 'view/Screens/register.dart';
import 'provider/cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) {
          return Carts();
        },
        child: MaterialApp(
          theme: ThemeData(primarySwatch: Colors.red),
          debugShowCheckedModeBanner: false,
          home: Registration(),
          ),
        );
  }
}
