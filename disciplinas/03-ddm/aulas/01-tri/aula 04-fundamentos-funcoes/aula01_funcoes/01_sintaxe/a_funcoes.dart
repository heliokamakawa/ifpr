void main(List<String> arguments) {
  print('''
  obs: para executar este código: 
  (1) tem que ter a extensão Code Runner; 
  (2) habilitar Cude Runner: Run in Terminal; e 
  (3) selecionar a função main no arquivo dart_function.dart e clicar em Run Code
  ''');
  
  print('*** Exemplos de funções ***'); 
}

/*

  ** O que é Função?
  É um conjunto de comandos que realiza uma tarefa específica.
  A ideia básica de uma função é encapsular/modularizar/concentrar um conjunto de código que pode ser chamado por qualquer outro trecho de código.
  Função representa uma tarefa a ser executada → podemos chamar quantas vezes forem necessárias.
  exemplo de função: main e print

  ** o que é Top Level Function
  Uma função independente de qualquer hierarquia de classe ou função.
  Podem ser chamadas diretamente, sem a necessidade de criar nenhum objeto ou chamar qualquer classe ou função. 

  ** Sintaxe para definir uma função
  tipoRetorno nomeFunção ([parâmetros]){
    [...] → codigo
    [return valor] → se a função tiver retorno
  }
  
  **sintaxe para chamar uma função
  nomeFunção([parâmetors]);

  var valor = nomeFunção([parâmetors]); → somente se tiver retorno

  print('o valor é ${nomeFunção([parâmetors])}') → somente se tiver retorno

  outraFuncao(nomeFunção([parâmetors])); → uma função que recebe como parâmetro uma outra função


  ** Variantes de uma função
  → sem retorno e sem parâmetro
  → sem retorno e com parâmetro
  → com retorno e sem parâmetro 
  → com retorno e com parâmetro

  */

  
  /*
  chamada da função print
  uma função da biblioteca - não definimos
  é um top level function - chamamos sem a necessidade de criar um objeto 
  */

