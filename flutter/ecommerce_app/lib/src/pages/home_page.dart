// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/cyber_linio.dart';
import '../widgets/desconto.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Color grayColor = const Color(0xFFCFCFCF);

  final Color chipTextColor = const Color(0xFF343A40);

  final Color orangeColor = const Color(0xFFFF5500);

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6F4),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //widgt pesquisa
              SizedBox(
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
                    //notificação
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
              SizedBox(
                height: 32,
              ),

              //widget display
              Container(
                width: double.infinity,
                height: 149,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF4D0A8E),
                      Color(0xFFCE048C),
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(26)),
                ),
                child: Stack(clipBehavior: Clip.none, children: [
                  Padding(
                    padding: EdgeInsets.only(top: 19, left: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CyberLinio(
                          fontSize: 26,
                        ),
                        SizedBox(
                            height: 48, child: FittedBox(child: Desconto())),
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                          height: 14,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(42)),
                          ),
                          child: Text(
                            "FREE SHIPPING",
                            style: TextStyle(fontSize: 8, color: orangeColor),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: -30,
                    child: Image.asset(
                      "imagens/display.png",
                      height: 210,
                    ),
                  )
                ]),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Text(
                  "*Valid from 27/03 to 01/04 2022. Min stock: 1 unit",
                  style: TextStyle(fontSize: 9, color: Color(0xff696969)),
                ),
              ),

              //widget categorias
              SizedBox(
                height: 23,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Chip(
                      label: Text("Technology"),
                      labelStyle: TextStyle(color: chipTextColor),
                      backgroundColor: Colors.white,
                      side: BorderSide(
                        color: grayColor.withOpacity(0.5),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Chip(
                      label: Text("Fashion"),
                      labelStyle: TextStyle(color: chipTextColor),
                      backgroundColor: Colors.white,
                      side: BorderSide(
                        color: grayColor.withOpacity(0.5),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Chip(
                      label: Text("Sports"),
                      labelStyle: TextStyle(color: chipTextColor),
                      backgroundColor: Colors.white,
                      side: BorderSide(
                        color: grayColor.withOpacity(0.5),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Chip(
                      label: Text("Home"),
                      labelStyle: TextStyle(color: chipTextColor),
                      backgroundColor: Colors.white,
                      side: BorderSide(
                        color: grayColor.withOpacity(0.5),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Chip(
                      label: Text("Technology"),
                      labelStyle: TextStyle(color: chipTextColor),
                      backgroundColor: Colors.white,
                      side: BorderSide(
                        color: grayColor.withOpacity(0.5),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Chip(
                      label: Text("Fashion"),
                      labelStyle: TextStyle(color: chipTextColor),
                      backgroundColor: Colors.white,
                      side: BorderSide(
                        color: grayColor.withOpacity(0.5),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Chip(
                      label: Text("Sports"),
                      labelStyle: TextStyle(color: chipTextColor),
                      backgroundColor: Colors.white,
                      side: BorderSide(
                        color: grayColor.withOpacity(0.5),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Chip(
                      label: Text("Home"),
                      labelStyle: TextStyle(color: chipTextColor),
                      backgroundColor: Colors.white,
                      side: BorderSide(
                        color: grayColor.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hot Sales",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                      height: 6,
                      width: 24,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(44),
                          color: Color(0xFFFF5500)),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    SizedBox(
                      height: 6,
                      width: 6,
                      child: CircleAvatar(
                        backgroundColor: Color(0xFFCFCFCF),
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    SizedBox(
                      height: 6,
                      width: 6,
                      child: CircleAvatar(
                        backgroundColor: Color(0xFFCFCFCF),
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    SizedBox(
                      height: 6,
                      width: 6,
                      child: CircleAvatar(
                        backgroundColor: Color(0xFFCFCFCF),
                      ),
                    ),
                  ])
                ],
              ),
              SizedBox(
                height: 16,
              ),
              //card de produtos
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 6,
                  horizontal: 7,
                ),
                width: 128,
                //height: 148,
                decoration: BoxDecoration(
                  color: grayColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 3,
                        horizontal: 6,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "Free Shipping",
                        style: TextStyle(
                          fontSize: 10,
                          color: orangeColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                          Image.asset(
                            "imagens/note-png.png",
                            height: 100,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                    Text("Macbook Air M1"),
                    Text(
                      "\$ 299 ",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 7,
                      ),
                      width: 128,
                      //height: 148,
                      decoration: BoxDecoration(
                        color: grayColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 3,
                              horizontal: 6,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)),
                            child: Text(
                              "Free Shipping",
                              style: TextStyle(
                                fontSize: 10,
                                color: orangeColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Image.asset(
                            "imagens/headphone.png",
                            height: 100,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text("Sony WH/1000XM4"),
                          Text(
                            "\$ 499 ",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 7,
                      ),
                      width: 128,
                      //height: 148,
                      decoration: BoxDecoration(
                        color: grayColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 3,
                              horizontal: 6,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)),
                            child: Text(
                              "Free Shipping",
                              style: TextStyle(
                                fontSize: 10,
                                color: orangeColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Image.asset(
                            "imagens/fone-pequeno.png",
                            height: 100,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text("FreeBuds Huawei"),
                          Text(
                            "\$ 149 ",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
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
