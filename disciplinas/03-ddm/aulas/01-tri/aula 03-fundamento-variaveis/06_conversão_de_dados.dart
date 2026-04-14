import 'dart:io';

void main(List<String> arguments) {
  print('sample data conversion');
  var nomeProduto;
  print('informe o nome do produto:');                //imprimindo o que é desejado
  nomeProduto = stdin.readLineSync();                 //amazendo a leitura em nomeProduto
  print('o nome digitado foi $nomeProduto');          //imprimindo o resultado
  var entrada;
  print('informe o preço do produto:');               //imprimindo o que é desejado
  entrada = stdin.readLineSync();                     //declarando e amazendo a leitura na variável
  var precoProduto = double.parse(entrada);           //convertendo a String para double
  print('o nome digitado foi $precoProduto');         //imprimindo o resultado
  print('informe a quantidade do produto:');          //imprimindo o que é desejado
  entrada = stdin.readLineSync();                     //declarando e amazendo a leitura na variável
  var quantidadeProduto = int.parse(entrada);         //convertendo a String para int
  print('o nome digitado foi $quantidadeProduto');    //imprimindo o resultado
  var valor1 = 10; 
  var valorString1 = valor1.toString();                 //convertendo a int para String
  var valor2 = 10.3; 
  var valorString2 = valor2.toString();                 //convertendo a double para String
  
}