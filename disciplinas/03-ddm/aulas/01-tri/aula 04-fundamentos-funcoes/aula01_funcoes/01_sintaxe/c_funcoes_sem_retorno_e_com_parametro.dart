import 'dart:io';

void main(List<String> arguments) {
  print('\n***exemplo de função sem retorno e com parâmetro***');
   /*
  as funções sem retorno e com parâmetros são muito utilizadas para definir módulos locais 
  com abertura de passagem de parâmetro
  */

  //coletando dados
  stdout.write('1º nota: ');              
  double nota1 = double.parse(stdin.readLineSync()!); 
  stdout.write('2º nota: ');              
  double nota2 = double.parse(stdin.readLineSync()!); 

  //chamada da função sem retorno e sem parâmetro que definimos logo abaixo...
  verificarAprovacao(nota1, nota2); 

  /*
  *ERRO de sintaxe - atribuição em uma variável da nossa função que não tem retorno
  var valor = calcularMedia();
  */
}

//definindo uma função sem retorno e sem parâmetro
void verificarAprovacao(double nota1, double nota2){
  double media = (nota1 + nota2) / 2;
  if(media > 6){
    print('aprovado');
  } else {
    print('reprovado');
  }
}

/*
Responda:
A nota1 da função show é o mesmo do parâmetro de calcularMedia? 
Se mudarmos o nome da variável nota1 da função show para valor1, será necessário também mudar o nome do parâmetro em calcularMedia?
*/
