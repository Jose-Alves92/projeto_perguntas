import 'package:flutter/material.dart';

class App extends StatefulWidget {
  _AppState createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  int _perguntaSelecionada = 0;
  int _totalPontuacao = 0;
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'resposta': [
        {'texto': 'Preto', 'pontuacao': 10},
        {'texto': 'Vermelho', 'pontuacao': 5},
        {'texto': 'Verde', 'pontuacao': 3},
        {'texto': 'Branco', 'pontuacao': 1}
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'resposta': [
        {'texto': 'Coelho', 'pontuacao': 10},
        {'texto': 'Cobra', 'pontuacao': 5},
        {'texto': 'Elefante', 'pontuacao': 3},
        {'texto': 'Leão', 'pontuacao': 1},
      ]
    },
    {
      'texto': 'Qual é o seu instrutor favorito?',
      'resposta': [
        {'texto': 'Maria', 'pontuacao': 10},
        {'texto': 'João', 'pontuacao': 5},
        {'texto': 'Leo', 'pontuacao': 3},
        {'texto': 'Pedro', 'pontuacao': 1},
      ]
    },
  ];
  void _responder(int pontuacao) {
    setState(() {
      _perguntaSelecionada++;
      _totalPontuacao += pontuacao;
    });
    
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  Widget build(BuildContext context) {
    List<Map<String, Object>> _respostas =
        _perguntas[_perguntaSelecionada].cast()['resposta'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas versão 2'),
        ),
        body: temPerguntaSelecionada ? Column(
          children: <Widget>[
            Center(
              child: Text(
                _perguntas[_perguntaSelecionada]['texto'].toString(),
                style: TextStyle(fontSize: 28, color: Colors.blue),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              child: Text(_respostas[0]['texto'].toString()),
              onPressed: () => _responder(_respostas[0].cast()['pontuacao']),
            ),
            ElevatedButton(
              child: Text(_respostas[1]['texto'].toString()),
              onPressed: () => _responder(_respostas[1].cast()['pontuacao']),
            ),
            ElevatedButton(
              child: Text(_respostas[2]['texto'].toString()),
              onPressed: () => _responder(_respostas[2].cast()['pontuacao']),
            ),
            ElevatedButton(
              child: Text(_respostas[3]['texto'].toString()),
              onPressed: () => _responder(_respostas[3].cast()['pontuacao']),
            )
          ],
        ): null,
      ),
    );
  }
}
