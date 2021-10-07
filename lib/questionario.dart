import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) quandoResponder;

  Questionario(
      {required this.perguntas,
      required this.perguntaSelecionada,
      required this.quandoResponder});

  bool temPerguntaSelecionada() {
    return perguntaSelecionada < perguntas.length;
  }

  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada()
        ? perguntas[perguntaSelecionada].cast()['resposta']
        : [];
    return Center(
      child: Column(
        children: <Widget>[
          Questao(perguntas[perguntaSelecionada]['texto'].toString()),
          ...respostas.map(
            (text) => Resposta(
              text['texto'].toString(),
              () => quandoResponder(int.parse(text['pontuacao'].toString())),
            ),
          ),
        ],
      ),
    );
  }
}
