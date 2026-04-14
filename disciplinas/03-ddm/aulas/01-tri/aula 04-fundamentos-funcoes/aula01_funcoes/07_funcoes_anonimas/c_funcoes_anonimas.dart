import 'dart:io';
/*
>>> Anonymous Function - Funções Anônimas <<<
Nesta parte da aula é importante que você entenda:
→ A diferença entre funções nomeadas e anônimas. Além da sintaxe, o importante é aprender o contexto aplicável.
→ O que é, sintaxe, quando utilizamos, vantagens e o que é necessário para trabalhar com Funções Anônimas.

O que é? 
  Funções sem nome. 
  Como não tem nome, não pode ser chamada.
  Não pode ser executada em mais de um ponto.
  Não pode ser reaproveitada.
Sintaxe? 
  A mesma de uma função comum, porém sem o nome e sem a definição explícita do tipo de retorno.
Quando utilizamos? 
  Geralmente para definir uma ação previamente desconhecida que não precisa ser reaproveitada.
  Com a sintaxe mais enxuta, é mais rápido e fácil de implementar.
  Conforme o contexto, ajuda na legibilidade do código.
Pré-requisito? 
  Necessário ter uma função com o parâmetro do tipo função.
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
    //definindo ação com função nomeada - uma ação que previamente era conhecido
    aprovado = verificarAprovacao(n1, n2, calcularMedia); 
  }else if(escolha == 2){
    //refazendo a função nomeada verificarMaiorNota em função anônima - somente para comparar e entender a sintaxe
    aprovado = verificarAprovacao(n1, n2, (double nota1, double nota2){ 
      double maior = nota1;
      if(nota2 > nota1) maior = nota2;
      return maior;
    });
  } else {
    /*
    Definindo uma ação dinâmica verificar aprovação com peso
    aqui pode-se notar a vantagem de definir uma parâmetro do tipo função.
    Pois, na chamada de verificarAprovação, podemos definir uma ação que antes não era conhecida.
    Neste caso estamos verificando a aprovação com peso.
    Com a definição de um parâmetro de função, damos a liberdade de definir qualquer ação não prevista.
    */
    aprovado = verificarAprovacao(n1, n2, (){ 
      n1 = n1 * 2; // nota1 tem peso 2
      double media = (n1 + n2) / 3;
      return media;
    });
  }
  print( aprovado ? 'aprovado' : 'reprovado' );
}

bool verificarAprovacao(double nota1, double nota2, Function caclularNota){
    double nota = caclularNota(nota1,nota2);
    return (nota >= 6);
}

double calcularMedia(double nota1, double nota2){
  double media = (nota1 + nota2) / 2;
  return media;
}

double calcularMaiorNota(double nota1, double nota2){
  double maior = nota1;
  if(nota2 > nota1) maior = nota2;
  return maior;
}

double calcularMenorNota(double nota1, double nota2){
  double menor = nota1;
  if(nota2 < nota1) menor = nota2;
  return menor;
}

/*
Atividade I 
1) Qual a diferença em relação ao código anterior? Na sua opinão, o que melhorou e o que piorou?
2) Entendeu melhor o objetivo do parâmetro do tipo função?
3) O que é e para que serve uma função anônima?
4) Qual a diferença entre função anônima e nomeada? Em qual situção utilizamos cada uma? Pode-se utilizar ambas no mesmo contexto? Explique.

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



