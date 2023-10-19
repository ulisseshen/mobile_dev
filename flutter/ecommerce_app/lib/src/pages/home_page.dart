// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/cyber_linio.dart';
import '../widgets/desconto.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Color grayColor = const Color(0xFFCFCFCF);

  final Color chipTextColor = const Color(0xFF343A40);

  final Color orangeColor = const Color(0xFFFF5500);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6F4),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _Search(grayColor: grayColor),
                SizedBox(
                  height: 32,
                ),
                _Display(orangeColor: orangeColor),
                SizedBox(
                  height: 23,
                ),
                _Categorias(chipTextColor: chipTextColor, grayColor: grayColor),
                SizedBox(
                  height: 20,
                ),
                _TitleHotSales(),
                SizedBox(
                  height: 16,
                ),
                _CardDeProdutos(grayColor: grayColor, orangeColor: orangeColor),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Recently viewed",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 189,
                        width: 179,
                        decoration: BoxDecoration(
                            color: Color(0xFFCF0090).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: SizedBox(
                                  height: 30,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.favorite_border_outlined,
                                      size: 18,
                                      color: orangeColor.withOpacity(0.5),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'imagens/notebookpc.png',
                                  height: 80,
                                ),
                                Text(
                                  'Huawei Matebook X 13',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                                Text(
                                  '\$ 20,999 ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        height: 189,
                        width: 179,
                        decoration: BoxDecoration(
                            color: Color(0xF4D0A8E).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: SizedBox(
                                  height: 30,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.favorite_border_outlined,
                                      size: 18,
                                      color: orangeColor.withOpacity(0.5),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'imagens/ecodok.png',
                                  height: 80,
                                ),
                                Text(
                                  'Alexa Home',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                                Text(
                                  '\$ 999',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        orangeColor: orangeColor,
        grayColor: grayColor,
      ),
    );
  }
}

class BottomNavigationBar extends StatefulWidget {
  const BottomNavigationBar(
      {super.key, required this.orangeColor, required this.grayColor});

  final Color orangeColor;

  final Color grayColor;

  @override
  State<BottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                      color: widget.orangeColor,
                    ),
                    label: Text(
                      "Home",
                      style: TextStyle(
                        color: widget.orangeColor,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: widget.orangeColor.withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50))),
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
                      color: widget.grayColor,
                    )),
            //index 1
            _currentIndex == 1
                ? ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_bag,
                      color: widget.orangeColor,
                    ),
                    label: Text(
                      "Bag",
                      style: TextStyle(
                        color: widget.orangeColor,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: widget.orangeColor.withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50))),
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
                      color: widget.grayColor,
                    )),
            //index 2
            _currentIndex == 2
                ? ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      color: widget.orangeColor,
                    ),
                    label: Text(
                      "Favorite",
                      style: TextStyle(
                        color: widget.orangeColor,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: widget.orangeColor.withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50))),
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
                      color: widget.grayColor,
                    )),
            //index 3
            _currentIndex == 3
                ? ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.person,
                      color: widget.orangeColor,
                    ),
                    label: Text(
                      "User",
                      style: TextStyle(
                        color: widget.orangeColor,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: widget.orangeColor.withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50))),
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
                      color: widget.grayColor,
                    ))
          ],
        ),
      ),
    );
  }
}

class _CardDeProdutos extends StatelessWidget {
  const _CardDeProdutos({
    super.key,
    required this.grayColor,
    required this.orangeColor,
  });

  final Color grayColor;
  final Color orangeColor;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
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
                Text(
                  "Sony WH/1000XM4",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                Text(
                  "\$ 499 ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
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
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TitleHotSales extends StatelessWidget {
  const _TitleHotSales({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

class _Categorias extends StatelessWidget {
  const _Categorias({
    super.key,
    required this.chipTextColor,
    required this.grayColor,
  });

  final Color chipTextColor;
  final Color grayColor;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}

class _Display extends StatelessWidget {
  const _Display({
    super.key,
    required this.orangeColor,
  });

  final Color orangeColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                  SizedBox(height: 48, child: FittedBox(child: Desconto())),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
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
        Text(
          "*Valid from 27/03 to 01/04 2022. Min stock: 1 unit",
          style: TextStyle(fontSize: 9, color: Color(0xff696969)),
        ),
      ],
    );
  }
}

class _Search extends StatelessWidget {
  const _Search({
    super.key,
    required this.grayColor,
  });

  final Color grayColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
