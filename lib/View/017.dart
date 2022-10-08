import 'package:flutter/material.dart';

import '018.dart';
import '020.dart';
import '021.dart';
import '022.dart';
import '023.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  List<Map<String, dynamic>> data = [
    {
      'image': 'assets/images/36.png',
      'name': 'Payment Details',
    },
    {
      'image': 'assets/images/37.png',
      'name': 'My Orders',
    },
    {
      'image': 'assets/images/38.png',
      'name': 'Notifications',
    },
    {
      'image': 'assets/images/39.png',
      'name': 'Inbox',
    },
    {
      'image': 'assets/images/40.png',
      'name': 'About Us',
    }
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.07,
            ),
            Row(
              children: [
                Text(
                  'More',
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
            SizedBox(
              height: height * 0.04,
            ),
            Column(
              children: List.generate(
                5,
                (index) => Stack(
                  clipBehavior: Clip.none,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (index == 0) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PaymentDetailScreen(),
                            ),
                          );
                        } else if (index == 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyOrderScreen(),
                            ),
                          );
                        } else if (index == 2) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NotificationScreen(),
                            ),
                          );
                        } else if (index == 3) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => InboxScreen(),
                            ),
                          );
                        } else if (index == 4) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AboutScreen(),
                            ),
                          );
                        }
                      },
                      child: Container(
                        height: height * 0.1,
                        width: width * 0.8,
                        margin: EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          color: Color(0xffF6F6F6),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: width * 0.05,
                            ),
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Color(0xffD8D8D8),
                              child: Image.asset(
                                data[index]['image'],
                              ),
                            ),
                            SizedBox(
                              width: width * 0.07,
                            ),
                            Text(
                              data[index]['name'],
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff4A4B4D),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.14,
                            ),
                            index == 2
                                ? CircleAvatar(
                                    radius: 13,
                                    backgroundColor: Color(0xffFF1717),
                                    child: Text(
                                      '15',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                  )
                                : SizedBox()
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      bottom: 0,
                      right: -15,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Color(0xffF6F6F6),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Color(0xff7C7D7E),
                            size: 15,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
