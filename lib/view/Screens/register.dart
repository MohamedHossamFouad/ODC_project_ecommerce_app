import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../model/register_model.dart';
import '../../shared/colors.dart';
import '../../shared/custom_textfield.dart';
import 'login.dart';

class Registration extends StatelessWidget {
    Registration({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  String registerUrl = 'https://reqres.in/api/register';
  Dio dio = Dio();
  logUser({required AddUser loginUser}) async {
    print('Name: ${emailController.text} -Password ${passwordController.text}');
    try {
      final response = await dio.post(
        registerUrl,
        data: loginUser.toMap(),
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );
      print('Response:${response.data} -States Code ${response.statusCode}');
    } on DioError catch (error) {
      throw Exception(
          "Failed to load Users : Error ${error.error} -Response ${error.response}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sign Up'),
          backgroundColor: BTNred,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: Colors.red,
                height: 100,
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
                    Text("Hello",
                        style: TextStyle(fontSize: 65, color: Colors.grey)),
                    Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
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
                      MyTextField(
                        controllerrrr:  confirmPasswordController,
                        textInputTypeee: TextInputType.text,
                        isPassword: true,
                        labelText: 'Confirm Password',
                        hinttexttt: 'Enter Your Password again :',
                        suffixicon: Icon(Icons.remove_red_eye_sharp),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyTextField(
                        controllerrrr:  phoneController ,
                        textInputTypeee: TextInputType.phone,
                        isPassword: false,
                        labelText: 'Phone',
                        hinttexttt: "Enter Your Phone : ",
                        suffixicon: Icon(
                          Icons.call,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                            logUser(
                              loginUser: AddUser(
                                  email: emailController.text,
                                  password: passwordController.text,
                                  confirmPassword: confirmPasswordController.text,
                                  phone: phoneController.text),
        
                              );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(BTNred),
                          padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25))),
                        ),
                        child: Text(
                          "Registration",
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
                            "Do you have an account ? ",
                            style: TextStyle(fontSize: 19),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ),
                              );
                            },
                            child: Text(
                              "Sign In",
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
