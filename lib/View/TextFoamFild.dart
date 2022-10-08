import 'package:flutter/material.dart';

import '011.dart';

class FoamFild extends StatefulWidget {
  const FoamFild({Key? key}) : super(key: key);

  @override
  State<FoamFild> createState() => _FoamFildState();
}

class _FoamFildState extends State<FoamFild> {
  final formKey = GlobalKey<FormState>();
  TextEditingController Name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobileno = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confoampassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: Name,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Name can not be empty";
                  }
                },
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  fillColor: Color(0xffF2F2F2),
                  filled: true,
                  hintText: 'Name',
                  labelStyle: TextStyle(fontSize: 10, color: Color(0xffB6B7B7)),
                  hintStyle: TextStyle(color: Color(0xffB6B7B7), fontSize: 11),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              TextFormField(
                controller: email,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "email can not be empty";
                  }
                },
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  fillColor: Color(0xffF2F2F2),
                  filled: true,
                  hintText: 'Email',
                  labelStyle: TextStyle(fontSize: 10, color: Color(0xffB6B7B7)),
                  hintStyle: TextStyle(color: Color(0xffB6B7B7), fontSize: 11),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              TextFormField(
                maxLength: 10,
                keyboardType: TextInputType.phone,
                controller: mobileno,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "mobile no can not be empty";
                  }
                },
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  fillColor: Color(0xffF2F2F2),
                  filled: true,
                  hintText: 'Mobile No',
                  labelStyle: TextStyle(fontSize: 10, color: Color(0xffB6B7B7)),
                  hintStyle: TextStyle(color: Color(0xffB6B7B7), fontSize: 11),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              TextFormField(
                controller: address,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "address no can not be match";
                  }
                },
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  fillColor: Color(0xffF2F2F2),
                  filled: true,
                  hintText: 'Address',
                  labelStyle: TextStyle(fontSize: 10, color: Color(0xffB6B7B7)),
                  hintStyle: TextStyle(color: Color(0xffB6B7B7), fontSize: 11),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              TextFormField(
                obscureText: true,
                controller: password,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "password no can not be match";
                  }
                },
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  fillColor: Color(0xffF2F2F2),
                  filled: true,
                  hintText: 'Password',
                  labelStyle: TextStyle(fontSize: 10, color: Color(0xffB6B7B7)),
                  hintStyle: TextStyle(color: Color(0xffB6B7B7), fontSize: 11),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              TextFormField(
                obscureText: true,
                controller: confoampassword,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "confoampassword no can not be match";
                  }
                },
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  fillColor: Color(0xffF2F2F2),
                  filled: true,
                  hintText: 'Confoam Password',
                  labelStyle: TextStyle(fontSize: 10, color: Color(0xffB6B7B7)),
                  hintStyle: TextStyle(color: Color(0xffB6B7B7), fontSize: 11),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              MaterialButton(
                height: height * 0.06,
                minWidth: double.infinity,
                color: Color(0xffFC6011),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ));
                  }
                },
                child: Text("Save"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
