// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final Color grayColor = const Color(0xFFCFCFCF);
  final Color orangeColor = const Color(0xFFFF5500);

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
      bottomNavigationBar: SizedBox(
        height: 110,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          child: BottomNavigationBar(
              currentIndex: 0,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              unselectedIconTheme: IconThemeData(color: grayColor),
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                    ),
                    activeIcon: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      decoration: BoxDecoration(
                          color: orangeColor.withOpacity(0.1),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.home,
                            color: orangeColor,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text("Home",
                              style: TextStyle(
                                color: orangeColor,
                              ))
                        ],
                      ),
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_bag),
                    activeIcon: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      decoration: BoxDecoration(
                          color: orangeColor.withOpacity(0.1),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.shopping_bag,
                            color: orangeColor,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text("Bag",
                              style: TextStyle(
                                color: orangeColor,
                              ))
                        ],
                      ),
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite),
                    activeIcon: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      decoration: BoxDecoration(
                          color: orangeColor.withOpacity(0.1),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.favorite,
                            color: orangeColor,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Favorite",
                            style: TextStyle(
                              color: orangeColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    activeIcon: Container(
                      margin: EdgeInsets.only(right: 8),
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      decoration: BoxDecoration(
                          color: orangeColor.withOpacity(0.1),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.person,
                            color: orangeColor,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text("User",
                              style: TextStyle(
                                color: orangeColor,
                              ))
                        ],
                      ),
                    ),
                    label: "")
              ]),
        ),
      ),
    );
  }
}
