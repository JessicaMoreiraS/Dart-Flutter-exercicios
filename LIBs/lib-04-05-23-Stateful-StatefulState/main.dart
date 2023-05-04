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
  var _texto = "Instagram X_x";
  var _nome = "Ju";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_texto),
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  //reseta
                  if (_nome == 'Ju') {
                    _nome = "Evelyn";
                  } else {
                    _nome = "Ju";
                  }
                  print("Contruiu");
                });

                print('Clicou');
              },
              child: Text("Clica aqui"),
              style: ElevatedButton.styleFrom(primary: Colors.amber),
            ),
            Text("Nome = $_nome")
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
