import 'package:flutter/material.dart';
import 'package:layout_login/src/widgets/text_form_field_senha.dart';

import '../../app/routes.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 30),
        children: [
          AppBar(
            centerTitle: true,
            title: const Text(
              "Registro",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            leading: IconButton(
              tooltip: 'Voltar',
              onPressed: () {
                Navigator.pop(context);
              },
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
              hintText: "ID do funcionário",
            ),
          ),
          const SizedBox(height: 15),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.person),
              border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color.fromARGB(102, 0, 0, 0),
                  ),
                  borderRadius: BorderRadius.circular(10)),
              hintText: "Usuário",
            ),
          ),
          const SizedBox(height: 15),
          TextFormFieldSenha(hintText: "Entre com sua senha"),
          const SizedBox(height: 15),
          TextFormFieldSenha(hintText: 'Confirme sua senha'),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {},
            child: const Text('Registrar',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Já tem uma conta?',
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(Routes.login);
                  },
                  child: const Text(
                    'Voltar ao login',
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
    );
  }
}
