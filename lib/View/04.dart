import 'package:flutter/material.dart';

import '03.dart';
import '08.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height * 0.07,
          ),
          Center(
            child: Text(
              "Sign Up",
              style: TextStyle(fontSize: height * 0.035),
            ),
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Text(
            "Add your details to login",
            style: TextStyle(
              fontSize: height * 0.02,
              color: Color(0xff7C7D7E),
            ),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.08),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  fontSize: 13,
                  color: Color(0xffB6B7B7),
                ),
                hintText: 'Name',
                filled: true,
                fillColor: Color(0xffF2F2F2),
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.032,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.08),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  fontSize: 13,
                  color: Color(0xffB6B7B7),
                ),
                hintText: 'Email',
                filled: true,
                fillColor: Color(0xffF2F2F2),
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.032,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.08),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  fontSize: 13,
                  color: Color(0xffB6B7B7),
                ),
                hintText: 'Mobile No',
                filled: true,
                fillColor: Color(0xffF2F2F2),
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.032,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.08),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  fontSize: 13,
                  color: Color(0xffB6B7B7),
                ),
                hintText: 'Address',
                filled: true,
                fillColor: Color(0xffF2F2F2),
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.032,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.08),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  fontSize: 13,
                  color: Color(0xffB6B7B7),
                ),
                hintText: 'Password',
                filled: true,
                fillColor: Color(0xffF2F2F2),
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.032,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.08),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  fontSize: 13,
                  color: Color(0xffB6B7B7),
                ),
                hintText: 'Confirm Password',
                filled: true,
                fillColor: Color(0xffF2F2F2),
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.032,
          ),
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
                      builder: (context) => PageViewScreen(),
                    ));
              },
              child: Text(
                "Sign Up",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an Account?",
                style: TextStyle(
                  fontSize: height * 0.018,
                  color: Color(0xff7C7D7E),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: height * 0.02,
                    color: Color(0xffFC6011),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
