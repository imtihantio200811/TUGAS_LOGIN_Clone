import 'package:flutter/material.dart';

class Textwidget extends StatelessWidget {
  final String text;

  const Textwidget({
    super.key,
    this.text = '',
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 32,
          fontWeight: FontWeight.bold,
          height: 1.2,
        ),
      ),
    );
  }
}
