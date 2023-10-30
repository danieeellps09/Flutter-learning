// ignore: file_names
import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String text;

  const Questao(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        text,
        // ignore: prefer_const_constructors
        style: TextStyle(fontSize: 38),
        textAlign: TextAlign.center,
      ),
    );
  }
}
