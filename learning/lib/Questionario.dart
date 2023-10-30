// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:learning/Questao.dart';
import 'package:learning/Resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() responder;

  const Questionario(
      {super.key,
      required this.perguntas,
      required this.perguntaSelecionada,
      required this.responder});

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  // ignore: annotate_overrides
  Widget build(BuildContext context) {
    @override
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? (perguntas[perguntaSelecionada]['resposta']
            as List<Map<String, Object>>)
        : [];
    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto'] as String),
        ...respostas
            .map((resp) => Resposta(resp['texto'] as String, responder))
            .toList(),
      ],
    );
  }
}
