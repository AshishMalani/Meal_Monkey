import 'package:flutter/material.dart';
import 'package:mealmonkey/View/03.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height * 0.08,
          ),
          Center(
            child: Text(
              "New Password",
              style: TextStyle(
                fontSize: height * 0.035,
                color: Color(0xff4A4B4D),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Text(
            "Please enter your email to receive a\nlink to  create a new password via email",
            style: TextStyle(
              fontSize: height * 0.018,
              height: height * 0.002,
              color: Color(0xff7C7D7E),
            ),
            textAlign: TextAlign.center,
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
                hintText: 'New Password',
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
            height: height * 0.04,
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
                      builder: (context) => LoginScreen(),
                    ));
              },
              child: Text(
                "Next",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
