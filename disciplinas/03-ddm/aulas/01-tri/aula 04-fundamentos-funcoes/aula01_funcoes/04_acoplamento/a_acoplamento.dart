import 'dart:io';

main(){

}

/*
Uma função tem que ter: (1) baixo acoplamento; (2) alta coesão; e (3) ser legível.
*/

/*
>>>>>>>ACOPLAMENTO<<<<<<<<
Grau de dependência
Quanto menor acoplamento, a função é mais independente, e assim, com maior possibilidade de reaproveitamento 
Termo que utilizamos 
Acoplamento Forte - quando o acoplamento (a dependência) é maior.
Acoplamento Fraco - quando o acoplamento (a dependência) é menor.

É muito comum que haja acoplamento, mas a questão é o "nível" da dependência.
*/

void verificarAprovacaoAcoplamentoForte(){ // esta função é acoplada - NÃO É BOM
  double nota1, nota2, media;
  stdout.write('1º nota: ');   
  /*
  - Esta função depende de uma leitura via terminal - assim, só funcionará no terminal;
  - Como está associado a terminal não será possível aproveitar a função em outras plataformas (web, mobile, desktop, outros)    
  */   
  var entrada = stdin.readLineSync(); 
  if(entrada != null){
    nota1 = double.parse(entrada);    
  } else {
    nota1 = 0.00;
  }
  stdout.write('2º nota: ');              
  nota2 = double.parse(stdin.readLineSync()!); 
  media = (nota1 + nota2) / 2;
  if(media > 6){
    print('aprovado'); //uso do print para saída aumenta o acoplamento
  } else {
    print('reprovado');
  }
}

 
bool verificarAprovacaoAcoplamentoFraco(double nota1, double nota2){ 
  /*
  Esta função recebe os dados necessários via parâmetro e ao invés de imprimir, retorna o resultado,
  tornando-a possível aproveitar a função em outras plataformas (web, mobile, desktop, outros)    
  */  
  var media = (nota1 + nota2) / 2;
  return media > 6;
}


