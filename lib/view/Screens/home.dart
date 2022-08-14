// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project_ecommerce_app/view/Screens/details.dart';

import '../../shared/appbar.dart';
import '../../shared/item.dart';
import '../../shared/colors.dart';
import '../../provider/cart.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/2.jpg'),
                  ),
                  accountName: Text(
                    "Mohamed Hossam ",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  accountEmail: Text(
                    "Mohamed Hossam@gmail.com",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ListTile(
                  title: Text("Home"),
                  leading: Icon(Icons.home),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("My Card"),
                  leading: Icon(Icons.shopping_bag_rounded),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("About"),
                  leading: Icon(Icons.help_outline),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Logout"),
                  leading: Icon(Icons.logout_sharp),
                  onTap: () {},
                ),
              ],
            ),
            Container(
              child: Text(
                "Design By Mohamed Hossam © 2022",
                style: TextStyle(fontSize: 16),
              ),
              padding: EdgeInsets.only(bottom: 15),
            ),
          ],
        )),
        appBar: AppBar(actions: [ProductsAndPrice()],),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onDoubleTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Details(products: items[index]),
                      ),
                    );
                    print("Hello");
                  },
                  child: ListTile(
                    tileColor: Colors.grey[300],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    title: Image.asset(
                      "${items[index].imgPath}",
                      fit: BoxFit.cover,
                      // 'assets/images/1.jpg',
                    ),
                    subtitle: Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          '${items[index].nameItem}',
                          style: TextStyle(fontSize: 24),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "\$ ${items[index].price}",
                          style: TextStyle(fontSize: 24),
                        ),
                      ],
                    ),
                    leading: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Details(products: items[index]),
                          ),
                        );
                        print("Love");
                      },
                      icon: Icon(Icons.favorite),
                      color: Colors.red,
                    ),
                    trailing: Consumer<Carts>(
                      builder: ((context, cart, child) {
                        return IconButton(
                          onPressed: () {
                            cart.add(items[index]);
                          },
                          icon: Icon(Icons.add),
                          color: Colors.black,
                        );
                      }),
                    ),
                    onTap: () {},
                  ),
                );
              }),
        ),
      ),
    );
  }
}
