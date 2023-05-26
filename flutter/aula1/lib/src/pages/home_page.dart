import 'package:flutter/material.dart';

import '../widgets/elevated_button_entrar.dart';
import '../widgets/mensagem.dart';
import '../widgets/outlined_button_entrar.dart';
import '../widgets/text_form_senha.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  final email = 'email5454@essssol.com';
  final senha = '44455';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Aula 7')),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print('Voltar');
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () {
              // handle the press
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Settings',
            onPressed: () {
              // handle the press
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('imagens/bolossauro.jpeg')),
                    Positioned(
                      top: 65,
                      left: 55,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        child: Icon(
                          Icons.photo_camera,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('imagens/presidenta.jpg')),
                    Positioned(
                      top: 65,
                      left: 55,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        child: Icon(
                          Icons.photo_camera,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.person),
                label: Text('Nome'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              initialValue: email,
              decoration: InputDecoration(
                enabled: true,
                suffixIcon: IconButton(
                  icon: Icon(Icons.email),
                  onPressed: () {},
                ),
                label: Text('Email'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormSenha(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButtonEntrar(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButtonEntrar(senha: senha),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.red,
                  ),
                ),
              ),
              onPressed: () {},
              child: Text('butão'),
            ),
          ),
          Mensagem(
            mensagem: 'taokei hahahha',
            nome: 'bolossauro',
            caminhoImagem: 'imagens/bolossauro.jpeg',
          ),
          Mensagem(
            mensagem: 'estocar vento, salve mandioca',
            nome: 'Presidenta',
            caminhoImagem: 'imagens/presidenta.jpg',
          ),
        ],
      ),
    );
  }
}
