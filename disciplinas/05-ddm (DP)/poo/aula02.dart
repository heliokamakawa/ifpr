import 'dart:io';
//ignore_for_file: avoid_print

void main() {
  String resultado = ler('id:');
  int id = int.parse(resultado);
  String nome = ler('nome:');
  String sigla = ler('sigla:');

  var estado = Estado(
    id: id,
    nome: nome,
    sigla: sigla,
  );

  print('nome: ${estado.nome}');
}

String ler(String rotulo) {
  print(rotulo);
  String? resultado = stdin.readLineSync();
  if (resultado == null) {
    print('valor nulo, encerrando o programa...');
    exit(0);
  } else {
    return resultado;
  }
}

class Estado {
  final int id;
  final String nome;
  final String sigla;

  Estado({required this.id, required this.nome, required this.sigla});
}

/*
  Versao idiomatica em Dart: mesma ideia da aula01, mas escrita de forma mais segura
  e mais alinhada com a linguagem.

  1. `Estado(...)` ja e uma chamada de construtor.
     Dart nao exige a palavra `new`.

  2. Atributos `final`:
     depois da criacao, o objeto nao pode ser alterado.
     Isso reduz bugs e torna o modelo mais confiavel.

  3. Construtor com `required`:
     fica impossivel criar um `Estado` incompleto.
     O compilador exige todos os dados na hora da criacao.

  4. `this.id`, `this.nome`, `this.sigla` no construtor:
     Dart inicializa os atributos diretamente, sem precisar escrever
     um corpo manual para o construtor.

  5. Null safety tratado explicitamente na funcao `ler()`:
     se o usuario fechar o terminal e `stdin` retornar `null`,
     o programa encerra com mensagem clara em vez de falhar de forma obscura.
*/
