import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 30),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  'Skip',
                  style: TextStyle(
                    color: Color(0xff0088CC),
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    fontFamily: 'Inter',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              'MobileDev',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 36,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Aprenda Rápido, Evolua rápido',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            SizedBox(
              width: double.infinity,
              height: 32,
              child:
                  ElevatedButton(onPressed: () {}, child: const Text('Login')),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: 32,
              child: ElevatedButton(
                  onPressed: () {}, child: const Text('Registrar')),
            )
          ]),
        ),
      ),
    );
  }
}
