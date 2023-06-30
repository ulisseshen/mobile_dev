import 'package:flutter/material.dart';
import 'app/routes.dart';
import 'src/pages/login_page.dart';
import 'src/pages/initial_page.dart';
import 'src/pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.initial,
      routes: {
        Routes.initial: (_) => InitialPage(),
        Routes.login: (_) => LoginPage(),
        Routes.register: (_) => RegisterPage()
      },
    ); //);
  }
}
