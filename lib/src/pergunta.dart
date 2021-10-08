import 'package:flutter/material.dart';

class Pergunta extends StatelessWidget {
  final String texto;

  Pergunta(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          texto,
          style: TextStyle(fontSize: 28, color: Colors.blue),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
