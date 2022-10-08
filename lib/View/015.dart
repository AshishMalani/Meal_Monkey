import 'package:flutter/material.dart';

class LetesOffers extends StatefulWidget {
  const LetesOffers({Key? key}) : super(key: key);

  @override
  State<LetesOffers> createState() => _LetesOffersState();
}

class _LetesOffersState extends State<LetesOffers> {
  List<Map<String, dynamic>> list1 = [
    {
      "image": "assets/images/32.png",
      "name": "Café de Noires",
    },
    {
      "image": "assets/images/33.png",
      "name": "Isso",
    },
    {
      "image": "assets/images/34.png",
      "name": "Cafe Beans",
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
              height: height * 0.08,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Latest Offers",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Icon(Icons.shopping_cart),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Text(
                "Find discounts, Offers special",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff7C7D7E),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                height: height * 0.037,
                minWidth: width * 0.45,
                color: Color(0xffFC6011),
                child: Text(
                  "Check Offers",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: height * 0.03,
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
                          height: height * 0.25,
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
                      ],
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
          ],
        ),
      ),
    );
  }
}
