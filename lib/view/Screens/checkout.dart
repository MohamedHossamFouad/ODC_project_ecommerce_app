import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../shared/colors.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
        centerTitle: true,
        backgroundColor: appbarGreen,
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  Positioned(
                    bottom: 15,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.red[200],
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        '0',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Text('Checkout'),
      ),
    );
  }
}
