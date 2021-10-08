import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuestionario;

  Resultado(this.pontuacao, this.reiniciarQuestionario);

  String get mostraResultado {
    if(pontuacao < 8) {
      return 'Parabéns!';
    }else if(pontuacao < 12) {
      return 'Você é bom!';
    }else if(pontuacao < 16) {
      return 'Impressionante';
    }else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Text(
            mostraResultado,
            style: TextStyle(fontSize: 28, color: Colors.black),
            ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: TextStyle(fontSize: 18, color: Colors.blue)
            ),
            child: Text('Reiniciar?'),
            onPressed: reiniciarQuestionario,
          )
        ],
      ),
    );
  }
}