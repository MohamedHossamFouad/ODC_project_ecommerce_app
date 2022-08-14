// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:project_ecommerce_app/model/register_model.dart';
import 'package:project_ecommerce_app/view/Screens/details.dart';
import 'package:project_ecommerce_app/view/Screens/register.dart';

import '../../model/login_model.dart';
import '../../shared/item.dart';
import '../../shared/colors.dart';
import '../../shared/custom_textfield.dart';
import '../../shared/wave.dart';
import 'home.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

//Api in login
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: ClipPath(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 180,
                    color: Colors.red,
                  ),
                  clipper: CustomClipPath(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Sign In",
                        style: TextStyle(fontSize: 65, color: Colors.grey)),
                    Text(
                      "Welcome Back",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: Column(
                    children: [
                      MyTextField(
                        controllerrrr: emailController,
                        textInputTypeee: TextInputType.emailAddress,
                        isPassword: false,
                        labelText: 'Email',
                        hinttexttt: 'Enter Your Email :',
                        suffixicon: Icon(Icons.email),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyTextField(
                        controllerrrr: passwordController,
                        textInputTypeee: TextInputType.text,
                        isPassword: true,
                        labelText: 'Password',
                        hinttexttt: "Enter Your Password : ",
                        suffixicon: Icon(Icons.remove_red_eye_sharp),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(BTNred),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(20)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25))),
                        ),
                        child: Text(
                          "Sign In",
                          style: TextStyle(fontSize: 19),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account ? ",
                            style: TextStyle(fontSize: 19),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Registration(),
                                ),
                              );
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(fontSize: 19, color: BTNred),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 4, size.height - 40, size.width / 2, size.height - 20);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, size.height - 30);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
