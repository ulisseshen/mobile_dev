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
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed("/home");
                },
                child: Text("Entrar"))
          ],
        ),
      ),
    );
  }
}
