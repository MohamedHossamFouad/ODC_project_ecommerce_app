// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project_ecommerce_app/shared/item.dart';
import '../../shared/item.dart';
import 'package:project_ecommerce_app/shared/item.dart';

import '../../shared/appbar.dart';
import '../../provider/cart.dart';

import 'package:provider/provider.dart';

import '../../shared/colors.dart';

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project_ecommerce_app/view/Screens/details.dart';

import '../../shared/appbar.dart';
import '../../shared/colors.dart';
import '../../provider/cart.dart';
import 'package:provider/provider.dart';

import '../../shared/item.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final carttt = Provider.of<Carts>(context);
    return Scaffold(
      appBar: AppBar(
        actions: [ProductsAndPrice()],
        title: Text("Checkout"),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: 550,
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: carttt.selectedProducts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                        subtitle: Text("Test"),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                            // "assets/images/pic1.png"),
                            "${carttt.selectedProducts[index].imgPath}",
                          ),
                        ),
                        title: Text(
                          "${carttt.selectedProducts[index].nameItem}",
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {},
                        ),
                      ),
                    );
                  }),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
              padding: MaterialStateProperty.all(EdgeInsets.all(12)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
            ),
            child: Text(
              "Pay \$${carttt.price}",
              style: TextStyle(fontSize: 19),
            ),
          ),
        ],
      ),
    );
  }
}



// body: Column(
//         children: [
//           SingleChildScrollView(
//             child: SizedBox(
//               height: 550,
//               child: ListView.builder(
//                   padding: const EdgeInsets.all(8),
//                   itemCount: carttt.selectedProducts.length,
//                   itemBuilder: (BuildContext context, int index) {
//                     return Card(
//                       child: ListTile(
//                         title: Text(carttt.selectedProducts[index].name),
//                         subtitle: Text(
//                             "${carttt.selectedProducts[index].price} "),
//                         leading: CircleAvatar(
//                           backgroundImage: AssetImage(
//                               carttt.selectedProducts[index].imgPath),
//                         ),
//                         trailing: IconButton(
//                             onPressed: () {
//                               carttt.delete(carttt.selectedProducts[index]);
//                             },
//                             icon: Icon(Icons.remove)),
//                       ),
//                     );
//                   }),
//             ),
//           ),

//           ElevatedButton(
//             onPressed: () {},
//             style: ButtonStyle(
//               backgroundColor: MaterialStateProperty.all(Colors.red),
//               padding: MaterialStateProperty.all(EdgeInsets.all(12)),
//               shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8))),
//             ),
//             child: Text(
//               "Pay \$${carttt.price}",
//               style: TextStyle(fontSize: 19),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }






