import 'package:flutter/material.dart';

import '../widgets/cyber_linio.dart';
import '../widgets/desconto.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

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
        child: Stack(
          children: [
            Positioned(
              top: 20,
              right: 10,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "SKIP",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ),
            ListView(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _Header(),
                SizedBox(
                  height: 90,
                ),
                Text(
                  "FREE SHIPPING",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFF4BD46)),
                ),
                SizedBox(
                  height: 50 - 22,
                ),
                _Middle(),
                _Bottom()
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Bottom extends StatelessWidget {
  const _Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "*Valid from 27/03 to 01/04 2022. Min stock: 1 unit",
          style: TextStyle(color: Colors.white, fontSize: 8),
        ),
        SizedBox(
          height: 27,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              minimumSize: Size.fromHeight(48),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(65))),
          onPressed: () {},
          child: Text(
            "LOG IN",
            style: TextStyle(color: Color(0xFFFF5500)),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
          Container(
            height: 6,
            width: 24,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(44),
                color: Color(0xFFFF5500)),
          )
        ])
      ],
    );
  }
}

class _Middle extends StatelessWidget {
  const _Middle();

  @override
  Widget build(BuildContext context) {
    final widthFactor = MediaQuery.of(context).size.width * 0.8;
    final heightFactor = MediaQuery.of(context).size.height * 0.45;
    return Align(
      alignment: Alignment.center,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            width: widthFactor,
            height: heightFactor,
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
      ),
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
        CyberLinio(fontSize: 60),
        Positioned(top: 117, child: Desconto()),
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
