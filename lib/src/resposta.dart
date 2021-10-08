import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() responder;

  Resposta(this.texto, this.responder);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: ElevatedButton(
        child: Text(texto),
        onPressed: responder
      ),
    );
  }
}
