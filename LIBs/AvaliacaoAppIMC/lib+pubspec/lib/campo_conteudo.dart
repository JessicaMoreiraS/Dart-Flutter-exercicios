import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CampoConteudoIMC extends StatefulWidget {
  @override
  _CampoConteudoIMCState createState() => _CampoConteudoIMCState();
}



//APP GASOLINA OU ALCOOL
class _CampoConteudoIMCState extends State<CampoConteudoIMC> {

  TextEditingController _textEditingControllerAltura = TextEditingController();
  TextEditingController _textEditingControllerPeso = TextEditingController();
  var _imcResultado = "Preencha a Altura e o Peso para obter o IMC";

  var _rodape = Image.asset('lib/imagens/pessoa.png', height: 100,);
  var _n = 1;
  void _apareceTexto(int n){
    if(n==1){
      setState(() {
        _rodape = Image.asset('lib/imagens/homem.png', height: 100,);
        _n = 2;
      });
    }
    if(n==2){
      setState(() {
       _rodape = Image.asset('lib/imagens/pessoa.png', height: 100,);
       _n = 1;
       });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculo IMC"),
        backgroundColor: Colors.green[500],
      ),
      body:
      Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
            Image.asset('lib/imagens/imc.png', alignment: Alignment.center,),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 30, 50, 30),//EdgeInsets.all(20),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Altura"),
                maxLength: 4, 
                maxLengthEnforcement: MaxLengthEnforcement.enforced, 
                style: TextStyle(
                  fontSize: 25, 
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  //decoration
                  //decoration: TextDecoration.underline,
                  //decorationColor: Colors.deepPurple,
                  //decorationStyle: TextDecorationStyle.dotted,
                  color: Colors.green[500]
                  ),
                controller: _textEditingControllerAltura,
              ),  
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(50, 30, 50, 30),
              child: TextField(
                keyboardType: TextInputType.number, 
                decoration: InputDecoration(labelText: "Peso"), 
                maxLength: 7, 
                maxLengthEnforcement: MaxLengthEnforcement.enforced, 
                style: TextStyle(fontSize: 25, color: Colors.green[500]),
                controller: _textEditingControllerPeso,
              ),  
            ),

            ElevatedButton(
              child: Text("Calcular"),
              style: ElevatedButton.styleFrom(
                primary: Colors.lightGreen[800],
              ),
              onPressed: (){

                //Calculo
                if(_textEditingControllerAltura.text != "" && _textEditingControllerPeso.text != ""){
                  double? altura = double.tryParse(_textEditingControllerAltura.text);
                  double? peso = double.tryParse(_textEditingControllerPeso.text);
                  if(altura != null && peso != null){
                    /*Converte caso o usuario coloque em centimetros*/
                    if(altura>3){
                      altura=altura/100;
                    }
                    
                    double? _calculo = (peso/(altura*altura));
                    var _textoCalculo =  _calculo.toStringAsFixed(2);
                    if(_calculo >= 35){
                      setState(() {
                        _imcResultado = "IMC de $_textoCalculo, Extremamente Obeso";
                      });
                    }
                    if(_calculo >=30 && _calculo < 35){
                      setState(() {
                        _imcResultado = "IMC de $_textoCalculo, Obeso";
                      });
                    }
                    if(_calculo >=25 && _calculo < 30){
                      setState(() {
                        _imcResultado = "IMC de $_textoCalculo, Acima do peso";
                      });
                    }
                    if(_calculo >=18.5 && _calculo < 25){
                      setState(() {
                        _imcResultado = "IMC de $_textoCalculo, Normal";
                      });
                    }
                    if(_calculo < 18.5){
                      
                      setState(() {
                        _imcResultado = "IMC de $_textoCalculo, Abaixo do peso";
                      });
                    }
                  }
                }else{
                  setState(() {
                    _imcResultado = "preencha os dois campos";
                  });
                } 
              },
            ),

            Padding(
              padding: EdgeInsets.all(32),
              child: Text(_imcResultado),
            ),

            Row(
              children:[
              GestureDetector(
                  onTap:() => _apareceTexto(_n),
                  child: _rodape,
                  
                ),
              ]
            )
          ]

          ),
          padding: EdgeInsets.all(0),
        ),
      ),
      bottomNavigationBar:
        BottomAppBar(
          color: Colors.green[500],
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(

              children: [
                //Image(image: this._rodape),
                Text('Feito por Jéssica'),

                /*GestureDetector(
                  /*onTap:(){
                    //setState(() {}
                    _rodape = Text('Feito por Jéssica') as AssetImage;
                    
                  }*/
                  //height:
                  //child: _rodape,
                ),*/
                
              ],
            ),
          )
        ),
    );
  }
}