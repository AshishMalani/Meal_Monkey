import 'package:flutter/material.dart';

import '03.dart';
import '04.dart';

class Two extends StatefulWidget {
  const Two({Key? key}) : super(key: key);

  @override
  State<Two> createState() => _TwoState();
}

class _TwoState extends State<Two> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                "assets/images/3.png",
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: height * -0.2,
                child: Image.asset("assets/images/1.png"),
              ),
            ],
          ),
          SizedBox(height: height * 0.06),
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
          SizedBox(height: height * 0.005),
          Text(
            "FOOD DELIVERY",
            style:
                TextStyle(color: Color(0xff6A6A6A), fontSize: height * 0.015),
          ),
          SizedBox(height: height * 0.05),
          Text(
            "Discover the best foods from over 1,000\nrestaurants and fast delivery to your doorstep",
            textAlign: TextAlign.center,
            style: TextStyle(height: height * 0.002, color: Color(0xff7C7D7E)),
          ),
          SizedBox(height: height * 0.05),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.07),
            child: MaterialButton(
              height: height * 0.063,
              minWidth: double.infinity,
              color: Color(0xffFC6011),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
              },
              child: Text(
                "Login",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.07),
            child: MaterialButton(
              height: height * 0.063,
              minWidth: double.infinity,
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Color(0xffFC6011),
                  ),
                  borderRadius: BorderRadius.circular(30)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUp(),
                    ));
              },
              child: Text(
                "Create an Account",
                style: TextStyle(
                  color: Color(0xffFC6011),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
