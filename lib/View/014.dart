import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DitelsScreen extends StatefulWidget {
  const DitelsScreen({Key? key}) : super(key: key);

  @override
  State<DitelsScreen> createState() => _DitelsScreenState();
}

class _DitelsScreenState extends State<DitelsScreen> {
  String? sizeValue;
  String? itemValue;

  List<String> data = [
    'Medium',
    'Small',
    'Large',
    'Extra large',
    'Family Size',
  ];
  List pizzaItems = [
    'Country Side Pizza',
    'Cheezy-7 Pizza',
    'Paneer Tikka Butter Masala Pizza',
    'Farm Villa Pizza',
    'Spring Fling Pizza',
    'Korma Special Pizza',
  ];
  int select = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/images/30.png",
                fit: BoxFit.cover,
                height: height * 0.35,
                width: double.infinity,
              ),
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: height * 0.04,
                      ),
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 20,
                      ),
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: height * 0.705,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(50),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.05),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: height * 0.05,
                                      ),
                                      Text(
                                        "Tandoori Chicken Pizza",
                                        style: TextStyle(
                                            fontSize: height * 0.026,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star_rate,
                                            color: Color(0xffFC6011),
                                            size: 18,
                                          ),
                                          Icon(
                                            Icons.star_rate,
                                            color: Color(0xffFC6011),
                                            size: 18,
                                          ),
                                          Icon(
                                            Icons.star_rate,
                                            color: Color(0xffFC6011),
                                            size: 18,
                                          ),
                                          Icon(
                                            Icons.star_rate,
                                            color: Color(0xffFC6011),
                                            size: 18,
                                          ),
                                          Icon(
                                            Icons.star_outline,
                                            color: Color(0xffFC6011),
                                            size: 18,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.005,
                                      ),
                                      Text(
                                        "4 Star Ratings",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xffFC6011),
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.05,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        height: height * 0.1,
                                      ),
                                      Text(
                                        "Rs. 750",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25),
                                      ),
                                      Text(
                                        "/ per Portion",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                "Description",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nOrnare leo non mollis id cursus. Eu euismod faucibus in leo",
                                style: TextStyle(
                                    fontSize: 10, height: height * 0.0019),
                              ),
                              SizedBox(
                                height: height * 0.03,
                              ),
                              Divider(
                                thickness: .5,
                              ),
                              SizedBox(
                                height: height * 0.015,
                              ),
                              Text(
                                "Customize your Order",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: height * 0.015,
                              ),
                              Container(
                                height: 50,
                                width: double.infinity,
                                color: Color(0xffF2F2F2),
                                child: DropdownButton(
                                  underline: SizedBox(),
                                  icon: Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.25),
                                    child: Icon(
                                        Icons.keyboard_arrow_down_outlined),
                                  ),
                                  hint: Padding(
                                    padding: EdgeInsets.only(left: width * 0.1),
                                    child: Text(
                                      "- Select the size of portion -",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      sizeValue = value as String;
                                    });
                                  },
                                  value: sizeValue,
                                  items: data.map((items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.015,
                              ),
                              Container(
                                height: 50,
                                width: double.infinity,
                                color: Color(0xffF2F2F2),
                                child: DropdownButton(
                                  underline: SizedBox(),
                                  icon: Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.13),
                                    child: Icon(
                                        Icons.keyboard_arrow_down_outlined),
                                  ),
                                  hint: Padding(
                                    padding: EdgeInsets.only(left: width * 0.1),
                                    child: Text(
                                      "- Select the ingredients -",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      itemValue = value as String;
                                    });
                                  },
                                  value: itemValue,
                                  items: pizzaItems.map((items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Number of Portions",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: height * 0.04,
                                    width: width * 0.15,
                                    decoration: BoxDecoration(
                                      color: Color(0xffFC6011),
                                      borderRadius: BorderRadius.circular(35),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (select > 0) {
                                            select--;
                                          }
                                        });
                                      },
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Container(
                                    height: height * 0.04,
                                    width: width * 0.15,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xffFC6011),
                                      ),
                                      borderRadius: BorderRadius.circular(35),
                                    ),
                                    child: Center(
                                      child: Text("$select"),
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Container(
                                    height: height * 0.04,
                                    width: width * 0.15,
                                    decoration: BoxDecoration(
                                      color: Color(0xffFC6011),
                                      borderRadius: BorderRadius.circular(35),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          select++;
                                        });
                                      },
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
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
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              height: height * 0.22,
                              width: width * 0.3,
                              decoration: BoxDecoration(
                                color: Color(0xffFC6011),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 30,
                              child: Padding(
                                padding: EdgeInsets.only(left: width * 0.12),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      height: height * 0.15,
                                      width: width * 0.75,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              offset: Offset(0.2, 0.2),
                                              spreadRadius: 0.2,
                                              blurRadius: 0.2)
                                        ],
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(50),
                                          topLeft: Radius.circular(50),
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: height * 0.02,
                                          ),
                                          Text("Total Price"),
                                          SizedBox(
                                            height: height * 0.006,
                                          ),
                                          Text(
                                            "LKR 1500",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 25),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: width * 0.12),
                                            child: MaterialButton(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              height: height * 0.037,
                                              minWidth: width * 0.45,
                                              color: Color(0xffFC6011),
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: width * 0.02),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.shopping_cart,
                                                      color: Colors.white,
                                                      size: 15,
                                                    ),
                                                    SizedBox(
                                                      width: width * 0.05,
                                                    ),
                                                    Text(
                                                      "Add to Cart",
                                                      style: TextStyle(
                                                          color: CupertinoColors
                                                              .white),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              onPressed: () {},
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      top: 0,
                                      bottom: 0,
                                      right: -23,
                                      child: Container(
                                        height: height * 0.06,
                                        width: height * 0.06,
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey,
                                                  spreadRadius: 0.5,
                                                  offset: Offset(0.5, 1),
                                                  blurRadius: 0.5)
                                            ],
                                            shape: BoxShape.circle,
                                            color: Colors.white),
                                        child: Icon(
                                          Icons.shopping_cart,
                                          color: Color(0xffFC6011),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -40,
                  right: 1,
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/images/31.png",
                        height: height * 0.11,
                        width: height * 0.11,
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        bottom: 0,
                        left: 0,
                        child: FavoriteButton(
                          iconSize: height * 0.05,
                          iconColor: Color(0xffFC6011),
                          valueChanged: (_isFavorite) {
                            print('Is Favorite $_isFavorite)');
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
