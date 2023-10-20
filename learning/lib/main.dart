import 'package:flutter/material.dart';
import 'package:learning/Questao.dart';
import 'package:learning/Questionario.dart';

void main() {
  runApp(const PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final perguntas = [
    {
      'texto': 'Qual seu animal favorito?',
      'resposta': ['gato', 'cachorro', 'girafa', 'camelo']
    },
    {
      'texto': 'Qual sua cor favorita?',
      'resposta': ['vermelho', 'preto', 'verde', 'azul']
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
    List<String> respostas = temPerguntaSelecionada
        ? perguntas[_perguntaSelecionada]['resposta'] as List<String>
        : [];
    // ignore: unused_local_variable

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Vamos construir uma lista')),
        body: temPerguntaSelecionada
            ? Questionario(perguntas: perguntas, perguntaSelecionada: _perguntaSelecionada, responder: _responder),                
              )
            : Resultado();
      ),
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
