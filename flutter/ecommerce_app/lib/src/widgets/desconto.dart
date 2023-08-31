import 'package:flutter/material.dart';

class Desconto extends StatelessWidget {
  const Desconto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "80%",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            Text(
              "DSCNT",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            )
          ],
        ),
        Text(
          "in technology",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ],
    );
  }
}
