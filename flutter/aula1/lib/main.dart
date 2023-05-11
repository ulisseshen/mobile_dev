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
          MensagemDilma(),
          SizedBox(height: 20),
          MensagemBolsonaro(),
          SizedBox(height: 20),
          MensagemDilma(),
          SizedBox(height: 20),
          MensagemBolsonaro(),
          SizedBox(height: 20),
          MensagemDilma(),
          SizedBox(height: 20),
          MensagemBolsonaro(),
          SizedBox(height: 20),
          MensagemDilma(),
          SizedBox(height: 20),
          MensagemBolsonaro(),
          SizedBox(height: 20),
        ],
      ),
    ),
  ));
}

class MensagemBolsonaro extends StatelessWidget {
  const MensagemBolsonaro({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: EdgeInsets.symmetric(horizontal: 10.0),
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
              Container(
                width: 50,
                height: 50,
                margin: EdgeInsets.only(left: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.person_2_sharp,
                    size: 30,
                  ),
                ),
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
                'Bolsonaro',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Mensagem 321',
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

class MensagemDilma extends StatelessWidget {
  const MensagemDilma({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: EdgeInsets.symmetric(horizontal: 10.0).copyWith(top: 10.0),
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
              Container(
                width: 50,
                height: 50,
                margin: EdgeInsets.only(left: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.person_2_sharp,
                    size: 30,
                  ),
                ),
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
                'Dilma',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Mensagem 123',
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
