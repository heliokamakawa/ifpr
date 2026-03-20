import 'dart:io';
//ignore_for_file: avoid_print
void main(){
  String resultado = ler('id:');
  int id = int.parse(resultado);
  String nome = ler('nome:');
  String sigla = ler('sigla:');

  var estado = Estado(  
    id: id, 
    nome: nome,
    sigla: sigla
  );
  
  print('nome: ${estado.nome}');
}

String ler(String rotulo){
  print(rotulo);
  String? resultado = stdin.readLineSync();
  if(resultado == null){
    print('valor nulo, encerrando o programa...');
    exit(0);
  } else {
    return resultado;
  }
}

class Estado{
  final int id;
  final String nome; 
  final String sigla;
  Estado({required this.id, required this.nome, required this.sigla});
}

/*
  Versão idiomática Dart — mesma funcionalidade da aula01, escrita do jeito certo.

  1. Sem `new` — Dart não exige. `Estado(...)` já é uma chamada de construtor.

  2. Atributos `final` — após a criação o objeto não pode ser alterado.
     Isso evita bugs onde alguém muda um valor por acidente após a instância ser criada.

  3. Construtor com `required` — impossível criar um `Estado` incompleto.
     O compilador exige todos os campos na hora da criação.

  4. `this.id`, `this.nome`, `this.sigla` no construtor — Dart inicializa os atributos
     diretamente, sem precisar de corpo `{ this.id = id; }`.

  5. Null safety tratado explicitamente na função `ler()` — se o usuário fechar
     o terminal (stdin retorna null), o programa encerra com uma mensagem clara
     em vez de lançar uma exceção obscura.
*/