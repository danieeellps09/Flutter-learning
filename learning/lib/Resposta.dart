import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final int pontuacao;

  const Resposta(this.pontuacao);

  String get resultadoDaFrase {
    if (pontuacao > 0) {
      return "Parabéns";
    } else if (pontuacao < 12) {
      return 'Você é bom';
    } else if (pontuacao < 16) {
      return 'Você é incrivel';
    } else {
      return 'nivel master';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue, // Change the button's background color
          foregroundColor: Colors.white,
        ),
        onPressed,
        child: Text(resposta),
      ),
    );
  }
}
