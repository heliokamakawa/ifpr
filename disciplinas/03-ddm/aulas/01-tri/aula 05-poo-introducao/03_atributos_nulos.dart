import 'dart:io';

main(){
  //criando objeto
  var aluno = Aluno();

  //atribuindo valor em registroAcademico             
  aluno.registroAcademico = int.parse(stdin.readLineSync()!);  

  //atribuindo valor em nome 
  aluno.nome = stdin.readLineSync();         

  //imprimindo o atributo registroAcademico
  print(aluno.registroAcademico); 

  //acessando o atributo nome
  var nomeAluno = aluno.nome;   

  //imprimindo variável  
  print(nomeAluno);               
}

/*
NULL-SAFETY
- Agora o dart é null-safety
- Para que possa definir um atributo que seja nulo é preciso colocar "?" após o tipo

NOME ATRIBUTO
- Defina nomes compreensíveis e que represente o valor que irá conter
- Para definir o nome utilizamos o padrão lowerCamelCase
- https://dart-lang.github.io/linter/lints/non_constant_identifier_names.html
*/
class Aluno{
  int? registroAcademico;
  String? nome;
  bool? casado;
  var dataNascimento; // NÃO FAÇA ISSO - desta forma, corre-se o risto de atribuírmos tipos indesejáveis
}