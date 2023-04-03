import 'dart:math';

void exercicio1(a, b, c){
  var delta = (b*b) + (4*a*c);
  
  var x1 = (-b +sqrt(delta))/2*a;
  var x2 = (-b -sqrt(delta))/2*a;
  
  var xv = -b/2*a;
  var yv = -delta/4*a;
  
  var concavidade = "";
  if(a>0){
    concavidade = "A concavidade é voltadada para cima";
  }else{
    if(a<0){
      concavidade = "A concavidade é voltada para baixo";
    }else{
      concavidade = "Não há concavidade";
    }
  }
  print("Delta: $delta \nX1: $x1 \nX2: $x2 \nXV: $xv \nYV: $yv \nConcavidade: $concavidade");
  print("Autora: Jéssica Moreira | Data de nascimento: 09/03/2002");
}


double exercicio2(a, b){
  var resultado = a;
  for(int x=1;x<b;x++){
    resultado = resultado*a;
  }
  print("Autora: Jéssica Moreira | Data de nascimento: 09/03/2002");
  return resultado;
}

double exercicio3(n){
  var fatorial=n;
  for(int x=n-1; x>0; x--){
    fatorial = fatorial*x;
  }
  print("Autora: Jéssica Moreira | Data de nascimento: 09/03/2002");
  return fatorial;
}

double exercicio4(n){
  double sequenciaHistorico = 0;
  double sequencia =1;
  double valor= sequencia;
  for(int x=1; x<n; x++){
    valor = sequencia + sequenciaHistorico;
    sequenciaHistorico = sequencia;
    sequencia = valor;
  }
  print("Autora: Jéssica Moreira | Data de nascimento: 09/03/2002");
  return valor;
}

double exercicio5(combustivel){
  print("Autora: Jéssica Moreira | Data de nascimento: 09/03/2002");
  if(combustivel == "etanol"){
    return 0;
  }else{
    if(combustivel == "gasolina"){
      return 1;
    }else{
      return 3;
    }
  }
}


void exercicioDecisao1(aIdade){
  var result = aIdade <= 4 ? print("Essa idade não é permitida"): aIdade >=5 && aIdade<=7 ? print("O atleta é da categoria: Infantil A") : aIdade >=8 && aIdade <=10 ? print("O atleta é da categoria: Infantil A"): aIdade>=11 && aIdade<=13 ?  print("O atleta é da categoria: Juvenil A"): aIdade>=14 && aIdade<=17 ?  print("O atleta é da categoria: Juvenil B"): aIdade>=18 && aIdade<=25 ?  print("O atleta é da categoria: Adulto"): aIdade>=26 ?  print("O atleta é da categoria: Master"): "";
  result;
  print("Autora: Jéssica Moreira | Data de nascimento: 09/03/2002");
}


void exercicioDecisao2(resposta){
  switch(resposta){
    case "c":
    case "C":
      for(var x=1; x<=100; x++){
        if(x%3 == 0){
          print(x);
        }
      }
      print("Autora: Jéssica Moreira | Data de nascimento: 09/03/2002");
      break;
    case "D":
    case "d":
      for(var x=100; x>=1; x--){
        if(x%3 == 0){
          print(x);
        }
      }
      print("Autora: Jéssica Moreira | Data de nascimento: 09/03/2002");
      break;
  }
}

void exercicioFuncao1(){
  var x =0;
  var soma = 0;
  var contador = 0;
  do{
    if(x%2 == 0){
      soma += x;
      contador++;
    }
    x++;
  }while(contador<50);
  print("A soma dos primeiros 50 numeros pares (contando com o 0) é : $soma");
  print("Autora: Jéssica Moreira | Data de nascimento: 09/03/2002");
}

void exercicioFuncao2(valor1, valor2){
  if(valor2 < valor1){
    var auxiliar = valor2;
    valor2 = valor1;
    valor1 = auxiliar;
  }
  var contador = valor1;
  do{
    print(contador);
    contador++;
  }while(contador <= valor2);
  print("Autora: Jéssica Moreira | Data de nascimento: 09/03/2002");
}


void main() {
  print("Exercicio 1:");
  exercicio1(9,3,2);
  
  print("\nExercicio 2:");
  double resposta2 = exercicio2(3,2);
  print(resposta2);
  
  print("\nExercicio 3:");
  double resposta3 = exercicio3(9);
  print(resposta3);
  
  print("\nExercicio 4:");
  double resposta4 = exercicio4(9);
  print(resposta4);
  
  print("\nExercicio 5:");
  var gOuA = "gasolina";
  if(exercicio5(gOuA) == 0){
    print("Abasteça com Etanol");
  }else{
    if(exercicio5(gOuA) == 1){
      print("Abasteça com Gasolina");
    }else{
      print("Escolha um combustivel valido");
    }
  }
  
  print("\nExercicio de decisão 1:");
  print("digite a idade do atleta:");
  var aIdade = 9; //int.parse(stdin.readLineSync()!);
  exercicioDecisao1(aIdade);
  
  print("\nExercicio de decisão 2:");
  print("Multiplos de 3 entre 1 e 100");
  print("Digite C para vizualizar em ordem Crescente e D para vizualizar em ordem Decrescente");
  var resposta = "D"; //stdin.readLineSync();
  exercicioDecisao2(resposta);
  
  print("\nExercicio de função 1:");
  exercicioFuncao1();
  
  print("\nExercicio de função 2:");
  print("Escolha dois valores para contar de um até o outro");
    var valor1 = 9; //int.parse(stdin.readLineSync()!);
  var valor2 = 3; //int.parse(stdin.readLineSync()!);
  exercicioFuncao2(valor1, valor2);
}


