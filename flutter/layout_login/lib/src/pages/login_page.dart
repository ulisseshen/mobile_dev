import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Login",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 30),
        child: Column(
          children: [
            const SizedBox(height: 50),
            const Center(
              child: CircleAvatar(
                radius: 51,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50,
                  child: Icon(
                    Icons.person,
                    size: 70,
                    color: Color.fromARGB(102, 0, 0, 0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person),
                border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color.fromARGB(102, 0, 0, 0),
                    ),
                    borderRadius: BorderRadius.circular(10)),
                hintText: "Entre com seu nome",
              ),
            ),
            const SizedBox(height: 15),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.key),
                suffixIcon: const Icon(Icons.remove_red_eye),
                border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color.fromARGB(102, 0, 0, 0),
                    ),
                    borderRadius: BorderRadius.circular(10)),
                hintText: "Entre com sua senha",
              ),
            )
          ],
        ),
      ),
    );
  }
}
