import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
                  'Notifications',
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
            height: height * 0.05,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 6,
                  backgroundColor: Color(0xffEE5A30),
                ),
                SizedBox(
                  width: width * 0.08,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your orders has been picked up',
                      style: TextStyle(color: Color(0xff4A4B4D), fontSize: 14),
                    ),
                    SizedBox(
                      height: height * 0.005,
                    ),
                    Text(
                      'Now',
                      style: TextStyle(color: Color(0xffB6B7B7), fontSize: 14),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            height: height * 0.09,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xffF6F6F6),
                border: Border.all(color: Color(0xffEEEEEE))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 6,
                        backgroundColor: Color(0xffEE5A30),
                      ),
                      SizedBox(
                        width: width * 0.08,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your order has been delivered',
                            style: TextStyle(
                                color: Color(0xff4A4B4D), fontSize: 14),
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          Text(
                            '1 h ago',
                            style: TextStyle(
                                color: Color(0xffB6B7B7), fontSize: 14),
                          ),
                        ],
                      )
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 6,
                  backgroundColor: Color(0xffEE5A30),
                ),
                SizedBox(
                  width: width * 0.08,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur',
                      style: TextStyle(color: Color(0xff4A4B4D), fontSize: 14),
                    ),
                    SizedBox(
                      height: height * 0.005,
                    ),
                    Text(
                      '3 h ago',
                      style: TextStyle(color: Color(0xffB6B7B7), fontSize: 14),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              thickness: 2,
              color: Color(0xffEEEEEE),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 6,
                  backgroundColor: Color(0xffEE5A30),
                ),
                SizedBox(
                  width: width * 0.08,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur',
                      style: TextStyle(color: Color(0xff4A4B4D), fontSize: 14),
                    ),
                    SizedBox(
                      height: height * 0.005,
                    ),
                    Text(
                      '5 h ago',
                      style: TextStyle(color: Color(0xffB6B7B7), fontSize: 14),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            height: height * 0.09,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xffF6F6F6),
                border: Border.all(color: Color(0xffEEEEEE))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 6,
                        backgroundColor: Color(0xffEE5A30),
                      ),
                      SizedBox(
                        width: width * 0.08,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur',
                            style: TextStyle(
                                color: Color(0xff4A4B4D), fontSize: 14),
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          Text(
                            '05 Sep 2020',
                            style: TextStyle(
                                color: Color(0xffB6B7B7), fontSize: 14),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: height * 0.09,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xffF6F6F6),
                border: Border.all(color: Color(0xffEEEEEE))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 6,
                        backgroundColor: Color(0xffEE5A30),
                      ),
                      SizedBox(
                        width: width * 0.08,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur',
                            style: TextStyle(
                                color: Color(0xff4A4B4D), fontSize: 14),
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          Text(
                            '12 Aug 2020',
                            style: TextStyle(
                                color: Color(0xffB6B7B7), fontSize: 14),
                          ),
                        ],
                      )
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 6,
                  backgroundColor: Color(0xffEE5A30),
                ),
                SizedBox(
                  width: width * 0.08,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur',
                      style: TextStyle(color: Color(0xff4A4B4D), fontSize: 14),
                    ),
                    SizedBox(
                      height: height * 0.005,
                    ),
                    Text(
                      '20 Jul 2020',
                      style: TextStyle(color: Color(0xffB6B7B7), fontSize: 14),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              thickness: 2,
              color: Color(0xffEEEEEE),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 6,
                  backgroundColor: Color(0xffEE5A30),
                ),
                SizedBox(
                  width: width * 0.08,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur',
                      style: TextStyle(color: Color(0xff4A4B4D), fontSize: 14),
                    ),
                    SizedBox(
                      height: height * 0.005,
                    ),
                    Text(
                      '12 Jul 2020',
                      style: TextStyle(color: Color(0xffB6B7B7), fontSize: 14),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
