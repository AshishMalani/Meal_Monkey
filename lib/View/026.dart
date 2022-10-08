import 'package:flutter/material.dart';

class ChangeAddressScreen extends StatefulWidget {
  const ChangeAddressScreen({Key? key}) : super(key: key);

  @override
  State<ChangeAddressScreen> createState() => _ChangeAddressScreenState();
}

class _ChangeAddressScreenState extends State<ChangeAddressScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  'Change Address',
                  style: TextStyle(
                    color: Color(0xff4A4B4D),
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Stack(
            children: [
              Container(
                height: height * 0.63,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/44.png'),
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                left: 0,
                right: -20,
                top: 35,
                child: Image.asset(
                  'assets/images/45.png',
                  height: height * 0.08,
                ),
              ),
              Positioned(
                left: 20,
                top: 102,
                child: Image.asset(
                  'assets/images/46.png',
                  height: height * 0.14,
                ),
              )
            ],
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                prefixIcon: Icon(
                  Icons.search,
                  size: 25,
                  color: Color(0xff7C7D7E),
                ),
                fillColor: Color(0xffF2F2F2),
                filled: true,
                hintText: 'Search Address',
                hintStyle: TextStyle(color: Color(0xffB6B7B7), fontSize: 13),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.035,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 19,
                  backgroundColor: Colors.deepOrangeAccent.shade100,
                  child: Icon(
                    Icons.star,
                    color: Color(0xffFC6011),
                  ),
                ),
                SizedBox(
                  width: width * 0.025,
                ),
                Text(
                  'Choose a saved place',
                  style: TextStyle(
                    color: Color(0xff4A4B4D),
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20,
                  color: Color(0xff4A4B4D),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
