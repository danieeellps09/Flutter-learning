// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciaQuestionario;
  Resultado(this.pontuacao, this.reiniciaQuestionario);

  @override
  // ignore: avoid_renaming_method_parameters
  Widget build(BuildContext) {
    return Column(children: <Widget>[
      const Center(
          child: Text(
        "Parabens",
        style: TextStyle(fontSize: 28),
      )),
      TextButton(
          child: Text('Reiniciar', style: TextStyle(fontSize: 18)),
          style: TextButton.styleFrom(
            foregroundColor: Colors.blue, // Cor do texto
          ),
          onPressed: reiniciaQuestionario),
    ]);
  }
}
