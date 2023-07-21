import 'package:flutter/material.dart';
import './resultado.dart';
import 'questionario.dart';

void main() => runApp(perguntaApp());

class _perguntaAppState extends State<perguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'O que Luke Skywalker perdeu em sua luta com Darth Vader?',
      'respostas': [
        {'texto': 'A mão direita dele', 'pontuacao': 10},
        {'texto': 'A mão esquerda dele', 'pontuacao': 5},
        {'texto': 'O pé esquerdo dele', 'pontuacao': 3},
        {'texto': 'Perna esquerda dele', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual é a cor do sabre de luz de Qui-Gon Jinn?',
      'respostas': [
        {'texto': 'Verde', 'pontuacao': 10},
        {'texto': 'Vermelho', 'pontuacao': 5},
        {'texto': 'Azul', 'pontuacao': 3},
        {'texto': 'Lilás', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Quem explodiu a primeira Estrela da Morte e com que arma?',
      'respostas': [
        {'texto': 'Princesa Leia com um X-Wing', 'pontuacao': 1},
        {'texto': 'Luke Skywalker com seu sabre de luz', 'pontuacao': 5},
        {'texto': 'Luke Skywalker com um X-Wing', 'pontuacao': 10},
        {'texto': 'Leia com um detonador térmico', 'pontuacao': 3},
      ],
    },
    {
      'texto': 'Que apelido Han Solo chama de Luke Skywalker que o deixa louco?',
      'respostas': [
        {'texto':'Buckaroo', 'pontuacao': 3},
        {'texto':'Criança', 'pontuacao': 10},
        {'texto':'Skydancer', 'pontuacao': 5},
        {'texto':'Lucas', 'pontuacao': 1},
      ],
    }
  ];

  void _responder(int pontuacao) {
    setState(() {
      _perguntaSelecionada++;
      _pontuacaoTotal += pontuacao;
    });
  }
  //Reinicia QUIZ
  void _reiniciaQuiz(){
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }
  
  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            titleTextStyle: const TextStyle(fontSize: 25),
            title: const Center(
              child: Text('Quiz'),
            )),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _responder,
              )
            : Resultado(_pontuacaoTotal, _reiniciaQuiz),
      ),
    );
  }
}

class perguntaApp extends StatefulWidget {
  @override
  _perguntaAppState createState() {
    return _perguntaAppState();
  }
}
