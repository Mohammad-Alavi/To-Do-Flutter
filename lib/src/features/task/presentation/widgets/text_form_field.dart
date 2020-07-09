import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final Widget suffixIcon;
  final TextEditingController controller;
  final Function onTap;

  CustomTextFormField(
      {@required this.hintText,
      @required this.controller,
      this.suffixIcon,
      @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        onTap: () => onTap,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            suffixIcon: suffixIcon,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.white),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            )));
  }
}
