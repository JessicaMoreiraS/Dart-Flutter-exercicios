import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//EXERCICIO 1

// void main(){
//   runApp(MaterialApp(
//     title: "Botões",
//     home: Container(
//       color: Colors.white,
//       child: Column(
//         children: [
//           TextButton(
//             onPressed: (){ /* Chama a funcao para o botão fazer quando clicado*/ 
//               print("Botão pressionado");
//             }, 
//               child: Text('Clique aqui',
//                 style: TextStyle(
//                   fontSize: 20,
//                   color: Colors.black,
//                   decoration: TextDecoration.none
//                 ),
//               )
//             )
//           ],
//         )
//       )
//     ),
//   );
// }

//EXERCICIO 2 

void main(){
  runApp(MaterialApp(
    //title: "Alinhamentos e Espaçamentos",
    title: "Imagem",
    home: Container(
      //color: Colors.white,
      //padding: EdgeInsets.fromLTRB(70, 20, 10, 5), //left, top, right, bottom
      //margin: EdgeInsets.only(top: 5, right: 50),
      decoration:
        BoxDecoration(
          border: Border.all(
            width: 3,
            color: Colors.red
            )
        ),
      child: Image.asset(
        'imagens/fundoFlores.jpg', 
        fit:BoxFit.cover,
      )

        /*
        Row/*Column*/(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Eixo X
        crossAxisAlignment: CrossAxisAlignment.start, //eIXO Y
        children: [
          /*Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
          textAlign: TextAlign.justify,
          ),*/
          Text("T1"),
          /*Padding(
            padding: EdgeInsets.all(100),
            child: Text("T2"),
          ),*/
          Text("T2"),
          Text("T3"),
        ],
        )
        */
      )
    ),
  );
}