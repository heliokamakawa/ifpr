import 'dart:io';

main(){
  //testeExemplo01();
  //testeExemplo02();
  testeExemplo03();
}

/*
NULL-SAFETY
- Agora o dart é null-safety
- Por padrão o atributo não pode ser nulo
- Assim uma forma é fazer a atribuição na definição da variável
*/

class Bola{
  int tamanho = 7;
  String tipo = 'futebol';
  bool disponivel = true;
}

void testeBola(){
  var bola = Bola();
  bola.tamanho = int.parse(stdin.readLineSync()!);
  bola.tipo = stdin.readLineSync()!;
  //neste contexto se esquecermos de solicitar o dado eValido o valor pode estar errado
  print(bola.disponivel);
}


/*
Nem sempre sabemos o valor na definição da classe. Exemplo: aluno{ra, nome, ativo}
NULL-SAFETY com inicialização no construtor
*/
class Aluno{
  int registroAcademico;
  String nome;
  bool ativo;

  Aluno(this.registroAcademico, this.nome, this.ativo);
}

void testeAluno(){
  /*
  desta forma não corremos o risco de esquecer de solicitar o valor de um atributo
  porém não há como instanciar o objeto da classe sem os valores
  var aluno = Aluno();
  aluno.registroAcademico = int.parse(stdin.readLineSync()!);
  aluno.nome = stdin.readLineSync()!;
  */
  
  //assim é preciso criar o objeto somente depois ter os dados
  var registroAcademico = int.parse(stdin.readLineSync()!);
  var nome = stdin.readLineSync()!;
  var ativo = stdin.readLineSync()!.toUpperCase() == "S";

  var aluno = Aluno(registroAcademico, nome, ativo);
}

/*
Late variables - uma solução para quando não sabemos o valor inicial na definição da classe 
https://dart.dev/null-safety/understanding-null-safety#late-variables
*/
class AlunoComLate{
  late int registroAcademico;
  late String nome;
  late bool ativo;
}

void testeExemplo03(){
  var aluno = AlunoComLate();

  aluno.registroAcademico = int.parse(stdin.readLineSync()!);
  aluno.nome = stdin.readLineSync()!;
  aluno.ativo = stdin.readLineSync()!.toUpperCase() == "S";

  print(aluno.nome);
}

  