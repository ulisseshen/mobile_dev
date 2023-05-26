import 'package:flutter/material.dart';

class ElevatedButtonEntrar extends StatelessWidget {
  const ElevatedButtonEntrar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
        onPressed: () {
          Navigator.of(context).pushNamed("/detalhes");
        },
        label: Text('Entrar'),
        icon: Icon(Icons.security),
      ),
    );
  }
}
