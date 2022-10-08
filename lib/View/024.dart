import 'package:flutter/material.dart';

import '026.dart';
import 'CommenButton.dart';
import 'Commen_Screen/CommanTextField.dart';
import 'bottomnavigationbar.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int groupValue = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.04,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 20),
              child: Row(
                children: [
                  IconButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: Color(0xff4A4B4D),
                    ),
                  ),
                  Text(
                    'Checkout',
                    style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontSize: 19,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Delivery Address',
                style: TextStyle(
                  color: Color(0xff7C7D7E),
                  fontSize: 12,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '653 Nostrand Ave.,\nBrooklyn, NY 11216',
                    style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChangeAddressScreen(),
                          ));
                    },
                    child: Text(
                      'Change',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xffFC6011),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              height: height * 0.02,
              width: double.infinity,
              color: Color(0xffF6F6F6),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    'Payment method',
                    style: TextStyle(
                      color: Color(0xff7C7D7E),
                      fontSize: 17,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return ModelBottomWidget();
                        },
                      );
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: Color(0xffFC6011),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Text(
                          'Add Card',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffFC6011),
                            fontSize: 17.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    height: height * 0.08,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffF6F6F6),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Cash on delivery',
                            style: TextStyle(
                              fontSize: 17,
                              color: Color(0xff2D2D2D),
                            ),
                          ),
                          Radio(
                            fillColor: MaterialStateProperty.all(
                              Color(0xffEE5A30),
                            ),
                            activeColor: Color(0xffEE5A30),
                            value: 1,
                            groupValue: groupValue,
                            onChanged: (int? value) {
                              setState(() {
                                groupValue = value!;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    height: height * 0.08,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffF6F6F6),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: height * 0.05,
                            width: width * 0.17,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/41.png'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Text(
                            '*** *** **** 2187',
                            style: TextStyle(
                                color: Color(0xff4A4B4D), fontSize: 15),
                          ),
                          Radio(
                            fillColor: MaterialStateProperty.all(
                              Color(0xffEE5A30),
                            ),
                            activeColor: Color(0xffEE5A30),
                            value: 2,
                            groupValue: groupValue,
                            onChanged: (int? value) {
                              setState(() {
                                groupValue = value!;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    height: height * 0.08,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffF6F6F6),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: height * 0.045,
                            width: width * 0.06,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/43.png'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Text(
                            'johndoe@email.com',
                            style: TextStyle(
                                color: Color(0xff2D2D2D), fontSize: 15),
                          ),
                          Radio(
                            fillColor: MaterialStateProperty.all(
                              Color(0xffEE5A30),
                            ),
                            activeColor: Color(0xffEE5A30),
                            value: 3,
                            groupValue: groupValue,
                            onChanged: (int? value) {
                              setState(() {
                                groupValue = value!;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            Container(
              height: height * 0.02,
              width: double.infinity,
              color: Color(0xffF6F6F6),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sub Total',
                        style: TextStyle(
                          fontSize: 17.5,
                          color: Color(0xff4A4B4D),
                        ),
                      ),
                      Text(
                        '\$68',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4A4B4D),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery Cost',
                        style: TextStyle(
                          fontSize: 17.5,
                          color: Color(0xff4A4B4D),
                        ),
                      ),
                      Text(
                        '\$2',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4A4B4D),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Discount',
                        style: TextStyle(
                          fontSize: 17.5,
                          color: Color(0xff4A4B4D),
                        ),
                      ),
                      Text(
                        '-\$4',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4A4B4D),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  Divider(
                    thickness: 0.1,
                    color: Color(0xff707070),
                  ),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                          fontSize: 17.5,
                          color: Color(0xff4A4B4D),
                        ),
                      ),
                      Text(
                        '\$68',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4A4B4D),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              height: height * 0.02,
              width: double.infinity,
              color: Color(0xffF6F6F6),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: height * 0.06,
                width: double.infinity,
                child: CommonButton(
                  onTap: () {
                    showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      context: context,
                      builder: (context) {
                        return SendOrderWidget();
                      },
                    );
                  },
                  text: 'Send Order',
                ),
              ),
            ),
            SizedBox(
              height: height * 0.025,
            ),
          ],
        ),
      ),
    );
  }
}

class ModelBottomWidget extends StatefulWidget {
  const ModelBottomWidget({Key? key}) : super(key: key);

  @override
  State<ModelBottomWidget> createState() => _ModelBottomWidgetState();
}

class _ModelBottomWidgetState extends State<ModelBottomWidget> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: 700,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.02,
              ),
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.clear),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Text(
                'Add Credit/Debit Card',
                style: TextStyle(
                    color: Color(0xff4A4B4D),
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              CommonTextField(
                keyBoadType: TextInputType.phone,
                hintText: 'Card Number',
                obscureText: false,
              ),
              SizedBox(
                height: height * 0.025,
              ),
              Row(
                children: [
                  Text(
                    'Expiry',
                    style: TextStyle(color: Color(0xff4A4B4D), fontSize: 10),
                  ),
                  SizedBox(
                    width: width * 0.08,
                  ),
                  Expanded(
                    child: CommonTextField(
                      keyBoadType: TextInputType.phone,
                      hintText: 'MM',
                      obscureText: false,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Expanded(
                    child: CommonTextField(
                      hintText: 'YY',
                      keyBoadType: TextInputType.phone,
                      obscureText: false,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              CommonTextField(
                hintText: 'Security Code',
                obscureText: false,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              CommonTextField(
                hintText: 'First Name',
                obscureText: false,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              CommonTextField(
                hintText: 'Last Name',
                obscureText: false,
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'You can remove this card',
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff7C7D7E),
                    ),
                  ),
                  Switch.adaptive(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                  )
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              MaterialButton(
                color: Color(0xffFC6011),
                height: height * 0.067,
                minWidth: width * 0.80,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.09,
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: width * 0.21,
                    ),
                    Center(
                      child: Text(
                        'Add Card',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SendOrderWidget extends StatefulWidget {
  const SendOrderWidget({Key? key}) : super(key: key);

  @override
  State<SendOrderWidget> createState() => _SendOrderWidgetState();
}

class _SendOrderWidgetState extends State<SendOrderWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.7,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    color: Color(0xff4A4B4D),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              height: height * 0.35,
              width: height * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/47.png'),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Text(
              'Thank You!',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xff4A4B4D),
              ),
            ),
            SizedBox(
              height: height * 0.008,
            ),
            Text(
              'for your order',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff4A4B4D),
              ),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            Text(
              '  Your Order is now being processed. We will let you\nknow once the order is picked from the outlet. Check',
              style: TextStyle(
                fontSize: 13,
                color: Color(0xff4A4B4D),
              ),
            ),
            SizedBox(
              height: height * 0.06,
            ),
            CommonButton(
              onTap: () {},
              text: 'Track My Order',
            ),
            SizedBox(
              height: height * 0.01,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavScreen(),
                    ));
              },
              child: Text(
                'Back To Home',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xff4A4B4D),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
