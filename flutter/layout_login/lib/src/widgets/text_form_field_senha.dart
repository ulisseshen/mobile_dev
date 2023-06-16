import 'package:flutter/material.dart';
import 'dart:math' as math;

class TextFormFieldSenha extends StatefulWidget {
  const TextFormFieldSenha({
    super.key,
    required this.hintText,
  });

  final String hintText;
  @override
  State<TextFormFieldSenha> createState() => _TextFormFieldSenhaState();
}

class _TextFormFieldSenhaState extends State<TextFormFieldSenha> {
  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    final icon = obscureText ? Icons.visibility_off : Icons.visibility;
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: Transform.flip(
          flipY: true,
          child: Transform.rotate(
              angle: math.pi * 125 / 180, child: const Icon(Icons.key)),
        ),
        suffixIcon: IconButton(
          icon: Icon(icon),
          onPressed: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
        ),
        border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(102, 0, 0, 0),
            ),
            borderRadius: BorderRadius.circular(10)),
        hintText: widget.hintText,
      ),
    );
  }
}
