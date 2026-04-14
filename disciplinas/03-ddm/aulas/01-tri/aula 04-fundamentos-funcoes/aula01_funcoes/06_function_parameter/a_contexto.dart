import 'dart:io';

/*
>>> Contexto de Aplicação <<<
Antes de aprender a respeito de funções anônimas,
é importante entender onde e quando podemos utilizar este recurso

Um cenário comum em utilizar uma Função Anônima é definindo em uma função "container" que possui um parâmetro do tipo função. 
Assim, o primeiro passo é entender em que caso é necessário ter uma função com parâmetro do tipo função.

Exemplo:
Imagine uma função para verificar a aprovação mediante 2 notas. 
Considere a situação em que cada professor tem uma forma de considerar a nota de aprovação.

Por exemplo, professores podem considerar:
→ pela media
→ pela maior nota
→ pela menor nota

Na função abaixo conseguimos definir tudo que foi "previsto" antes de deteminar uma função.
A questão é, se tiver outras formas de definiar a nota "não prevista"?
*/

String verificarAprovacaoCompleto(int escolha, double nota1, double nota2){
  if(escolha == 1){
    double media = (nota1 + nota2) / 2;
    if(media >= 6){
      return 'aprovado';
    }else{
      return 'reprovado';
    }
  }else if(escolha == 2){
      double maior = nota1;
      if(nota2 > nota1){
        maior = nota2;
      } 
      if(maior >= 6){
        return 'aprovado';
      }else{
        return 'reprovado';
      }
    } else {
      double menor = nota1;
      if(nota2 < nota1){
        menor = nota2;
      } 
      if(menor >= 6){
        return 'aprovado';
      }else{
        return 'reprovado';
      }
    }
}
/*
Antes de mais nada, vamos organizar o nosso código.
Definir tudo em uma única função pode torná-la complexa, difícil de entender e dar manutenção.
Devemos tomar cuidado com: (1) a quantidade de linhas; (2) a unidade lógica; e (3) na modularização.
*/

// função de interface para o terminal
void main()  { 
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
  print(verificarAprovacao(escolha, n1, n2));
}

//função que verifica aprovação
String verificarAprovacao(int escolha, double nota1, double nota2){
  if(escolha == 1){ 
      return  calcularMedia(nota1, nota2);
    }else if(escolha == 2){
      return calcularMedia(nota1, nota2);
    } else {
      return calcularMaiorNota(nota1, nota2);
    }
}//  >>>>>desta forma soluciona um contexto predefinido/preconhecido... e se haver outras formas não conhecidas?

//função que definie a nota pela média
String calcularMedia(double nota1, double nota2){
  double media = (nota1 + nota2) / 2;
  if(media >= 6){
    return 'aprovado';
  }else{
    return 'reprovado';
  }
}

//função que define a nota pela maior nota
String calcularMaiorNota(double nota1, double nota2){
  double maior = nota1;
  if(nota2 > nota1){
    maior = nota2;
  } 
  if(maior >= 6){
    return 'aprovado';
  }else{
    return 'reprovado';
  }
}

//função que define a nota pela menor nota
String calcularMenorNota(double nota1, double nota2){
  double menor = nota1;
  if(nota2 < nota1){
    menor = nota2;
  } 
  if(menor >= 6){
    return 'aprovado';
  }else{
    return 'reprovado';
  }
}

/*
Veja que apesar de termos organizado o código, continuamos com o problema
E se tiver outras formas de calcular nota não previstas? 
A função verificarAprovacao precisa de dados (nota1 e nota2) e também de um ação (definir nota) para realziar sua tarefa!!!!
As notas são os dados que comumente utilziamos e definmos como parâmetros na função...
Agora, definir nota não é um parâmetro de dado e sim de AÇÃO! Ou seja, é um parâmetro do TIPO FUNÇÃO!
Veja a solução no próximo arquivo!

Atividade I
Conseguiu entender o contexto? Explique.

Atividade II - Defina 3 funções do mesmo contexto e um menu para estas funções
Nesta prática, eu já estou definindo o contexto. Assim, o objetivo é você entender e treinar a sintaxe.
→ Receber salario e um valor. Adicionar o valor no salário e informar o % adicioando em relação ao salário.
→ Receber salario e um valor. Descontar o valor no salário e informar o % descontado em relação ao salário.
→ Receber salario e um valor. Neste caso o valor é o bônus que tem encargo de 10%. Adicionar o bônus (já com o desconto do encargo) no salário e informar o % adicioando em relação ao salário.
→ Menu para acesso das funções

Atividade III
Nesta atividade, o objetivo é fazer com que você elabore o contexto para que consiga aprofundar o conhecimento.
Pensar em um projeto único 
Fazer um exemplo seu
Fazer comentários de tudo que entendeu
*/
