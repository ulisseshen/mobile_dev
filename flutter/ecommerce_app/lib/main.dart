// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Onboarding(),
    );
  }
}

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(0xFFCE048C), Color(0xFF4D0A8E)],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Header(),
            SizedBox(
              height: 130 - 22,
            ),
            _Middle(),
          ],
        ),
      ),
    );
  }
}

class _Middle extends StatelessWidget {
  const _Middle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 142,
        ),
        Positioned(
          top: 20,
          child: Image.asset(
            "imagens/mac.png",
            height: 142,
          ),
        ),
        Positioned(
            top: 220,
            left: 170,
            child: Image.asset(
              "imagens/controlezin.png",
              height: 80,
            )),
        Positioned(
          top: 80,
          left: 110,
          child: Image.asset(
            "imagens/nintendo.png",
            height: 142,
          ),
        ),
        Positioned(
          top: -25,
          left: 160,
          child: Image.asset(
            "imagens/headphone.png",
            height: 148,
          ),
        ),
        Positioned(
            top: 190,
            child: Image.asset(
              "imagens/alexa.png",
              height: 65,
            )),
        Positioned(
            top: 220,
            left: 80,
            child: Image.asset(
              "imagens/foneblutu.png",
              height: 90,
            )),
      ],
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        _CyberLinio(),
        Positioned(top: 117, child: _Desconto()),
        Positioned(
          top: 70,
          left: 150,
          child: Image.asset(
            "imagens/raio.png",
            height: 142,
            width: 142,
          ),
        ),
      ],
    );
  }
}

class _Desconto extends StatelessWidget {
  const _Desconto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "40%",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            Text(
              "DSCNT",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            )
          ],
        ),
        Text(
          "in technology",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        Text(
          "FREE SHIPPING",
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xFFF4BD46)),
        )
      ],
    );
  }
}

class _CyberLinio extends StatelessWidget {
  const _CyberLinio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "CYBER",
          style: TextStyle(
              height: 1,
              fontSize: 60,
              fontWeight: FontWeight.w800,
              color: Color(0xFFF4BD46)),
        ),
        Text(
          "LINIO",
          style: TextStyle(
              height: 1,
              fontSize: 60,
              fontWeight: FontWeight.w800,
              color: Color(0xFFF4BD46)),
        ),
      ],
    );
  }
}
