import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;

  Questao(this.texto);//getter

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //margin: EdgeInsets.all(50), Essa vc define uma margem apenas
      margin: EdgeInsets.fromLTRB(50, 50, 50, 15),
      child: Text(
        texto,
        style: const TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
