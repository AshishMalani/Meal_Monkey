import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Commen_Screen/CommanTextField.dart';

class PaymentDetailScreen extends StatefulWidget {
  const PaymentDetailScreen({Key? key}) : super(key: key);

  @override
  _PaymentDetailScreenState createState() => _PaymentDetailScreenState();
}

class _PaymentDetailScreenState extends State<PaymentDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height * 0.04,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 15),
            child: Row(
              children: [
                IconButton(
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
                  'Payment Details',
                  style: TextStyle(
                    color: Color(0xff4A4B4D),
                    fontSize: 17,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.shopping_cart,
                  color: Color(
                    0xff4A4B4D,
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
              'Customize your payment method',
              style: TextStyle(
                color: Color(0xff4A4B4D),
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.017,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              thickness: 0.2,
              color: Color(0xff707070),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            height: height * 0.3,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffF7F7F7),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: Offset(2, 1),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height * 0.025),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cash/Card on delivery',
                        style: TextStyle(
                            color: Color(0xff4A4B4D),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.check,
                        size: 25,
                        color: Color(0xffFC6011),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  Divider(
                    thickness: 0.6,
                    color: Color(0xff707070),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
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
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Text(
                        '*** *** **** 2187',
                        style: TextStyle(color: Color(0xff4A4B4D)),
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            side: BorderSide(color: Color(0xffFC6011))),
                        onPressed: () {},
                        child: Text(
                          'Delete Card',
                          style: TextStyle(color: Color(0xffFC6011)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Divider(
                    thickness: 0.3,
                    color: Color(0xff707070),
                  ),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  Text(
                    'Other Methods',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff4A4B4D),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Center(
            child: MaterialButton(
              color: Color(0xffFC6011),
              height: height * 0.067,
              minWidth: width * 0.80,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  builder: (context) {
                    return ModelBottomWidget();
                  },
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.add,
                    size: 23,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: width * 0.10,
                  ),
                  Text(
                    "Add another Credit/Debit Card",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
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
                    )
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
