import 'dart:io';

main(){

}

/*

Uma função tem que ter: (1) baixo acoplamento; (2) alta coesão; e (3) ser legível.

>>>>>>>COESÃO<<<<<<<<
A função propõe o que faz?
A funcionalidade é clara? 
- clareza tem forte relação com objetivo único - por vezes amplo, mas único.

Escrita de uma frase de um texto:
(1) Escrever especificamente um argumento ajuda na coesão/clareza. 
(2) Uma frase com vários argumentos pode torna-la confusa/extensa.
Frase curta/objetiva ajuda na compreensão, na COESÃO.

Fazendo analogia: (1) o texto seria o software; (2) os paragrafos, as classes; e (3) as frases, as funções.

A função é coesa se realiza o que propõe com clareza e objetividade - UM ÚNICO OBJETIVO.
- Ajuda a entender o que a função faz;
- Facilita a manutenção;
- Facilita a localização do código; 
- Possibilita o reaprovamento;
*/

void verificarAprovacao(){ // esta função é coesa? Qual objetivo dela? Tem um único objetivo?
  double nota1, nota2, media;
  stdout.write('1º nota: ');            // objetivo 1 → faz a leitura dos dados...
  var entrada = stdin.readLineSync(); 
  if(entrada != null){
    nota1 = double.parse(entrada);    
  } else {
    nota1 = 0.00;
  }
  stdout.write('2º nota: ');              
  nota2 = double.parse(stdin.readLineSync()!); 
  media = (nota1 + nota2) / 2;          // objetivo 2 → calcula média
  if(media > 6){                        // objetivo 3 → verifica aprovação
    print('aprovado');                  // objetivo 4 → imprime resultado
  } else {
    print('reprovado');
  }
}

/*
  FUNÇÃO COESA
  Função coesa tem relação com clareza - o que a função faz? verifica aprovação 
  - relacionado ao nome da função definida;
  - conforme o que a função propõe fazer.
*/
bool verificarAprovacaoCoesa(double nota1, double nota2){ // agora a função relamente verifica aprovação
  var media = calcularMedia(nota1,nota2);
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
  bool resultado = verificarAprovacaoCoesa(nota1, nota2);          
  if(resultado){                        
    print('aprovado');                  
  } else {
    print('reprovado');
  }
}






