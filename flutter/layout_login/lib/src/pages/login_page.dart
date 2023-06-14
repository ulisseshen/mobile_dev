import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 30),
        child: Column(
          children: [
            AppBar(
              centerTitle: true,
              title: const Text(
                "Login",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
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
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: const Text('Login',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Você não tem uma conta?',
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Registre-se',
                      style: TextStyle(
                        color: Color(0xff0088CC),
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        fontFamily: 'Inter',
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
