void main(List<String> arguments) {
  print('sample dynamic variables');
  //para definir uma variável de tipo dinânimco: dynamic nome_variável = atribuição;
  dynamic produto = "Ferrero Rocher";     //é uma String
  print('nome: $produto');
  produto = 'chocolate';                  //agora é uma String
  print('descrição: $produto');
  produto = 27.2;                         //agora é um double
  print('preço: $produto');
  produto = 3;                            //agora é um inteiro
  print('quantidade: $produto');
  produto = true;                         //agora é um booleano
  print('disponível: $produto');
}

