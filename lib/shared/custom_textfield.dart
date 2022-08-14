import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  TextInputType textInputTypeee;
  bool isPassword;
  String hinttexttt;
  String labelText;

  Icon suffixicon;

  TextEditingController controllerrrr;

  MyTextField(
      {Key? key,
      required this.textInputTypeee,
      required this.controllerrrr,
      required this.isPassword,
      required this.hinttexttt,
      required this.labelText,
      required this.suffixicon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controllerrrr,
        keyboardType: textInputTypeee,
        obscureText: isPassword,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          suffixIcon: suffixicon,
          labelText: labelText,
          hintText: hinttexttt,
          // To delete borders
          enabledBorder: OutlineInputBorder(
            borderSide: Divider.createBorderSide(context),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          // fillColor: Colors.red,
          filled: true,
          contentPadding: const EdgeInsets.all(8),
        ));
  }
}
