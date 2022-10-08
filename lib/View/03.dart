import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mealmonkey/View/04.dart';

import '05.dart';
import '08.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            Center(
              child: Text(
                "Login",
                style: TextStyle(fontSize: height * 0.035),
              ),
            ),
            SizedBox(
              height: height * 0.02,
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
                  hintText: 'Your Email',
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
              height: height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.08),
              child: TextField(
                obscureText: true,
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
              height: height * 0.03,
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
                  "Login",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetPassword(),
                    ));
              },
              child: Text(
                "Forgot your password?",
                style: TextStyle(
                  fontSize: height * 0.015,
                  color: Color(0xffB6B7B7),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "or Login With",
                style: TextStyle(
                  fontSize: height * 0.015,
                  color: Color(0xffB6B7B7),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.07),
              child: MaterialButton(
                height: height * 0.063,
                minWidth: double.infinity,
                color: Color(0xff367FC0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/6.png",
                      height: height * 0.02,
                    ),
                    SizedBox(
                      width: width * 0.07,
                    ),
                    Text(
                      "Login with Facebook",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.07),
              child: MaterialButton(
                height: height * 0.063,
                minWidth: double.infinity,
                color: Color(0xffDD4B39),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/5.png",
                      height: height * 0.02,
                    ),
                    SizedBox(
                      width: width * 0.07,
                    ),
                    Text(
                      "Login with Google",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.08,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an Account?",
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
                          builder: (context) => SignUp(),
                        ));
                  },
                  child: Text(
                    "Sign Up",
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
      ),
    );
  }
}
