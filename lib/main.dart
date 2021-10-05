import 'package:flutter/material.dart';
import 'questao.dart';

main() => runApp(new PerguntaApp());

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}

class PerguntaAppState extends State<PerguntaApp> {
  int perguntaSelecionada = 0;
  final List<Map<String, Object>> perguntas = const [
    {
        'texto': 'Qual é a sua cor favorita?',
        'resposta': [
          {'texto':'Preto', 'pontuacao': 10}, 
          {'texto':'Vermelho', 'pontuacao': 5}, 
          {'texto':'Verde', 'pontuacao': 3}, 
          {'texto':'Branco', 'pontuacao': 1}
          ],
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'resposta': [
          {'texto':'Coelho', 'pontuacao': 10},
          {'texto':'Cobra', 'pontuacao': 5}, 
          {'texto':'Elefante', 'pontuacao': 3}, 
          {'texto':'Leão', 'pontuacao': 1},
          ]
      },
      {
        'texto': 'Qual é o seu instrutor favorito?',
        'resposta': [
          {'texto':'Maria', 'pontuacao': 10},
          {'texto':'João', 'pontuacao': 5},
          {'texto':'Leo', 'pontuacao': 3},
          {'texto':'Pedro', 'pontuacao': 1},
          ]
      },
  ];

  void responder() {
    setState(() {
       perguntaSelecionada ++;
    });
   
    print(perguntaSelecionada);
  }

  bool temPerguntaSelecionada() {
    return perguntaSelecionada < perguntas.length;
  }

  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada() ? perguntas[perguntaSelecionada].cast()['resposta'] : [];
    return new MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: temPerguntaSelecionada() ? Center(
            child: Column(
              children: <Widget>[
                Questao(perguntas[perguntaSelecionada]['texto'].toString()),
                Container(
                  margin: EdgeInsets.all(5),
                  child: ElevatedButton(
                    child: Text(respostas[0].cast()['texto']),
                    onPressed: responder,
                    ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: ElevatedButton(
                    child: Text(respostas[1].cast()['texto']),
                    onPressed: responder,
                    ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: ElevatedButton(
                    child: Text(respostas[2].cast()['texto']),
                    onPressed: responder,
                    ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: ElevatedButton(
                    child: Text(respostas[3].cast()['texto']),
                    onPressed: responder,
                    ),
                ),
              ],
            ),
          ) : null,
        ),
    );
  }
}


