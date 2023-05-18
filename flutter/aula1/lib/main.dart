import 'package:flutter/material.dart';

void main() {
  final email = 'email5454@essssol.com';
  final senha = '44455';

  runApp(MaterialApp(
    title: 'Aula 4',
    home: Scaffold(
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
            child: TextFormField(
              initialValue: senha,
              obscureText: true,
              decoration: InputDecoration(
                enabled: true,
                suffixIcon: IconButton(
                  icon: Icon(Icons.remove_red_eye),
                  onPressed: () {},
                ),
                label: Text('Senha'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(25.0)),
                  backgroundColor: Colors.green,
                ),
                onPressed: () {},
                label: Text('Entrar'),
                icon: Icon(Icons.security),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton(
              onPressed: () {},
              child: Text('butão'),
            ),
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
    ),
  ));
}

class Mensagem extends StatelessWidget {
  const Mensagem({
    required this.mensagem,
    required this.nome,
    required this.caminhoImagem,
    super.key,
  });

  final String caminhoImagem;
  final String nome;
  final String mensagem;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: EdgeInsets.symmetric(horizontal: 10.0)
          .copyWith(top: 10.0, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.all(Radius.circular(15)),
        border: Border.all(width: 5, color: Colors.red),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CircleAvatar(
                    radius: 30, backgroundImage: AssetImage(caminhoImagem)),
              ),
            ],
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nome,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                mensagem,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
