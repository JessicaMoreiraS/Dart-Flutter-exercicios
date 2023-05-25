import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CampoTexto extends StatefulWidget {
  @override
  _CampoTextoState createState() => _CampoTextoState();
}
/* Aula - Inputs
class _CampoTextoState extends State<CampoTexto> {

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body:Column( 
        children: [
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              keyboardType: TextInputType.text, //cria input
              decoration: InputDecoration(labelText: "Digite um valor"), //placeholder
              // enabled: false, //nao deixa digitar no input
              maxLength: 8, //limite de caracteres, mas permite digitar livfremente (aparecendo como err)
              maxLengthEnforcement: MaxLengthEnforcement.enforced, //inpede que seja digitados mais caracteres do que o limite 'maxLength'
              style: TextStyle(fontSize: 25, color: Colors.blue),
              controller: _textEditingController,
              //obscureText: true, //o texto fica tipo senha (bolinhas)

              //onChanged
              /*onSubmitted: (String texto){
                print("Valor digitado =" +texto);
              }*/
            ),  
          ),
          ElevatedButton(
            child: Text("Salvar"),
            style: ElevatedButton.styleFrom(
              primary: Colors.lightGreen
            ),
            onPressed: (){
              print("Valor digitado = " + _textEditingController.text);
            },
          )
        ]
      )
    );
  }
}*/



//APP GASOLINA OU ALCOOL
class _CampoTextoState extends State<CampoTexto> {

  TextEditingController _textEditingControllerAlcool = TextEditingController();
  TextEditingController _textEditingControllerGasolina = TextEditingController();
  
  var _resultado = "Preencha o preço do Álcool da Gasolina";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina"),
      ),
      body:
      Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
            Image.asset('lib/imagens/GasolinaOuAlcool.jpg', alignment: Alignment.center,),
            Padding(
              padding: EdgeInsets.all(32),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Preço Álcool"),
                maxLength: 6, 
                maxLengthEnforcement: MaxLengthEnforcement.enforced, 
                style: TextStyle(fontSize: 25, color: Colors.green[500]),
                controller: _textEditingControllerAlcool,
              ),  
            ),

            Padding(
              padding: EdgeInsets.all(32),
              child: TextField(
                keyboardType: TextInputType.number, 
                decoration: InputDecoration(labelText: "Preço da Gasolina"), 
                maxLength: 6, 
                maxLengthEnforcement: MaxLengthEnforcement.enforced, 
                style: TextStyle(fontSize: 25, color: Colors.green[500]),
                controller: _textEditingControllerGasolina,
              ),  
            ),

            ElevatedButton(
              child: Text("Salvar"),
              style: ElevatedButton.styleFrom(
                primary: Colors.lightGreen
              ),
              onPressed: (){
                if(_textEditingControllerAlcool.text != "" && _textEditingControllerGasolina.text != ""){
                  double? precoA = double.tryParse(_textEditingControllerAlcool.text);
                  double? precoG = double.tryParse(_textEditingControllerGasolina.text);
                  if(precoA != null && precoG != null){
                    if((precoA / precoG) >= 0.7){
                      setState(() {
                        _resultado = "Compensa a Gasolina";
                      });
                    }else{
                      setState(() {
                        _resultado = "Compensa o Álcool";
                      });
                    }
                  }
                }else{
                  setState(() {
                    _resultado = "preencha os dois preços";
                  });
                } 
              },
            ),

            Padding(
              padding: EdgeInsets.all(32),
              child: Text(_resultado)
            )
          ]

          ),
          padding: EdgeInsets.all(0),
        ),
      ),
    );
  }
}