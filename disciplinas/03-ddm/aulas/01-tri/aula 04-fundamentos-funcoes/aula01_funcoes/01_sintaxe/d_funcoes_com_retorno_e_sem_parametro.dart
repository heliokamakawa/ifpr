import 'dart:io';

void main(List<String> arguments) {
  print('\n***exemplo de função com retorno e sem parâmetro***');
  //geralmente utilizadas especificamente em um módulo

  //chamada da função sem retorno e sem parâmetro que definimos logo abaixo...
  verificarAprovacao(); 
  print('geralmente, em funções com retorno é necessário armazenar o valor e realizar a saída');
  var valor = verificarAprovacao(); //pegando a referência da saída 
  print(valor);                     //gerando saída

  //funções com retorno podem ser utilizadas direto na interpolação
  print('O aluno está ${verificarAprovacao()}'); 
}

//definindo uma função com retorno e com parâmetro
String verificarAprovacao(){
  //coletando dados
  stdout.write('1º nota: ');              
  double nota1 = double.parse(stdin.readLineSync()!); 
  stdout.write('2º nota: ');              
  double nota2 = double.parse(stdin.readLineSync()!); 
  double media = (nota1 + nota2) / 2;
  if(media > 6){
    return 'aprovado';
  }else{
    return 'reprovado';
  }
}
