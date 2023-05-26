import 'package:flutter/material.dart';

import 'src/pages/detalhes_page.dart';
import 'src/pages/home_page.dart';
import 'src/pages/login_page.dart';

void main() {
  runApp(MaterialApp(
    title: 'Aula 4',
    //home: HomePage(),
    initialRoute: "/login",
    routes: {
      "/home": (context) => const HomePage(),
      "/login": (context) => const LoginPage(),
      "/detalhes": (context) => const DetalhesPage(),
    },
  ));
}
