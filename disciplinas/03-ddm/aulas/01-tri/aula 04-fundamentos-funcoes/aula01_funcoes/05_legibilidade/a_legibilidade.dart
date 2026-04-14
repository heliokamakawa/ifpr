import 'dart:io';

main(){

}

/*

Uma função tem que ter: (1) baixo acoplamento; (2) alta coesão; e (3) ser legível.

>>>>>>>LEBIBILIDADE<<<<<<<<
Definir nomes e codificar de modo que outras pessoas consigam entender.
O nome da função está relacionado ao seu objetivo?
O nome dos parâmetros sugere o conteúdo que será passado? 
Há definição de variáveis suficentes?
*/

void exemploFuncao(){                 // o nome desta função ajuda na compreensão do seu objetivo?
  double n1, n2, m;                   // o que é n1? n2? m?         
  var entrada = stdin.readLineSync(); // o que é necessário digiar aqui?
  if(entrada != null){
    n1 = double.parse(entrada);    
  } else {
    n1 = 0.00;
  }        
  m = (n1 + double.parse(stdin.readLineSync()!)) / 2;  // o que este código faz? Será que não seria melhor dividir a expressão para diminuir a complexidade e definir variáveis com nomes que ajude a entender o código?        
  if(m > 6){                        
    print('aprovado');                 
  } else {
    print('reprovado');
  }
}

/*
  melhorando a legibilidade
*/

// nome da função de acordo com o objetivo
// função com poucas linhas de acordo com o que se propõe a fazer
bool verificarAprovacao(double nota1, double nota2){ // nome de acordo com o valor que será passado
  var media = calcularMedia(nota1,nota2); // definindo variáveis que ajude a entender o que está sendo realizado
  return media > 6;
}

double calcularMedia(double nota1, double nota2){ 
  var media = (nota1 + nota2) / 2;
  return media;
}

void interfaceVerificarAprovacao(){
  double nota1, nota2;
  stdout.write('1º nota: ');            
  var entrada = stdin.readLineSync(); 
  if(entrada != null){
    nota1 = double.parse(entrada);    
  } else {
    nota1 = 0.00;
  }
  stdout.write('2º nota: ');              
  nota2 = double.parse(stdin.readLineSync()!); 
  bool resultado = verificarAprovacao(nota1, nota2);          
  if(resultado){                        
    print('aprovado');                  
  } else {
    print('reprovado');
  }
}






