import 'dart:io';

main(){   
  testeExemplo03();         
}

/*
Atributo privado - basta colocar "_" antes do nome da variável
LEMBRE-SE - privado significa que é restrito ao arquivo e não a classe
*/
class AlunoExemplo01{
  int _registroAcademico; 
  String _nome;
  bool _ativo;
  
  //construtor
  AlunoExemplo01(this._registroAcademico,this._nome,this._ativo);
}

void testeExemplo01(){
  var aluno = AlunoExemplo01(1,'Joaquim', true);

  //apesar de privado, funciona irá funcionar aqui, pois está no mesmo arquivo
  print(aluno._nome); 
  //se tentarmos rodar em outro arquivo dará erro!
  //em outro arquivo não teremos acesso aos atributos
}

/*
Definindo métodos de acesso get/set
*/
class AlunoExemplo02{
  String _nome;

  String getNome(){
    return _nome;
  }

  void setNome(String nome){
    this._nome = nome;
  }
  
  //construtor
  AlunoExemplo02(this._nome);
}

void testeExemplo02(){
  var aluno = AlunoExemplo02('Joaquim');

  //funciona somente aqui
  aluno._nome = 'Mariana';
  print(aluno._nome); 

  //em outro arquivo, basta utilizar o método de acesso get/set
  aluno.setNome('Joaquim');
  print(aluno.getNome()); 
}


/*
Definindo propriedades
não defina propriedades sem necessidade
https://dart-lang.github.io/linter/lints/unnecessary_getters_setters.html
*/
class AlunoExemplo03{
  int _registroAcademico;

  int get registroAcademico {
    return _registroAcademico;
  }

  set registroAcademico(int registroAcademico){
    if(registroAcademico > 0) _registroAcademico = registroAcademico;
  }
  
  //construtor
  AlunoExemplo03(this._registroAcademico);
}

void testeExemplo03(){
  var aluno = AlunoExemplo03(5);
  aluno.registroAcademico = -5; // não irá atribuir

  //funciona aqui e em outro arquivo
  aluno.registroAcademico = 10;
  print(aluno.registroAcademico);  
}

/*
Definindo propriedades com array function
*/
class AlunoExemplo04{
  int _registroAcademico;
  int get registroAcademico => _registroAcademico;
  set registroAcademico(int registroAcademico) => _registroAcademico = (registroAcademico > 0) ? registroAcademico : 0;
  
  //construtor
  AlunoExemplo04(this._registroAcademico);
}

void testeExemplo04(){
  var aluno = AlunoExemplo03(5);

  //funciona aqui e em outro arquivo
  aluno.registroAcademico = 10;
  print(aluno.registroAcademico);  
}

