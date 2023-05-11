import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeStateful(),
    ),
  );
}

class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  var _texto = "Frase para status";
  var _frases = ['Tudo tem o seu tempo.',
                 'Construindo mares, castelos e sonhos pela louca jornada da vida.', 
                 'Ainda que haja noite no coração, vale a pena sorrir para que haja estrelas na escuridão.',
                 'Você nunca achará o arco-íris se estiver olhando para baixo.',
                 'Não acrescente dias à sua vida, mas vida aos seus dias.'];

  var _frasesGeek = ['Com grandes poderes, vem grandes responsabilidades. - Homem-Aranha',
                    'Seu futuro não está escrito, o de ninguém está. Você pode fazer o que quiser fazer. - De Volta Para o Futuro',
                    'Não entre em pânico. - Guia do Mochileiros das Galáxias',
                    'Que é que há, velhinho? — Pernalonga',
                    'É preciso que eu suporte duas ou trê larvas se quiser conhecer as borboletas - O pequeno príncipe',
                    'Não. Não foram os aviões. Foi a Bela que matou a Fera. — King Kong',
                    'Para o infinito... E além! - Toy Story',
                    'Nada se é conquistado com lágrimas - Alice no país das maravilhas',
                    'Sempre passe a diante o que você aprendeu - Star Wars',
                    'Como podem andar pelo mundo sem deixar nenhum rastro? - Doctor Who',];
  var _i = 0;
  var _x = 0;
  var _aFrase = 'Bem Vindo 😊';
  var _img = 'lib/imagens/frases.jpg';
  var _forte = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text(
          _texto,
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        backgroundColor: Colors.green[_forte],
      ),
      body: Center(
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, //alinha no meio da coluna

          children: [

            Image.asset(
              _img,
              fit: BoxFit.fitWidth,
            ),

            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                _aFrase,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.green[900],
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  //reseta
                  if (_i == _frases.length - 1) {
                    _i = 0;
                  } else {
                    _i++;
                  }
                  //print("Construiu inspiradora $_i");
                });
                _aFrase = _frases[_i];
                _img = 'lib/imagens/frases.jpg';
                _forte = 300;
                print('Clicou frase inspiradora $_i');
              },
              child: Text("Nova Frase Inspiradora"),
              style: 
                ElevatedButton.styleFrom(primary: Colors.deepOrangeAccent, 
                padding: EdgeInsets.all(15),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  //reseta
                  if (_x == _frasesGeek.length - 1) {
                    _x = 0;
                  } else {
                    _x++;
                  }
                  //print("Construiu geek $_x");
                });
                _aFrase = _frasesGeek[_x];
                _img = 'lib/imagens/geek.jpg';
                _forte = 900;
                print('Clicou Frase Geek $_x');
              },
              child: Text("Nova Frase Geek"),
              style: 
                ElevatedButton.styleFrom(primary: Colors.deepOrangeAccent, 
                padding: EdgeInsets.all(15),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.green[50],
    );
  }
}

class Home extends StatelessWidget {
  var _texto = "Intagram :-)";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_texto),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text('Conteudo Principal'),
      ),
      /*bottomNavigationBar: BottomAppBar(
          color: Colors.lightGreen,
          child: Text("Suporte"),
        ),*/
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightGreen,
        child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Text("Texto 1"),
                Text("Texto 2"),
              ],
            )),
      ),
    );
  }
}
