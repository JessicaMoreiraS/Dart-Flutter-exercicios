import 'dart:math';

import 'package:flutter/material.dart';



class Jogo  extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}



class _JogoState extends State<Jogo> {

  var _imagemApp = AssetImage("../imagens/padrao.png");
  //Método
  void _opcaoSelecionada(String escolhaUsuario){
    var opcoes = ['pedra', 'papel', 'tesoura'];
    var opcoesImagens = ['pedra.png', 'papel.png', 'tesoura.png'];
    var numero = Random().nextInt(3);
    var escolhaApp = opcoes[numero];
    
    print("Opção selecionada: " +escolhaUsuario);
    print("Opção do APP: " +escolhaApp);

    setState(() {
      this._imagemApp = AssetImage("../imagens/"+opcoesImagens[numero]);
    });
    _validacao(escolhaApp, escolhaUsuario);
  }

  var _resultado = "jogue";
  //Validacao
  void _validacao(app, usuario){
    //empate
    if(app == usuario){
      this._resultado = "Empate";
    }else{
      if((app == "papel" && usuario == "tesoura") ||
        (app == "tesoura" && usuario == "pedra")||
        (app == "pedra" && usuario == "papel")){
          setState(() {
            this._resultado = "Você venceu!";
          });
        }else{
          setState(() {
            this._resultado = "Você perdeu!";
          });
      }
    }
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("JokenPo"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //texto - Escolha do App
            Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text(
                "Escolha do App",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),


            //imagem
            //Image.asset("../imagens/padrao.png"),
            Image(image: this._imagemApp),

            //imagem TESTES
            /*GestureDetector(
              onTap: () {print("Imagem clicada");},
              onDoubleTap: () {print("Dois cliques na Imagem ");},
              onLongPress: () {print("Clique longo na Imagem");},

              child:Image.asset("../imagens/padrao.png"),
            ), */


            //texto - Resultado
            Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text(
                _resultado ,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            //linha com 3 imagens
            //linha com 3 imagens
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => _opcaoSelecionada("pedra"),
                  child: Image.asset("../imagens/pedra.png", height: 100,),
                ),
                GestureDetector(
                  onTap: ()=> _opcaoSelecionada("papel"),
                  child: Image.asset("../imagens/papel.png", height: 100,),
                ),
                GestureDetector(
                  onTap: ()=> _opcaoSelecionada("tesoura"),
                  child: Image.asset("../imagens/tesoura.png", height: 100,),
                ) 
              ],
            )
          ],
        )
    );
  }
}