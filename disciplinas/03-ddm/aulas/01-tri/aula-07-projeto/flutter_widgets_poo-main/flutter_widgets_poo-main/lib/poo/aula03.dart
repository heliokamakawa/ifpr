import 'dart:io';
//ignore_for_file: avoid_print

void main() {
  String resultado = ler('id:');
  int id = int.parse(resultado);
  String nome = ler('nome:');
  String sigla = ler('sigla:');

  print(
    'nome: ${Estado(
      id: id,
      nome: nome,
      sigla: sigla,
    ).nome}',
  );
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
  Instancia anonima: objeto criado e usado diretamente,
  sem ser guardado antes em uma variavel.

  Comparacao:

  Em vez de criar e guardar:
    var estado = Estado(id: id, nome: nome, sigla: sigla);
    print(estado.nome);

  Podemos usar direto:
    print(Estado(id: id, nome: nome, sigla: sigla).nome);

  O objeto `Estado` e criado, `.nome` e acessado,
  e depois o objeto deixa de ser necessario.

  Por que isso importa?
  - Em Flutter, quase todos os widgets sao criados assim:
      Text('ola'), Icon(Icons.home), Padding(padding: ..., child: ...)
  - Evita criar variaveis desnecessarias quando o objeto sera usado so uma vez.
  - Esta forma e muito comum em Dart e Flutter.
*/
