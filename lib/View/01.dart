import 'dart:async';

import 'package:flutter/material.dart';

import '02.dart';

class MealMonkey extends StatefulWidget {
  const MealMonkey({Key? key}) : super(key: key);

  @override
  State<MealMonkey> createState() => _MealMonkeyState();
}

class _MealMonkeyState extends State<MealMonkey> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Two(),
            )));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height * 0.4,
          ),
          Image.asset("assets/images/1.png"),
          SizedBox(
            height: height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Meal",
                style: TextStyle(
                  fontSize: height * 0.038,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffFC6011),
                ),
              ),
              Text(
                "Monkey",
                style: TextStyle(
                  fontSize: height * 0.038,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4A4B4D),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.005,
          ),
          Text(
            "FOOD DELIVERY",
            style:
                TextStyle(color: Color(0xff6A6A6A), fontSize: height * 0.015),
          ),
        ],
      ),
    );
  }
}
