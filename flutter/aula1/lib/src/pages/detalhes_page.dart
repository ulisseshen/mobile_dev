import 'package:flutter/material.dart';

class DetalhesPage extends StatelessWidget {
  const DetalhesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Detalhes')),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Text("centralizado"),
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("voltar"))
          ],
        ),
      ),
    );
  }
}
