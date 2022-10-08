import 'package:flutter/material.dart';

import '011.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.07,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Profile",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Icon(Icons.shopping_cart),
                ],
              ),
              SizedBox(
                height: height * 0.035,
              ),
              Container(
                height: height * 0.14,
                width: height * 0.14,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/35.png"),
                        fit: BoxFit.cover),
                    color: Colors.yellow,
                    shape: BoxShape.circle),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.only(top: height * 0.08),
                    height: height * 0.07,
                    width: width * 0.29,
                    decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(height * 0.07),
                      ),
                    ),
                    child: Icon(
                      Icons.camera_alt,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: Color(0xffFC6011),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffFC6011),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                "Hi there Emilia!",
                style: TextStyle(
                    fontSize: height * 0.034, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                "Sign Out",
                style: TextStyle(
                    fontSize: height * 0.037, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Form(
                key: formKey,
                child: Column(
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
                        labelStyle:
                            TextStyle(fontSize: 10, color: Color(0xffB6B7B7)),
                        hintStyle:
                            TextStyle(color: Color(0xffB6B7B7), fontSize: 11),
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
                      height: height * 0.02,
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
                        labelStyle:
                            TextStyle(fontSize: 10, color: Color(0xffB6B7B7)),
                        hintStyle:
                            TextStyle(color: Color(0xffB6B7B7), fontSize: 11),
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
                      height: height * 0.02,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: mobileno,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "password can not be empty";
                        } else if (value.length < 6) {
                          return "password must be atelast 6 char";
                        }
                      },
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        fillColor: Color(0xffF2F2F2),
                        filled: true,
                        hintText: 'Mobile No',
                        labelStyle:
                            TextStyle(fontSize: 10, color: Color(0xffB6B7B7)),
                        hintStyle:
                            TextStyle(color: Color(0xffB6B7B7), fontSize: 11),
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
                      height: height * 0.02,
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
                        labelStyle:
                            TextStyle(fontSize: 10, color: Color(0xffB6B7B7)),
                        hintStyle:
                            TextStyle(color: Color(0xffB6B7B7), fontSize: 11),
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
                      height: height * 0.02,
                    ),
                    TextFormField(
                      obscureText: true,
                      controller: password,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "password can not be empty";
                        } else if (value.length < 6) {
                          return 'password must be atelast 6 char';
                        }
                      },
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        fillColor: Color(0xffF2F2F2),
                        filled: true,
                        hintText: 'Password',
                        labelStyle:
                            TextStyle(fontSize: 10, color: Color(0xffB6B7B7)),
                        hintStyle:
                            TextStyle(color: Color(0xffB6B7B7), fontSize: 11),
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
                      height: height * 0.02,
                    ),
                    TextFormField(
                      obscureText: true,
                      controller: confoampassword,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "password can not be empty";
                        } else if (value != password.text) {
                          return 'password not match';
                        }
                      },
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        fillColor: Color(0xffF2F2F2),
                        filled: true,
                        hintText: 'Confoam Password',
                        labelStyle:
                            TextStyle(fontSize: 10, color: Color(0xffB6B7B7)),
                        hintStyle:
                            TextStyle(color: Color(0xffB6B7B7), fontSize: 11),
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
                      height: height * 0.02,
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
                    SizedBox(
                      height: height * 0.04,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
