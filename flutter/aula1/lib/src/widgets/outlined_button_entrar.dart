import 'package:flutter/material.dart';

class OutlinedButtonEntrar extends StatelessWidget {
  const OutlinedButtonEntrar({
    super.key,
    required this.senha,
  });

  final String senha;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Entrando no sistema"),
        ));
      },
      child: Text('butão'),
    );
  }
}
