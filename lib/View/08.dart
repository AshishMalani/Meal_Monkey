import 'package:flutter/material.dart';
import 'package:mealmonkey/View/bottomnavigationbar.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({Key? key}) : super(key: key);

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  int x = 0;
  PageController ashish = PageController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: height * 0.7,
                width: double.infinity,
                color: Colors.white,
                child: PageView(
                  physics: BouncingScrollPhysics(),
                  onPageChanged: (value) {
                    setState(() {
                      x = value;
                    });
                  },
                  controller: ashish,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: height * 0.1,
                        ),
                        Image.asset(
                          "assets/images/7.png",
                          // height: height * 0.5,
                          // width: width * 0.5,
                        ),
                        SizedBox(
                          height: height * 0.07,
                        ),
                        Text(
                          "Find Food You Love",
                          style: TextStyle(
                            fontSize: height * 0.028,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff4A4B4D),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.04,
                        ),
                        Text(
                          "Discover the best foods from over 1,000\nrestaurants and fast delivery to your doorstep",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xff7C7D7E), height: height * 0.002),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: height * 0.1,
                        ),
                        Image.asset(
                          "assets/images/8.png",
                          // height: height * 0.5,
                          // width: width * 0.5,
                        ),
                        SizedBox(
                          height: height * 0.07,
                        ),
                        Text(
                          "Fast Delivery",
                          style: TextStyle(
                            fontSize: height * 0.028,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff4A4B4D),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.04,
                        ),
                        Text(
                          "Fast food delivery to your home,\noffice wherever you are",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xff7C7D7E), height: height * 0.002),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: height * 0.1,
                        ),
                        Image.asset(
                          "assets/images/9.png",
                          // height: height * 0.5,
                          // width: width * 0.5,
                        ),
                        SizedBox(
                          height: height * 0.07,
                        ),
                        Text(
                          "Live Tracking",
                          style: TextStyle(
                            fontSize: height * 0.028,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff4A4B4D),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.04,
                        ),
                        Text(
                          "Real time tracking of your food on the app\nonce you placed the order",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xff7C7D7E), height: height * 0.002),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: height * 0.19,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.005),
                      child: CircleAvatar(
                        backgroundColor:
                            x == index ? Colors.orange : Colors.grey,
                        radius: 4,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.07),
            child: MaterialButton(
              height: height * 0.063,
              minWidth: double.infinity,
              color: Color(0xffFC6011),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavScreen(),
                    ));
              },
              child: Text(
                "Next",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
