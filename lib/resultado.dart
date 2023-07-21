import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciaQuiz;
  late final String nomeImagem;

  Resultado(this.pontuacao, this.reiniciaQuiz);

  String get fraseResultado {
    if (pontuacao < 8) {
      nomeImagem = 'images/jarjarbinks.jpg';
      return 'Nível Jar Jar Binks';
    } else if (pontuacao < 12) {
      nomeImagem = 'images/hansolo.jpg';
      return 'Nível Mercenário de Tatooine';
    } else if (pontuacao < 18) {
      nomeImagem = 'images/padawan.jpg';
      return 'Nível Padawan';
    } else {
      nomeImagem = 'images/jedi.jpg';
      return 'Nível Jedi';
    }
    
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(fraseResultado, style: (const TextStyle(fontSize: 25))),
        ),
        TextButton(
          onPressed: reiniciaQuiz, 
          child: const Text('Reiniciar Quiz', style: TextStyle(fontSize: 18),
          )
        ),
        Image.asset(
              nomeImagem,
              height: 350.0,
              width: 350.0,
        ),
      ],
    );
  }
}
