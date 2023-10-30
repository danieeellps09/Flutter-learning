import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:learning/Questao.dart';
import 'package:learning/Questionario.dart';
import 'package:learning/Resultado.dart';

void main() {
  runApp(const PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final perguntas = [
    {
      'texto': 'Qual seu animal favorito?',
      'resposta': [
        {'texto': 'gato', 'nota': 2},
        {'texto': 'cachorro', 'nota': 10},
        {'texto': 'girafa', 'nota': 4},
        {'texto': 'camelo', 'nota': 7}
      ]
    },
    {
      'texto': 'Qual sua cor favorita?',
      'resposta': [
        {'texto': 'vermelho', 'nota': 8},
        {'texto': 'preto', 'nota': 10},
        {'texto': 'verde', 'nota': 9},
        {'texto': 'azul', 'nota': 5}
      ]
    }
  ];

  // This widget is the root of your application.
  void _responder() {
    // ignore: avoid_print
    setState(() {
      _perguntaSelecionada++;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Vamos construir uma lista')),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _responder)
            : Resultado(),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
