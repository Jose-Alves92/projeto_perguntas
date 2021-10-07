import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciar;

  Resultado(this.pontuacao, this.reiniciar);

  String mostrarResultado() {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante';
    } else {
      return 'Nível Jedi!';
    }
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            mostrarResultado(),
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
          child: Text('Reiniciar'),
          onPressed: reiniciar,
          style: TextButton.styleFrom(
            textStyle: TextStyle(fontSize: 18, color: Colors.blue),
          ),
        )
      ],
    );
  }
}
