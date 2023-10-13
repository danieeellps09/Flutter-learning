import 'package:flutter/material.dart';
import 'package:learning/Questao.dart';
import 'package:learning/Resposta.dart';

void main() {
  runApp(PerguntaApp());
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

  @override
  Widget build(BuildContext context) {
    List<Widget> respostas = [];
    for (String txtResposta
        in perguntas[_perguntaSelecionada]['resposta'] as List<String>) {
      respostas.add(Resposta(txtResposta, _responder));
    }

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('Vamos construir uma lista')),
          body: Column(children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]['texto'] as String),
            ...respostas
          ])),
    );
  }
}

/
class PerguntaApp extends StatefulWidget {
  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
