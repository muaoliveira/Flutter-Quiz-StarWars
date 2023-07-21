import 'package:flutter/material.dart';

class Resposta extends StatelessWidget{
  final String textoResposta;
  final void Function() onSelecionado;

  Resposta(this.textoResposta, this.onSelecionado);

  @override
  Widget build(BuildContext context){
    return Container(
      width: 300,
      child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 20, 116, 206),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 16),
            ),
            onPressed: onSelecionado,
            child: Text(textoResposta),
      ),
    );
  }
}