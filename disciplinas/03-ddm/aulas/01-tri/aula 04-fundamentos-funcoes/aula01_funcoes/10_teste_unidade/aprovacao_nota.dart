
import 'dart:io';

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
    aprovado = verificarAprovacao(nota1: n1, nota2: n2,caclularNota: calcularMedia); 
  }else if(escolha == 2){
    aprovado = verificarAprovacao(nota1: n1, nota2: n2,caclularNota: (double nota1, double nota2){ 
      double maior = nota1;
      if(nota2 > nota1) maior = nota2;
      return maior;
    });
  } else {
    aprovado = verificarAprovacao(nota1: n1, nota2: n2,caclularNota: (){ 
      n1 = n1 * 2; // nota1 tem peso 2
      double media = (n1 + n2) / 3;
      return media;
    });
  }
  print( aprovado ? 'aprovado' : 'reprovado' );
}

bool verificarAprovacao({required double nota1,required double nota2,required Function caclularNota}){
  validarNota(nota1: nota1, nota2: nota2);
  double nota = caclularNota(nota1,nota2);
  return (nota >= 6);
}

double calcularMedia({required double nota1,required double nota2}){
  validarNota(nota1: nota1, nota2: nota2);
  double media = (nota1 + nota2) / 2;
  return media;
}

double calcularMaiorNota(double nota1, double nota2){
  validarNota(nota1: nota1, nota2: nota2);
  double maior = nota1;
  if(nota2 > nota1) maior = nota2;
  return maior;
}

double calcularMenorNota(double nota1, double nota2){
  validarNota(nota1: nota1, nota2: nota2);
  double menor = nota1;
  if(nota2 < nota1) menor = nota2;
  return menor;
}

void validarNota({required double nota1,required double nota2,double limiteNota = 10}){
  var notaMinima = 0.0;
  if(nota1 < notaMinima || limiteNota > 10){
    throw Exception('A nota1 deverá ser de 0 a 10.');
  }
  if(nota2 < notaMinima || limiteNota > 10){
    throw Exception('A nota2 deverá ser de 0 a 10.');
  }
}

/*
TESTE UNIDADE
Testa uma única função, método ou classe;
- O objetivo é verificar a exatidão de uma unidade de lógica sob uma variedade de condições;
- As dependências externas da unidade em teste geralmente são simuladas;
- Os testes de unidade geralmente não lêem ou gravam no disco, 
renderizam na tela ou recebem ações do usuário de fora do processo que executa o teste;
- Para obter mais informações sobre testes de unidade, podemos executar "dart test –help" em seu terminal.

FIRST
Fast: Os testes devem rodar rápido;
Independent: Não deve existir dependência entre os testes, eles devem poder ser executados de forma isolada;
Repeatable: O resultado deve ser o mesmo, independente da quantidade de vezes que seja executado;
Self-validating: O próprio teste deve ter uma saída bem definida que é válida ou não fazendo com que ele passe ou falhe.
Timely: Os testes devem ser escritos antes do código-fonte (Teste-Drien Development)

Flutter.dev
https://docs.flutter.dev/cookbook/testing/unit/introduction

Pub.dev
https://pub.dev/packages/test


Teste de Unidade em Dart/Flutter
- Adicione a dependência test ou .flutter_test
- Crie um arquivo de teste.
- Crie uma classe/função para testar.
- Escreva um test para a classe/função.
- Execute os testes. 
    1-run code ide; 
    2-run em cima da função; ou 
    3-terminal dart .\test\pacote\arquivo_teste.dart

sintaxe: 
test('descrição', () {
  expect(chamada da função, resultado esperdado);
});

>>>teste de exceção
test('descrição', () {
  expect(() => chamada da função, throwsException);
});

>>>agrupando testes
group('teste cálculo média', (){

}

- Combine vários testes em um arquivo com o group.
- Execute todos os testes - vários arquivos. (run - dart test)
*/
