import 'dart:io';

/*
>>> Parâmetros do tipo função <<<
Nesta parte da aula é importante que você entenda: O que são, para que servem  e quando pode-se definir uma Function Parameters (parâmetros do tipo função).

Agora que entendemos o contexto aplicável, vamos para o próximo passo, Function Parameters. 
Qaundo utilizamos? No contexto em que precisamos de uma ação, sabemos "o que" (objetivo) é precisa fazer, mas não sabemos "como" (implementação).
Exemplo: 
   A função verificarAprovação precisa definir uma nota para que seja possível verificar a aprovação. 
   Sabemos "o que" é preciso ser feito, que no caso é definir nota.
   Porém, não sabemos exatamente "como", visto que, cada professor pode fazer de uma forma.

Neste contexto, pode-se definir um parâmetro do tipo de função para a função verificarAprovação.
Vantagem? Permite adiar a definição de uma ação.
Neste arquivo, vamos definir o parâmetro do tipo função e para executar, utilizaremos uma função nomeada.
*/

//definindo uma função que tem um parâmetro do tipo função (definir nota)
bool verificarAprovacao(double nota1, double nota2, Function definirNota){
    double nota = definirNota(nota1,nota2);
    return (nota >= 6);
}

//função main que coleta dados via terminal e chama a função
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
    aprovado = verificarAprovacao(n1, n2, calcularMedia); //definindo a ação "aprovacaoMedia" na chamada da função verificarAprovacao
  }else if(escolha == 2){
    aprovado = verificarAprovacao(n1, n2, calcularMaiorNota); //definindo a ação "aprovacaoMaiorNota" na chamada da função verificarAprovacao
  } else {
    aprovado = verificarAprovacao(n1, n2, calcularMenorNota); //definindo a ação "aprovacaoMenorNota" na chamada da função verificarAprovacao
  }
  print( aprovado ? 'aprovado' : 'reprovado' );
}

//função nomeada que define nota pela média
double calcularMedia(double nota1, double nota2){
  double media = (nota1 + nota2) / 2;
  return media;
}

//função nomeada que define nota pela maior nota
double calcularMaiorNota(double nota1, double nota2){
  double maior = nota1;
  if(nota2 > nota1) maior = nota2;
  return maior;
}

//função nomeada que define nota pela menor nota
double calcularMenorNota(double nota1, double nota2){
  double menor = nota1;
  if(nota2 < nota1) menor = nota2;
  return menor;
}

/*
Atividade I 
1) Qual a diferença em relação ao código do arquivo anterior? Na sua opinão, o que melhorou e o que piorou?
2) O que é e para que serve parâmtros do tipo função? Em que caso utilizamos?
3) O que é função nomeada? Para que serve? Quando utilizamos?
R: Uma função nomeada é um conjunto de código que realiza uma ação em que possui um nome - assim torna-se possível invocá-la pelo nome.
Definimos uma função nomeada, quando previamente sabemos o que se deve fazer.

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
