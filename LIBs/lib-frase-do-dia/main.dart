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
  var _frases = ['frase1', 'frase2', 'frase3'];
  var _i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_texto),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        child: Column(
          children: [
            Image.asset(
              'imagens/frases.jpg',
              fit: BoxFit.cover,
            ),
            Text(_frases[_i]),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  //reseta
                  if (_i == _frases.length - 1) {
                    _i = 0;
                  } else {
                    _i++;
                  }
                  print("Contruiu");
                });

                print('Clicou');
              },
              child: Text("Nova Frase"),
              style: ElevatedButton.styleFrom(primary: Colors.lightGreen),
            ),
          ],
        ),
      ),
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
