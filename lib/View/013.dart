import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '014.dart';

class Desserts extends StatefulWidget {
  const Desserts({Key? key}) : super(key: key);

  @override
  State<Desserts> createState() => _DessertsState();
}

class _DessertsState extends State<Desserts> {
  List<Map<String, dynamic>> list = [
    {
      'image': 'assets/images/22.png',
      'name': 'French Apple Pie',
      'text': 'Minute by tuk tuk',
    },
    {
      'image': 'assets/images/23.png',
      'name': 'Dark Chocolate Cake',
      'text': 'Cakes by Tella',
    },
    {
      'image': 'assets/images/24.png',
      'name': 'Street Shake',
      'text': 'Café Racer',
    },
    {
      'image': 'assets/images/25.png',
      'name': 'Fudgy Chewy Brownies',
      'text': 'Minute by tuk tuk',
    },
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height * 0.03,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.035),
            child: SafeArea(
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xff4A4B4D),
                    size: 18,
                  ),
                  Text(
                    "Desserts",
                    style: TextStyle(
                        fontSize: height * 0.025, fontWeight: FontWeight.w300),
                  ),
                  Spacer(),
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
            height: height * 0.02,
          ),
          Expanded(
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DitelsScreen(),
                          ));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: height * 0.005),
                      height: height * 0.24,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            list[index]['image'],
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: height * 0.158,
                            ),
                            Text(
                              list[index]['name'],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: height * 0.022,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star_rate,
                                  color: Color(0xffFC6011),
                                  size: 20,
                                ),
                                Text(
                                  "  4.9",
                                  style: TextStyle(
                                      color: Color(0xffFC6011),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: width * 0.02,
                                ),
                                Text(
                                  list[index]['text'],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
