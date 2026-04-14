import 'dart:io';

void main(List<String> arguments) {
  print('\n***exemplo de função com parâmetro nomeados***');
  /*
  parâmetros em que há a descrição, melhorando a legibilidade e permitindo 
  a definição dos parâmetros em ordem aleatória
  */

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
  na chamada da função com parâmetros nomeados
  → veja que a média é opcional
  */      
  valor = verificarAprovacaoComParametrosNomeados(nota1 : 6, nota2 : 8);   
  print(valor);  

  /*
  na chamada da função com parâmetros nomeados
  → definindo a média que é um valor opcional
  */      
  valor = verificarAprovacaoComParametrosNomeados(nota1 : 6, nota2 : 8, media: 7);   
  print(valor); 
  
  /*
  na chamada da função com parâmetros nomeados
  → veja que não é necessário informar os parâmetros na ordem
  */      
  valor = verificarAprovacaoComParametrosNomeados(nota2 : 5, media: 7, nota1 : 6);   
  print(valor);    
  
  /*
  na chamada da função com parâmetros nomeados e anônimos 
  → não passamos a nota2 e a média - são opcionais
  */   
  valor = verificarAprovacaoComParametrosNomeadosEAnonimos(5);   
  print(valor);    
  
  /*
  na chamada da função com parâmetros nomeados e anônimos   
  → passando a nota 2
  */ 
  valor = verificarAprovacaoComParametrosNomeadosEAnonimos(5, nota2:7);   
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
Parâmetros nomeados
Define-se parâmetros nomeados por meio de {}
Por padrão os parâmetros nomeados são OPCIONAIS - assim é necessário definir o valor padrão
Para tornar parâmetros nomeados obrigatórios utilizamos a palavra chave "required"
O objetivo dos parâmetros nomeados é tornar a leitura mais claro 
Com parâmetros nomeados, na chamada da função, podemos definir a ordem aleatória dos parâmetros
*/
String verificarAprovacaoComParametrosNomeados({required double nota1, required double nota2, double media = 6}){
  double nota =  (nota1 + nota2) / 2;
  if(nota > media){
    return 'aprovado';
  }else{
    return 'reprovado';
  }
}


String verificarAprovacaoComParametrosNomeadosEAnonimos(double nota1, {double nota2 = 0, double media = 6}){
  double nota;
  if(nota2 == 0){
    nota = nota1;
  }else{
    nota =  (nota1 + nota2) / 2;
  }
  if(nota > media){
    return 'aprovado';
  }else{
    return 'reprovado';
  }
}

