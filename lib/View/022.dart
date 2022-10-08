import 'package:flutter/material.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
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
                  'Inbox',
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
            height: height * 0.04,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 5,
                  backgroundColor: Color(0xffEE5A30),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'MealMonkey Promotions',
                          style:
                              TextStyle(color: Color(0xff4A4B4D), fontSize: 14),
                        ),
                        SizedBox(
                          height: height * 0.013,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur ',
                          style:
                              TextStyle(color: Color(0xffB6B7B7), fontSize: 14),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width * 0.04,
                    ),
                    Column(
                      children: [
                        Text(
                          '6th July',
                          style:
                              TextStyle(color: Color(0xff7C7D7E), fontSize: 8),
                        ),
                        SizedBox(
                          height: height * 0.035,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Color(0xffEE5A30),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xffF6F6F6),
              border: Border.all(
                color: Color(0xffEEEEEE),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 19, right: 19, top: 22),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Color(0xffEE5A30),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'MealMonkey Promotions',
                            style: TextStyle(
                                color: Color(0xff4A4B4D), fontSize: 14),
                          ),
                          SizedBox(
                            height: height * 0.013,
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur ',
                            style: TextStyle(
                                color: Color(0xffB6B7B7), fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Column(
                        children: [
                          Text(
                            '6th July',
                            style: TextStyle(
                                color: Color(0xff7C7D7E), fontSize: 10),
                          ),
                          SizedBox(
                            height: height * 0.035,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: width * 0.039,
                              ),
                              Icon(
                                Icons.star_border,
                                color: Color(0xffEE5A30),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 5,
                  backgroundColor: Color(0xffEE5A30),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'MealMonkey Promotions',
                          style:
                              TextStyle(color: Color(0xff4A4B4D), fontSize: 14),
                        ),
                        SizedBox(
                          height: height * 0.013,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur ',
                          style:
                              TextStyle(color: Color(0xffB6B7B7), fontSize: 14),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Column(
                      children: [
                        Text(
                          '6th July',
                          style:
                              TextStyle(color: Color(0xff7C7D7E), fontSize: 10),
                        ),
                        SizedBox(
                          height: height * 0.035,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.039,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Color(0xffEE5A30),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xffF6F6F6),
              border: Border.all(
                color: Color(0xffEEEEEE),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 19, right: 19, top: 22),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Color(0xffEE5A30),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'MealMonkey Promotions',
                            style: TextStyle(
                                color: Color(0xff4A4B4D), fontSize: 14),
                          ),
                          SizedBox(
                            height: height * 0.013,
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur ',
                            style: TextStyle(
                                color: Color(0xffB6B7B7), fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Column(
                        children: [
                          Text(
                            '6th July',
                            style: TextStyle(
                                color: Color(0xff7C7D7E), fontSize: 10),
                          ),
                          SizedBox(
                            height: height * 0.035,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: width * 0.039,
                              ),
                              Icon(
                                Icons.star_border,
                                color: Color(0xffEE5A30),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 5,
                  backgroundColor: Color(0xffEE5A30),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'MealMonkey Promotions',
                          style:
                              TextStyle(color: Color(0xff4A4B4D), fontSize: 14),
                        ),
                        SizedBox(
                          height: height * 0.013,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur ',
                          style:
                              TextStyle(color: Color(0xffB6B7B7), fontSize: 14),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Column(
                      children: [
                        Text(
                          '6th July',
                          style:
                              TextStyle(color: Color(0xff7C7D7E), fontSize: 10),
                        ),
                        SizedBox(
                          height: height * 0.035,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.039,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Color(0xffEE5A30),
                            ),
                          ],
                        )
                      ],
                    )
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
            height: height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 5,
                  backgroundColor: Color(0xffEE5A30),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'MealMonkey Promotions',
                          style:
                              TextStyle(color: Color(0xff4A4B4D), fontSize: 14),
                        ),
                        SizedBox(
                          height: height * 0.013,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur ',
                          style:
                              TextStyle(color: Color(0xffB6B7B7), fontSize: 14),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Column(
                      children: [
                        Text(
                          '6th July',
                          style:
                              TextStyle(color: Color(0xff7C7D7E), fontSize: 10),
                        ),
                        SizedBox(
                          height: height * 0.035,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.039,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Color(0xffEE5A30),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              thickness: 2,
              color: Color(0xffEEEEEE),
            ),
          ),
        ],
      ),
    );
  }
}
