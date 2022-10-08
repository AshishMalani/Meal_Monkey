import 'package:flutter/material.dart';

import '011.dart';
import '012.dart';
import '015.dart';
import '016.dart';
import '017.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  List<Map<String, dynamic>> bottomItems = [
    {'icon': Icons.grid_view, 'label': "Menu"},
    {'icon': Icons.local_offer_outlined, 'label': "Offers"},
    {'icon': Icons.person, 'label': "Profile"},
    {'icon': Icons.menu_open, 'label': "More"},
  ];

  List<Widget> screens = [
    Center(child: MenuScreen()),
    Center(child: LetesOffers()),
    Center(child: ProfileScreen()),
    Center(child: MoreScreen()),
    HomeScreen(),
  ];

  int pageSelected = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[pageSelected],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            pageSelected = 4;
          });
        },
        backgroundColor: pageSelected == 4 ? Colors.deepOrange : Colors.grey,
        child: Icon(
          Icons.home,
          size: 40,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        width: double.infinity,
        child: BottomAppBar(
          elevation: 10,
          shape: CircularNotchedRectangle(),
          notchMargin: 12,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                  4,
                  (index) => Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                pageSelected = index;
                              });
                            },
                            icon: Icon(
                              bottomItems[index]['icon'],
                              color: pageSelected == index
                                  ? Colors.deepOrange
                                  : Colors.grey,
                              size: 30,
                            ),
                          ),
                          Text(
                            bottomItems[index]['label'],
                            style: TextStyle(
                              color: pageSelected == index
                                  ? Colors.deepOrange
                                  : Colors.grey,
                            ),
                          )
                        ],
                      )),
            ),
          ),
        ),
      ),
    );
  }
}
