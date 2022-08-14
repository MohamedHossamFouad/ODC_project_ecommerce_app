// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controllers/control.dart';
import '../../shared/appbar.dart';
import '../../shared/item.dart';
import '../../shared/colors.dart';

import '../../provider/cart.dart';

class Details extends StatefulWidget {
  Item products;
  Details({required this.products});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            actions: [ProductsAndPrice()],
          ),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Image.asset(
                      "${widget.products.imgPath}",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: IconButton(
                          onPressed: () {
                            // Provider.of<CounterProvider>(context, listen: false)
                            //     .increamentCounter();
                            _incrementCounter();
                          },
                          icon: Icon(Icons.add),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text("${_counter}", style: TextStyle(fontSize: 30)),
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: IconButton(
                          onPressed: () {
                            // Provider.of<CounterProvider>(context, listen: false)
                            //     .dencreamentCounter();
                            _decrementCounter();
                          },
                          icon: Icon(Icons.minimize),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.red[200],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          "New",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 26,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 26,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 26,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 26,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 26,
                          ),
                        ],
                      ),
                      Text(
                        "${widget.products.price}",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Text(
                    "Description of the product  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 25),
                  ElevatedButton(
                    child: Text("Add to cart"),
                    onPressed: () {
                      Provider.of<Carts>(context, listen: false)
                          .add(widget.products);
                    },
                  
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(BTNred),
                      padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
