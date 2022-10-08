import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  final hintText;
  final keyBoadType;
  final maxLength;
  final obscureText;
  final labelText;

  const CommonTextField(
      {Key? key,
      this.hintText,
      this.keyBoadType,
      this.maxLength,
      this.obscureText,
      this.labelText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      maxLength: maxLength,
      keyboardType: keyBoadType,
      decoration: InputDecoration(
        counterText: "",
        contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        fillColor: Color(0xffF2F2F2),
        filled: true,
        hintText: hintText,
        labelText: labelText,
        labelStyle: TextStyle(fontSize: 10, color: Color(0xffB6B7B7)),
        hintStyle: TextStyle(color: Color(0xffB6B7B7), fontSize: 11),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
