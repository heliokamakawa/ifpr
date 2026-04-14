import 'dart:io';

void main(List<String> arguments) {
  print('\n***exemplo de função com retorno e com parâmetro***');
  /*
  muito versáteis, são definidas para definir vários módulos do sistema 
  Exemplo: cálculos, pool de funções, aplicação de regras de negócio, validções, outros...
  */

  //coletando dados
  stdout.write('1º nota: ');              
  double nota1 = double.parse(stdin.readLineSync()!); 
  stdout.write('2º nota: ');              
  double nota2 = double.parse(stdin.readLineSync()!); 

  //chamada da função sem retorno e sem parâmetro que definimos logo abaixo...
  verificarAprovacao(nota1, nota2); 
  print('geralmente, em funções com retorno é necessário armazenar o valor e realizar a saída');
  var valor = verificarAprovacao(nota1, nota2); //pegando a referência da saída 
  print(valor);                                 //gerando saída

  //funções com retorno podem ser utilizadas em interpolação
  print('O aluno está ${verificarAprovacao(nota1, nota2)}'); 
}

//definindo uma função com retorno e com parâmetro
String verificarAprovacao(double nota1, double nota2){
  double media =  (nota1 + nota2) / 2;
  return (media > 6) ? 'aprovado' : 'reprovado';

  /*linha 26 é equivalente ao código abaixo
  if(media >6){
    return 'aprovado';
  }else{
    return 'reprovado';
  }
  */
}

