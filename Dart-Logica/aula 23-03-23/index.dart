import 'dart:io';
//import 'dart:math';

main(){
    var w=0;
    do{
        print("");
        print("Escolha a atividade que deseja acessar:");
        print("1- Categoria do atleta");
        print("2- Categoria do atleta com operador Ternario");
        print("3- Plano de trabalho e salario");
        print("4- Tabuada");
        print("5- Multiplos de 3 - Crescente e Decrescente");
        print("6- Soma dos primeiros 50 numeros pares");
        print("7- De 1 até um número que você escolher");
        print("8- Soma e media de 10 valores digitados");
        print("9- Somatoria e fatorial de um numero de sua escolha");
        print("10- Calculo de numero harmonico até o valor dejesado");
        print("11- Acerte a soma de dois valores");
        print("12- Soma de todos os valores Digitados");
        print("13- Media de todos os valores digitados");
        print("14- Intervalo entre dois numeros");
        print("15- Digite 7 valores e veja qual foi o maior e qual o menor");
        print("0- Finalizar programa");

        var escolha =stdin.readLineSync();
        print("");

        switch(escolha){
            case "1":
                print("digite a idade do atleta:");
                var lerIdade = stdin.readLineSync();
                var  idade = int.parse(lerIdade!);

                if(idade>=4){
                    print("Idade não permitida");
                }
                if(idade>=5 && idade<=7){
                    print("O atleta é da categoria: Infantil A");
                }
                if(idade>=8 && idade<=10){
                    print("O atleta é da categoria: Infantil B");
                }
                if(idade>=11 && idade<=13){
                    print("O atleta é da categoria: Juvenil A");
                }
                if(idade>=14 && idade<=17){
                    print("O atleta é da categoria: Juvenil B");
                }
                if(idade>=18 && idade<=25){
                    print("O atleta é da categoria: Adulto");
                }
                if(idade>=26){
                    print("O atleta é da categoria: Master");
                }
                print(" ");
                break;

            case "2":
                print("digite a idade do atleta:");
                var aIdade = int.parse(stdin.readLineSync()!);
                var result = aIdade <= 4 ? print("Essa idade não é permitida"): aIdade >=5 && aIdade<=7 ? print("O atleta é da categoria: Infantil A") : aIdade >=8 && aIdade <=10 ? print("O atleta é da categoria: Infantil A"): aIdade>=11 && aIdade<=13 ?  print("O atleta é da categoria: Juvenil A"): aIdade>=14 && aIdade<=17 ?  print("O atleta é da categoria: Juvenil B"): aIdade>=18 && aIdade<=25 ?  print("O atleta é da categoria: Adulto"): aIdade>=26 ?  print("O atleta é da categoria: Master"): "";
                result;
                break;

            case "3":
                print ("Digite o plano de trabalho do funcionario:");
                var lerPlano = stdin.readLineSync();
                print ("Digite o salario do funcionario:");
                var lerSalario = stdin.readLineSync();
                var salario = double.parse(lerSalario!);
                var salarioTotal = salario;
                switch(lerPlano){
                    case "A":
                    case "a":
                        salarioTotal = salario*1.1;
                        break; 
                    case "B":
                    case "b":
                        salarioTotal = salario*1.15; 
                        break;
                    case "C":
                    case "c":
                        salarioTotal = salario*1.2;
                        break;
                }
                print("O salario do funcionario será de: ${salarioTotal}");      
                break;

            case "4":
                print("Quantas tabuadas você deseja calcular?");
                var nTabuadas = int.parse(stdin.readLineSync()!);
                for(var x=1; x<=nTabuadas; x++){
                    print("----------------------");
                    print("Tabuada ${x} de ${nTabuadas}");
                    print("Digite a tabuada desejada:");
                    var nDaTabuada = int.parse(stdin.readLineSync()!);
                    print("Digite até quanto multiplicar:");
                    var nVezes = int.parse(stdin.readLineSync()!);
                    for(var y=1; y<=nVezes; y++){
                        var resultado = y*nDaTabuada;
                        print("${nDaTabuada} x ${y} = ${resultado}");
                    }
                }
                break;

            case "5":
                print("Multiplos de 3 entre 1 e 100");
                print("Digite C para vizualizar em ordem Crescente e D para vizualizar em ordem Decrescente");
                var resposta = stdin.readLineSync();
                switch(resposta){
                    case "c":
                    case "C":
                        for(var x=1; x<=100; x++){
                            if(x%3 == 0){
                                print(x);
                            }
                        }
                        break;
                    case "D":
                    case "d":
                        for(var x=100; x>=1; x--){
                            if(x%3 == 0){
                                print(x);
                            }
                        }
                        break;
                }
                break;

            case "6":
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
                print("A soma dos primeiros 50 numeros pares (contando com o 0) é : ${soma}"); 
                break;

            case "7":
                print("Digite um numero inteiro impar");
                var resposta = int.parse(stdin.readLineSync()!);
                if(resposta%2 != 0){
                    for(var x=0; x<=resposta; x++){
                        if(x%2 !=0){
                            print(x);
                        }
                    }
                }else{
                  print("O número digitado não é valido");
                }
                
                break;

            case "8":
                var todosValores = []; 
                var soma=0.0;
                for(var x=1; x<=10; x++){
                    print("Digite o ${x}° valor: ");
                    todosValores.add(double.parse(stdin.readLineSync()!));
                }
                for(var x=0; x<todosValores.length; x++){
                    soma += todosValores[x];
                }
                var media = soma/todosValores.length;
                print("A soma de todos os valores digitados é de ${soma} e a media desses valores é de ${media}");
                break;

            case "9":
                print("Digite um número inteiro e positivo");
                var resposta = int.parse(stdin.readLineSync()!);
                var somatoria = 0;
                var fatorial = resposta;
                if(resposta>0 && resposta%2 == 0 || resposta%2 == 1){
                    for(var x=0; x<=resposta; x++){
                        somatoria += x;
                    }
                    for(var x=1; x<resposta; x++){
                        fatorial = fatorial*x;
                    }
                    print("A somatoria eh de ${somatoria} e o fatorial é de ${fatorial}");
                }else{
                    print("O número digitado não é valido");
                }
                
                break;

            case "10":
                print("Digite um valor para o calculo do numéro harmonico");
                var resposta = int.parse(stdin.readLineSync()!);
                var h = 0.0;
                for(var x=1; x<=resposta; x++){
                    h += 1/x;
                }
                print("O numero harmonico é ${h.toStringAsFixed(4)}");
                w = 1;
                break;

            case "11":
                print("Digite o primeiro valor");
                var v1 = double.parse(stdin.readLineSync()!);
                print("Digite o segundo valor");
                var v2 = double.parse(stdin.readLineSync()!);
                var resultado = v1+v2;
                var respostaUsuario;
                do{
                    print("Resultado incorreto, tente outra vez");
                    print("Digite a soma de ${v1} com ${v2}:");
                    respostaUsuario = double.parse(stdin.readLineSync()!);
                   
                }while(respostaUsuario != resultado);
                if(respostaUsuario == resultado){
                    print("Resposta correta, parabens");
                }
                break;
            
            case "12":
                var todosOsValores = [];
                var resposta = "s";
                do{
                    print("Digite um numero");
                    todosOsValores.add(double.parse(stdin.readLineSync()!));
                    print("Gostaria de digitar mais um valor?");
                    print("S- Sim | N- Não");
                    resposta = stdin.readLineSync()!;
                }while(resposta == "s" || resposta == "S");
                var resultado = 0.0;
                for(var x=0; x<todosOsValores.length; x++){
                    resultado += todosOsValores[x];
                }
                resultado = resultado/todosOsValores.length;
                print("A media dos valores digitados é ${resultado}");
                break;

            case "13":
                var vetorValores = [];
                var media=0.0;
                print("Digite 0 para finalizar");
                do{
                    print("Digite um valor");
                    vetorValores.add(double.parse(stdin.readLineSync()!));
                    if(vetorValores[vetorValores.length-1] !=0.0){
                        media += vetorValores[vetorValores.length-1];
                    }
                }while(vetorValores[vetorValores.length-1] !=0.0);
                media = media/(vetorValores.length-1);
                print("A média de todos os valores digitados é de ${media}");
                break;

            case "14":
                print("Digite o primeiro valor inteiro");
                var valor1 = int.parse(stdin.readLineSync()!);
                print("Digite o segundo valor inteiro");
                var valor2 = int.parse(stdin.readLineSync()!);
                print("");
                var contador = valor1;
                do{
                    print(contador);
                    contador++;
                }while(contador <= valor2);
                break;

            case "15":
                var n=1;
                var maior = 0.0;
                var menor = 100000000.0;
                do{
                    print("Digite o ${n}° valor:");
                    var resposta = double.parse(stdin.readLineSync()!);
                    if(resposta>maior){
                        maior = resposta;
                    }
                    if(resposta<menor){
                        menor= resposta;
                    }
                    n++;
                }while(n <=7);
                print("O maior numero foi ${maior} e o menor foi ${menor}");

                break;

            case "0":
                print("Volte sempre!");
                w = 1;
                break;
        }
    }while(w != 1);
}
