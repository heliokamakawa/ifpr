import 'dart:io';

void main(List<String> arguments) {
  print('\n***exemplo de função parâmetos opcionais***');
  // Úteis quando o parâmetro em vários casos tem um valor padrão

  //coletando dados
  stdout.write('1º nota: ');              
  double nota1 = double.parse(stdin.readLineSync()!); 
  stdout.write('2º nota: ');              
  double nota2 = double.parse(stdin.readLineSync()!); 

  /*
  na chamada da função verificarAprovacao:
  (1) somos obrigados a informar todos os parâmetros
  (2) somos obrigados e informar na sequência correta
  */
  var valor = verificarAprovacao(nota1, nota2, 6);  
  print(valor);     

  /*
  na chamada da função verificarAprovacaoComValorPadrao:
  (1) o parâmetro mediaAprovacao é opcinal - repare que ele está circundado com []
  (2) quando não informamos o valor padrão é 6 - conforme definido na declaração
  (3) se necessário, pode-se informar uma outra média
  */      
  valor = verificarAprovacaoComMediaPadrao(nota1, nota2);   
  print(valor);  

  /*
  nesta chamada da função verificarAprovacaoComMediaPadrao
  definimos mediaAprovacao para 7
  */
  valor = verificarAprovacaoComMediaPadrao(nota1, nota2, 7);   
  print(valor);                                           
}


//definindo uma função com retorno e com parâmetro
String verificarAprovacao(double nota1, double nota2, double media){
  double nota =  (nota1 + nota2) / 2;
  if(nota > media){
    return 'aprovado';
  }else{
    return 'reprovado';
  }
}

/*
O Dart tem dois tipos de parâmetros: posicionais e nomeados.
O parâmetros posicionais são os que comumente utilizamos.
Por padrão, na chamada da função os parâmetros posicionais são obrigatórios.
Porém, podemos torar os parâmetros posicionais opcionais. 
Para tornar o parâmetro opcional, deve-se definir o valor padrão e circundar a declaração com "[]"
IMPORTANTE: Parâmetros opcionais só podem ser declarados após quaisquer parâmetros obrigatórios.
Visto que, definir antes dos parâmetros obrigatórios, impede a identificação dos valores na chamada da função.
*/
String verificarAprovacaoComMediaPadrao(double nota1, double nota2, [double mediaAprovacao=6]){
  /*
  Nesta função, o parâmetro posicional mediaAprovacao é opcional
  na chamada da desta função:
  - podemos passar o valor que desejamos da mediaAprovacao 
  - porém, se a mediaAprovacao não for informada, o valor, por padrão será 6
  */
  double media =  (nota1 + nota2) / 2;
  if(media >= mediaAprovacao){
    return 'aprovado';
  }else{
    return 'reprovado';
  }
}

//Podemos declarar vários parâmetros opcionais
String verificarAprovacaoComValorPadrao(double nota1, double nota2, int percetualPresenca, [double mediaAprovacao=6, int percetualMinimaPresenca=75]){
  /*
  Nesta função, temos 2 parâmetros posicionais opcionais: mediaAprovacao e percetualMinimaPresenca
  na chamada da desta função:
  - podemos passar o valor que desejamos da média 
  - porém, se a media não for informada, o valor, por padrão será 6
  */
  double media =  (nota1 + nota2) / 2;
  if(media >= mediaAprovacao && percetualPresenca >= percetualMinimaPresenca){
    return 'aprovado';
  }else{
    return 'reprovado';
  }
}

/* 
>>>Declaração ERRADA<<<
estamos definindo um parâmetro opcional antes dos parâmetros obrigatórios

String verificarAprovacaoComValorPadrao([double media=6], double nota1, double nota2){
  double nota =  (nota1 + nota2) / 2;
  if(nota > media){
    return 'aprovado';
  }else{
    return 'reprovado';
  }
}

>>>Declaração ERRADA<<<
estamos definindo um parâmetro opcional antes dos parâmetros obrigatórios
String verificarAprovacaoComValorPadrao(double nota1, [double media=6], double nota2){
  double nota =  (nota1 + nota2) / 2;
  if(nota > media){
    return 'aprovado';
  }else{
    return 'reprovado';
  }
}
*/

