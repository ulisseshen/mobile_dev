import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Login')),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Text("centralizado"),
            OutlinedButton(
                onPressed: () async {
                  final navigator = Navigator.of(context);
                  await Future.delayed(Duration(seconds: 2));
                  navigator.pushReplacementNamed("/home");
                },
                child: Text("Entrar"))
          ],
        ),
      ),
    );
  }
}
