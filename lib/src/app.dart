import 'package:flutter/material.dart';
import 'package:projeto_perguntas/src/pergunta.dart';
import 'package:projeto_perguntas/src/questionario.dart';
import 'package:projeto_perguntas/src/resposta.dart';
import 'package:projeto_perguntas/src/resultado.dart';

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

  void reiniciar() {
    setState(() {
      _perguntaSelecionada = 0;
      _totalPontuacao = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas versão 2'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
              perguntas: _perguntas, 
              perguntaSelecionada: _perguntaSelecionada, 
              quandoResponder: _responder)
            : Resultado(_totalPontuacao, reiniciar),
      ),
    );
  }
}
