// import 'package:flutter/material.dart';

// void main() {
//   //Exemplo 1
    // runApp(
    //     MaterialApp(
    //         home: Scaffold(
    //             appBar: AppBar(
    //             title: Text('Minha Primeira App'),
    //             ),
    //             body:Text('Hello worls :)')  
    //         ),
    //     )
    // );

//   //Exemplo 2
//     // runApp(
//     //   MaterialApp(
//     //     home:Text('Olá Mundo')
//     //   )
//     // );

//   //Exemplo 3
// //   runApp(MinhaApp());
// // }

// // //Exemplo 3
// // class MinhaApp extends StatelessWidget{
// //   Widget build(BuildContext context){

// //     return MaterialApp(
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: Text("Minha primeira App"),
// //         ),
// //         body: Text('Hello world :)')
// //       ),
// //     );
// //   }
// // }


//Exeplo 4
// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context){

//   return Scaffold(
//     appBar: AppBar(
//       title: Text('Aplicação Stateless'),
//     ),
//     body: Center(
//       child: Text(
//         'Texto da Aplicação Stateless',
//         style: TextStyle(
//           fontSize: 30,
//           fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }
