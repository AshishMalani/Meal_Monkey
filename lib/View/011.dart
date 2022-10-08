import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> list = [
    {
      "image": "assets/images/10.jpeg",
      'name': "Offers",
    },
    {
      "image": "assets/images/11.jpeg",
      'name': "Sri Lankan",
    },
    {
      "image": "assets/images/12.jpeg",
      'name': "Italian",
    },
    {
      "image": "assets/images/13.jpeg",
      'name': "Indian",
    },
  ];
  List<Map<String, dynamic>> list1 = [
    {
      "image": "assets/images/14.png",
      "name": "Minute by tuk tuk",
    },
    {
      "image": "assets/images/15.png",
      "name": "Minute by tuk tuk",
    },
    {
      "image": "assets/images/16.png",
      "name": "Minute by tuk tuk",
    },
  ];
  List<Map<String, dynamic>> list2 = [
    {"image": "assets/images/17.png", "text": "Café De Bambaa"},
    {"image": "assets/images/18.png", "text": "Burger by Bella"},
  ];
  List<Map<String, dynamic>> list3 = [
    {
      'image': 'assets/images/19.png',
      'text': 'Mulberry Pizza by Josh',
      'food': 'Western Food',
    },
    {
      'image': 'assets/images/20.png',
      'text': 'Barita',
      'food': ' Coffe',
    },
    {
      'image': 'assets/images/21.png',
      'text': 'Pizza Rush Hour',
      'food': 'Italian Food',
    },
  ];
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
              height: height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.035),
              child: SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Good morning Akila!",
                      style: TextStyle(
                          fontSize: height * 0.025,
                          fontWeight: FontWeight.w300),
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
              height: height * 0.035,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Text(
                "Delivering to",
                style: TextStyle(
                  fontSize: height * 0.015,
                  color: Color(0xffB6B7B7),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Row(
                children: [
                  Text(
                    "Current Location",
                    style: TextStyle(
                        color: Color(0xff7C7D7E),
                        fontSize: height * 0.02,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xffFC6011),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: TextField(
                decoration: InputDecoration(
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
            SizedBox(
              height: height * 0.15,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: width * 0.01),
                          height: height * 0.11,
                          width: height * 0.11,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                list[index]["image"],
                              ),
                            ),
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Text(
                        list[index]["name"],
                        style: TextStyle(
                            fontSize: height * 0.013,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Restaurents",
                    style: TextStyle(
                        fontSize: height * 0.028, fontWeight: FontWeight.w300),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "View all",
                      style: TextStyle(
                        color: Color(0xffFC6011),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Container(
              height: height * 0.6,
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: height * 0.2,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                list1[index]['image'],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.045),
                          child: Text(
                            list1[index]['name'],
                            style: TextStyle(
                                fontSize: height * 0.02,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.038),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star_rate,
                                color: Color(0xffFC6011),
                              ),
                              Text(
                                " 4.9",
                                style: TextStyle(
                                    color: Color(0xffFC6011),
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "  (124 ratings) Café ",
                                style: TextStyle(
                                  color: Color(0xffB6B7B7),
                                ),
                              ),
                              Text(
                                " • ",
                                style: TextStyle(
                                    color: Color(0xffFC6011),
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Western Food",
                                style: TextStyle(
                                  color: Color(0xffB6B7B7),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Most Popular",
                    style: TextStyle(
                        fontSize: height * 0.028, fontWeight: FontWeight.w300),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "View all",
                      style: TextStyle(
                        color: Color(0xffFC6011),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            SizedBox(
              height: height * 0.27,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: width * 0.035),
                        height: height * 0.16,
                        width: width * 0.6,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              list2[index]['image'],
                            ),
                          ),
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                        child: Text(
                          list2[index]['text'],
                          style: TextStyle(
                              fontSize: height * 0.022,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                        child: Row(
                          children: [
                            Text(
                              "Café",
                              style: TextStyle(
                                color: Color(0xffB6B7B7),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.013,
                            ),
                            Text(
                              "•",
                              style: TextStyle(
                                color: Color(0xffFC6011),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.013,
                            ),
                            Text(
                              "Western Food",
                              style: TextStyle(
                                color: Color(0xffB6B7B7),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Icon(
                              Icons.star_rate,
                              color: Color(0xffFC6011),
                              size: height * 0.02,
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Text(
                              "4.9",
                              style: TextStyle(
                                color: Color(0xffFC6011),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Items",
                    style: TextStyle(
                        fontSize: height * 0.028, fontWeight: FontWeight.w300),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "View all",
                      style: TextStyle(
                        color: Color(0xffFC6011),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                  3,
                  (index) => Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: height * 0.02),
                        height: height * 0.14,
                        width: height * 0.14,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              list3[index]['image'],
                            ),
                          ),
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.06,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            list3[index]['text'],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: height * 0.022),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Row(
                            children: [
                              Text(
                                "Café     ",
                                style: TextStyle(
                                  color: Color(0xffB6B7B7),
                                ),
                              ),
                              Text(
                                "• ",
                                style: TextStyle(
                                  color: Color(0xffFC6011),
                                ),
                              ),
                              Text(
                                list3[index]['food'],
                                style: TextStyle(
                                  color: Color(0xffB6B7B7),
                                ),
                              ),
                            ],
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
                              SizedBox(
                                width: width * 0.02,
                              ),
                              Text(
                                "4.9",
                                style: TextStyle(
                                  color: Color(0xffFC6011),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              Text(
                                "(124 Ratings)",
                                style: TextStyle(
                                  color: Color(0xffB6B7B7),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
