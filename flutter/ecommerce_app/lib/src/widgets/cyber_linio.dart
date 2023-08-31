import 'package:flutter/material.dart';

class CyberLinio extends StatelessWidget {
  const CyberLinio({super.key, required this.fontSize});

  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "CYBER",
          style: TextStyle(
              height: 1,
              fontSize: fontSize,
              fontWeight: FontWeight.w800,
              color: Color(0xFFF4BD46)),
        ),
        Text(
          "LINIO",
          style: TextStyle(
              height: 1,
              fontSize: fontSize,
              fontWeight: FontWeight.w800,
              color: Color(0xFFF4BD46)),
        ),
      ],
    );
  }
}
