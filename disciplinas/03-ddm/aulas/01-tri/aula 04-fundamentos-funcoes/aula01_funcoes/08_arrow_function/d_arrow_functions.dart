import 'dart:io';

/*
>>> Arrow Function <<<
  Arrow - significa seta (=>) 
  Function - significa função
  
Nesta parte da aula é importante que você entenda:
  O que é, sintaxe, quando utilizamos, vantagens, cuidados e o que é necessário para trabalhar com Arrow Function.
O que é? 
  É uma função anônima com um único comando.
Objetivo? 
  Reduzir a sintaxe e faciliar a escrita.
Sintaxe? A mesma de uma função anônima, porém como só tem um único comando não precisa sinalizar o: 
  (1) Final do comando ";".
  (2) Bloco de comando da função "{}".
  (3) Retorno "return".
Exemplo: (função que retorna a soma)
  () => x + y   
  >>>veja que não tem ";", "{}" e "return"
Vantagem?
  Como a sintaxe é reduzida, pode-se definir em uma única linha.
  Conforme a implementação ajuda na legibilidade do código.
Pré-requisito? 
  Prática para acostumar com a sintaxe.
Cuidado!!!
  Conforme a implementação pode comprometer a legibilidade.
*/

void main(List<String> arguments) {
  print('''
    Escolha uma opção: 
    (1) - verificar aprovação pela média;
    (2) - verificar aprovação pela maior nota; e
    (3) - verificar aprovação pela menor nota.
  ''');
  int escolha = int.parse(stdin.readLineSync()!);
  print('Informe a 1º nota:');
  double n1 = double.parse(stdin.readLineSync()!);
  print('Informe a 2º nota:');
  double n2 = double.parse(stdin.readLineSync()!);
  bool aprovado;
  if(escolha == 1){
    aprovado = verificarAprovacao(n1, n2, () => ( (n1 + n2) / 2) );        //exemplo arrow function
  }else if(escolha == 2){
    aprovado = verificarAprovacao(n1, n2, () => ( (n1 > n2) ? n2 : n1)  ); //exemplo arrow function
  } else {
    aprovado = verificarAprovacao(n1, n2, () => ( (n1 < n2) ? n2 : n1) );  //exemplo arrow function
  }
  print( aprovado ? 'aprovado' : 'reprovado' );
}

bool verificarAprovacao(double nota1, double nota2, Function caclularNota){
    double nota = caclularNota(nota1,nota2);
    return (nota >= 6);
}

/*
Atividade I 
1) Qual a diferença em relação ao código anterior? Na sua opinão, o que melhorou e o que piorou?

Atividade II - Defina 3 funções do mesmo contexto e um menu para estas funções
Nesta prática, eu já estou definindo o contexto. Assim, o objetivo é você entender e treinar a sintaxe.
→ Receber salario e um valor. Adicionar o valor no salário e informar o % adicioando em relação ao salário.
→ Receber salario e um valor. Descontar o valor no salário e informar o % descontado em relação ao salário.
→ Receber salario e um valor. Neste caso o valor é o bônus que tem encargo de 10%. Adicionar o bônus (já com o desconto do encargo) no salário e informar o % adicioando em relação ao salário.
→ Menu para acesso das funções

Atividade III
Nesta atividade, o objetivo é fazer com que você entenda o contexto.
Pensar em um projeto único 
Fazer um exemplo seu
Fazer comentários de tudo que entendeu
*/
