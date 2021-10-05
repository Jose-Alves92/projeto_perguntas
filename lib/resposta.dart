import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() responder;

  Resposta(this.texto, this.responder);

  Widget build(BuildContext context) {
    return Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(5),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(textStyle: TextStyle(color: Colors.white)),
                    child: Text(texto),
                    onPressed: responder,
                    ),
                );
  }
}