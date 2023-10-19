import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String text;

  Questao(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        text,
        style: TextStyle(fontSize: 38),
        textAlign: TextAlign.center,
      ),
    );
  }
}
