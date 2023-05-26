import 'package:flutter/material.dart';

class TextFormSenha extends StatefulWidget {
  const TextFormSenha({
    super.key,
  });

  @override
  State<TextFormSenha> createState() => _TextFormSenhaState();
}

class _TextFormSenhaState extends State<TextFormSenha> {
  final senha = '44455';
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    final icon = obscureText ? Icons.visibility_off : Icons.visibility;
    return TextFormField(
      initialValue: senha,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabled: true,
        suffixIcon: IconButton(
          icon: Icon(icon),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Minha senha é: $senha"),
            ));
            setState(() {
              obscureText = !obscureText;
            });
            print(obscureText);
          },
        ),
        label: Text('Senha'),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(40.0)),
        ),
      ),
    );
  }
}
