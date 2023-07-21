import 'package:flutter/widgets.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {

  final int perguntaSelecionada;
  final List<Map<String, Object>> perguntas;
  final void Function(int) responder;

  //Constructor
  Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.responder,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {

    List<Map<String, Object>> respostas = temPerguntaSelecionada ? 
    perguntas[perguntaSelecionada]['respostas'] as List<Map<String, Object>>
    : []; //ternário
    return Column(
            children:<Widget>[
               Questao(perguntas[perguntaSelecionada]['texto'].toString()),
              ...respostas
              .map((resp) {
              return Resposta(
                resp['texto'].toString(),
                () => responder(int.parse(resp['pontuacao'].toString())),
            );
          }
        )
      ],
    );
  }
}