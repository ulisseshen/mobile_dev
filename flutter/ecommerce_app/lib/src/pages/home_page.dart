// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Color grayColor = const Color(0xFFCFCFCF);

  final Color orangeColor = const Color(0xFFFF5500);

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6F4),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: SizedBox(
          height: 46,
          child: Row(
            children: [
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      CupertinoIcons.search,
                      color: grayColor,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(64),
                      ),
                    ),
                    hintText: "Search products",
                    hintStyle: TextStyle(
                      color: grayColor,
                      fontSize: 12,
                    )),
              )),
              SizedBox(
                width: 8,
              ),
              Stack(
                children: [
                  SizedBox(
                    width: 46,
                    height: 46,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        CupertinoIcons.bell,
                        color: grayColor,
                      ),
                    ),
                  ),
                  Positioned(
                    top: -13,
                    right: 0,
                    child: SizedBox(
                        width: 10,
                        child: CircleAvatar(
                          backgroundColor: Color(0xFFFF5500),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Container(
        height: 110,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        ),
        child: Material(
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //index 0
              _currentIndex == 0
                  ? ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.home,
                        color: orangeColor,
                      ),
                      label: Text(
                        "Home",
                        style: TextStyle(
                          color: orangeColor,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: orangeColor.withOpacity(0.1),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                      ),
                    )
                  : IconButton(
                      onPressed: () {
                        setState(() {
                          _currentIndex = 0;
                        });
                      },
                      icon: Icon(
                        Icons.home,
                        color: grayColor,
                      )),
              //index 1
              _currentIndex == 1
                  ? ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.shopping_bag,
                        color: orangeColor,
                      ),
                      label: Text(
                        "Bag",
                        style: TextStyle(
                          color: orangeColor,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: orangeColor.withOpacity(0.1),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                      ),
                    )
                  : IconButton(
                      onPressed: () {
                        setState(() {
                          _currentIndex = 1;
                        });
                      },
                      icon: Icon(
                        Icons.shopping_bag,
                        color: grayColor,
                      )),
              //index 2
              _currentIndex == 2
                  ? ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        color: orangeColor,
                      ),
                      label: Text(
                        "Favorite",
                        style: TextStyle(
                          color: orangeColor,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: orangeColor.withOpacity(0.1),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                      ),
                    )
                  : IconButton(
                      onPressed: () {
                        setState(() {
                          _currentIndex = 2;
                        });
                      },
                      icon: Icon(
                        Icons.favorite,
                        color: grayColor,
                      )),
              //index 3
              _currentIndex == 3
                  ? ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.person,
                        color: orangeColor,
                      ),
                      label: Text(
                        "User",
                        style: TextStyle(
                          color: orangeColor,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: orangeColor.withOpacity(0.1),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                      ),
                    )
                  : IconButton(
                      onPressed: () {
                        setState(() {
                          _currentIndex = 3;
                        });
                      },
                      icon: Icon(
                        Icons.person,
                        color: grayColor,
                      ))
            ],
          ),
        ),
      ),

      // bottomNavigationBar: SizedBox(
      //   height: 110,
      //   child: ClipRRect(
      //     borderRadius: BorderRadius.only(
      //         topLeft: Radius.circular(40), topRight: Radius.circular(40)),
      //     child: BottomNavigationBar(
      //         selectedItemColor: orangeColor,
      //         onTap: (int index) {
      //           setState(() {
      //             _currentIndex = index;
      //           });
      //         },
      //         currentIndex: _currentIndex,
      //         showSelectedLabels: true,
      //         showUnselectedLabels: false,
      //         unselectedIconTheme: IconThemeData(color: grayColor),
      //         items: [
      //           BottomNavigationBarItem(
      //               backgroundColor: Colors.white,
      //               icon: Icon(
      //                 Icons.home,
      //               ),
      //               activeIcon: Container(
      //                 padding:
      //                     EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      //                 decoration: BoxDecoration(
      //                     color: orangeColor.withOpacity(0.1),
      //                     borderRadius: BorderRadius.all(Radius.circular(50))),
      //                 child: Icon(
      //                   Icons.home,
      //                   color: orangeColor,
      //                 ),
      //               ),
      //               label: "Home"),
      //           BottomNavigationBarItem(
      //               icon: Icon(Icons.shopping_bag),
      //               activeIcon: Container(
      //                 padding:
      //                     EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      //                 decoration: BoxDecoration(
      //                     color: orangeColor.withOpacity(0.1),
      //                     borderRadius: BorderRadius.all(Radius.circular(50))),
      //                 child: Icon(
      //                   Icons.shopping_bag,
      //                   color: orangeColor,
      //                 ),
      //               ),
      //               label: "Bag"),
      //           BottomNavigationBarItem(
      //               icon: Icon(Icons.favorite),
      //               activeIcon: Container(
      //                 padding:
      //                     EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      //                 decoration: BoxDecoration(
      //                     color: orangeColor.withOpacity(0.1),
      //                     borderRadius: BorderRadius.all(Radius.circular(50))),
      //                 child: Icon(
      //                   Icons.favorite,
      //                   color: orangeColor,
      //                 ),
      //               ),
      //               label: "Favorite"),
      //           BottomNavigationBarItem(
      //               icon: Icon(Icons.person),
      //               activeIcon: Container(
      //                 margin: EdgeInsets.only(right: 8),
      //                 padding:
      //                     EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      //                 decoration: BoxDecoration(
      //                     color: orangeColor.withOpacity(0.1),
      //                     borderRadius: BorderRadius.all(Radius.circular(50))),
      //                 child: Icon(
      //                   Icons.person,
      //                   color: orangeColor,
      //                 ),
      //               ),
      //               label: "User")
      //         ]),
      //   ),
      // ),
    );
  }
}
