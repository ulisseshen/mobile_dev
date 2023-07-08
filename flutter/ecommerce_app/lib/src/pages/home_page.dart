// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final Color grayColor = const Color(0xFFCFCFCF);
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
    );
  }
}
