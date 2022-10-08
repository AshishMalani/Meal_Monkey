import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final text;
  final color;
  final VoidCallback onTap;

  const CommonButton({Key? key, this.text, required this.onTap, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return MaterialButton(
      color: color,
      height: height * 0.067,
      minWidth: width * 0.80,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      onPressed: onTap,
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
