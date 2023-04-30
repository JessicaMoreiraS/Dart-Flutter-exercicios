import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Teste Titulo",
    debugShowCheckedModeBanner: false,
    home: 
    Container(
      color: Colors.blueAccent,
      child: 
        Column/*Row*/(
          /*Text(' T1 '),
          Text(' T2 '),*/
          children:[
          Text(
            'loren jkfjkioej jndjlsjfio jdjioji ojsijj jio UIGUIDSHUIDHIA HIJSDIOJIJ  jiofjji iojidjmd',
            style: TextStyle(
              fontSize: 20,
              color: Colors.tealAccent,
              decoration: TextDecoration.underline, //none para tirar a linha
              decorationColor: Colors.black,
              decorationStyle: TextDecorationStyle.wavy,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              wordSpacing: 2,

              ),
            )
          ]   
        )
      )
    )
  );
}

