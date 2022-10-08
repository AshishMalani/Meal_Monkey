import 'package:flutter/material.dart';

import '024.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({Key? key}) : super(key: key);

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
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
                  'My Order',
                  style: TextStyle(
                    color: Color(0xff4A4B4D),
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height * 0.1,
                  width: height * 0.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage('assets/images/42.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.05,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'King Burgers',
                      style: TextStyle(
                        color: Color(0xff4A4B4D),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.002,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(0xffFC6011),
                          size: 19,
                        ),
                        SizedBox(
                          width: width * 0.002,
                        ),
                        Text(
                          '4.9',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xffFC6011),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.002,
                        ),
                        Text(
                          '(124 ratings)',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xffB6B7B7),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.002,
                    ),
                    Row(
                      children: [
                        Text(
                          'Burger',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xffB6B7B7),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        CircleAvatar(
                          radius: 1,
                          backgroundColor: Color(0xffFC6011),
                        ),
                        SizedBox(
                          width: width * 0.007,
                        ),
                        Text(
                          'Western Food',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xffB6B7B7),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.002,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 19,
                          color: Color(0xffFC6011),
                        ),
                        SizedBox(
                          width: width * 0.009,
                        ),
                        Text(
                          'No 03, 4th Lane, Newyork',
                          style:
                              TextStyle(color: Color(0xffB6B7B7), fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Container(
            height: height * 0.24,
            width: double.infinity,
            color: Color(0xffF6F6F6),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.015,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Beef Burger x1',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff4A4B4D),
                        ),
                      ),
                      Text(
                        '\$16',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4A4B4D),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.004,
                  ),
                  Divider(
                    thickness: 0.1,
                    color: Color(0xff707070),
                  ),
                  SizedBox(
                    height: height * 0.004,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Classic Burger x1',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff4A4B4D),
                        ),
                      ),
                      Text(
                        '\$14',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4A4B4D),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.004,
                  ),
                  Divider(
                    thickness: 0.5,
                    color: Color(0xff707070),
                  ),
                  SizedBox(
                    height: height * 0.004,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cheese Chicken Burger x1',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff4A4B4D),
                        ),
                      ),
                      Text(
                        '\$17',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4A4B4D),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.004,
                  ),
                  Divider(
                    thickness: 0.07,
                    color: Color(0xff707070),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Chicken Legs Basket x1',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff4A4B4D),
                        ),
                      ),
                      Text(
                        '\$15',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4A4B4D),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.004,
                  ),
                  Divider(
                    thickness: 0.1,
                    color: Color(0xff707070),
                  ),
                  SizedBox(
                    height: height * 0.004,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'French Fries Large x1',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff4A4B4D),
                        ),
                      ),
                      Text(
                        '\$6',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4A4B4D),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  'Delivery Instructions',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4A4B4D),
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.add,
                  size: 16,
                  color: Color(0xffFC6011),
                ),
                SizedBox(
                  width: width * 0.025,
                ),
                Text(
                  'Add Notes',
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xffFC6011),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.012,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              thickness: 0.1,
              color: Color(0xff707070),
            ),
          ),
          SizedBox(
            height: height * 0.005,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sub Total',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4A4B4D),
                  ),
                ),
                Text(
                  '\$68',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffFC6011),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery Cost',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4A4B4D),
                  ),
                ),
                Text(
                  '\$2',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffFC6011),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.012,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              thickness: 0.5,
              color: Color(0xff707070),
            ),
          ),
          SizedBox(
            height: height * 0.012,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4A4B4D),
                  ),
                ),
                Text(
                  '\$70',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffFC6011),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MaterialButton(
              height: height * 0.06,
              minWidth: double.infinity,
              color: Color(0xffFC6011),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CheckoutScreen(),
                    ));
              },
              child: Text(
                "Checkout",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
