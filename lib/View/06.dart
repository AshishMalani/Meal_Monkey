import 'package:flutter/material.dart';
import 'package:mealmonkey/View/07.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class OtpToMobile extends StatefulWidget {
  const OtpToMobile({Key? key}) : super(key: key);

  @override
  State<OtpToMobile> createState() => _OtpToMobileState();
}

class _OtpToMobileState extends State<OtpToMobile> {
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
              "We have sent an OTP to\n   your Mobile",
              style: TextStyle(
                fontSize: height * 0.035,
                color: Color(0xff4A4B4D),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Text(
            "Please check your mobile number 071*****12\ncontinue to reset your password",
            style: TextStyle(
              fontSize: height * 0.018,
              height: height * 0.002,
              color: Color(0xff7C7D7E),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          OTPTextField(
            contentPadding: EdgeInsets.symmetric(vertical: height * 0.025),
            otpFieldStyle: OtpFieldStyle(
                backgroundColor: Color(0xffF2F2F2),
                borderColor: Colors.deepOrange),
            margin: EdgeInsets.symmetric(horizontal: 10),
            length: 4,
            obscureText: true,
            width: MediaQuery.of(context).size.width,
            fieldWidth: width * 0.17,
            outlineBorderRadius: 10,
            style: TextStyle(fontSize: 17),
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldStyle: FieldStyle.box,
            onCompleted: (pin) {
              print("Completed: " + pin);
            },
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
                      builder: (context) => NewPassword(),
                    ));
              },
              child: Text(
                "Next",
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
                "Didn't Receive?",
                style: TextStyle(
                  fontSize: height * 0.018,
                  color: Color(0xff7C7D7E),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Click Here",
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
