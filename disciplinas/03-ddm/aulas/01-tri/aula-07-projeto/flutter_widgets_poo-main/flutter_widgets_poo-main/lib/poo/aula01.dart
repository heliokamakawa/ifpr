import 'dart:io';
//ignore_for_file: avoid_print

void main() {
  Estado estado = Estado();
  String resultado = ler('id:');
  estado.id = int.parse(resultado);
  estado.nome = ler('nome:');
  estado.sigla = ler('sigla:');

  print('nome: ${estado.nome}');
}

String ler(String rotulo) {
  print(rotulo);
  return stdin.readLineSync()!;
}

class Estado {
  int? id;
  String? nome;
  String? sigla;
}

/*
  Este codigo funciona, mas foi escrito em um estilo mais proximo de Java/C#.
  Para Dart, ele serve como ponto de partida para discutir problemas comuns.

  Problemas:

  1. `Estado()` cria o objeto, mas ele nasce vazio.
     Isso permite um estado incompleto durante parte da execucao.

  2. Os atributos foram declarados como nullable (`int?`, `String?`)
     apenas porque nao foram inicializados no construtor.
     Isso enfraquece a seguranca do objeto.

  3. Os atributos nao sao `final`.
     Isso permite alterar o objeto depois da criacao.

  4. Nao ha construtor exigindo os dados.
     O objeto e preenchido aos poucos, o que facilita erro humano.

  A aula02 mostra como corrigir esses pontos usando o estilo mais idiomatico de Dart.
*/
