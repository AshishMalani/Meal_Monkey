import 'package:flutter/material.dart';

import '013.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  List<Map<String, dynamic>> list = [
    {
      'image': 'assets/images/26.png',
      'name': 'Food',
      'item': '120 Items',
    },
    {
      'image': 'assets/images/27.png',
      'name': 'Beverages',
      'item': '220 Items',
    },
    {
      'image': 'assets/images/28.png',
      'name': 'Desserts',
      'item': '155 Items',
    },
    {
      'image': 'assets/images/29.png',
      'name': 'Promotions',
      'item': '25 Items',
    },
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height * 0.03,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.035),
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Menu",
                    style: TextStyle(
                        fontSize: height * 0.025, fontWeight: FontWeight.w300),
                  ),
                  Icon(
                    Icons.shopping_cart,
                    color: Color(0xff4A4B4D),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: height * 0.02),
                prefixIcon: Icon(Icons.search_rounded),
                hintStyle: TextStyle(
                  fontSize: 13,
                  color: Color(0xffB6B7B7),
                ),
                hintText: 'Search food',
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
          Stack(
            children: [
              Container(
                height: height * 0.57,
                width: width * 0.32,
                decoration: BoxDecoration(
                  color: Color(0xffFC6011),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: width * 0.2, top: height * 0.045),
                child: Column(
                  children: List.generate(
                      4,
                      (index) => Stack(
                            clipBehavior: Clip.none,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  index == 2
                                      ? Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Desserts(),
                                          ))
                                      : SizedBox();
                                },
                                child: Container(
                                  margin:
                                      EdgeInsets.only(bottom: height * 0.02),
                                  height: height * 0.105,
                                  width: width * 0.70,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(0.5, 0.5),
                                          spreadRadius: 0.5,
                                          blurRadius: 0.5)
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.horizontal(
                                      left: Radius.circular(35),
                                      right: Radius.circular(10),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: width * 0.18,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            list[index]['name'],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: height * 0.023),
                                          ),
                                          SizedBox(
                                            height: height * 0.005,
                                          ),
                                          Text(
                                            list[index]['item'],
                                            style: TextStyle(
                                                fontSize: height * 0.013,
                                                color: Color(0xffB6B7B7)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: -10,
                                bottom: 0,
                                left: -25,
                                child: Image.asset(
                                  list[index]['image'],
                                  height: height * 0.12,
                                  width: width * 0.2,
                                ),
                              ),
                              Positioned(
                                left: 0,
                                bottom: 35,
                                right: width * -0.7,
                                child: Container(
                                  height: height * 0.05,
                                  width: height * 0.05,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade300,
                                        blurRadius: 0.5,
                                        spreadRadius: 0.5,
                                        offset: Offset(-1, 1),
                                      ),
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Color(0xffFC6011),
                                    size: 18,
                                  ),
                                ),
                              ),
                            ],
                          )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
