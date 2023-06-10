import 'package:flutter/material.dart';
import 'src/pages/login_page.dart';
import 'src/pages/login_screen_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LoginScreenPage(),
      home: LoginPage(),
    );
  }
}
