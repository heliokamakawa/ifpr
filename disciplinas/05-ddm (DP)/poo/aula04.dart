import 'dart:io';
//ignore_for_file: avoid_print

void main() {
  String resultado = ler('id:');
  int id = int.parse(resultado);
  String nome = ler('nome:');
  String sigla = ler('sigla:');

  String sIdCidade = ler('id da cidade:');
  int idCidade = int.parse(sIdCidade);
  String nomeCidade = ler('nome da cidade:');

  print('nome: ${
    Cidade(
      id: idCidade,
      nome: nomeCidade,
      estado: Estado(
        id: id,
        nome: nome,
        sigla: sigla,
      ),
    )
  }');
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

class Cidade {
  final int id;
  final String nome;
  final Estado estado;

  Cidade({required this.id, required this.nome, required this.estado});
}

/*
  Composicao: um objeto contem outro como atributo.

  `Cidade` tem um atributo `estado` do tipo `Estado`.
  Isso modela o mundo real: uma cidade pertence a um estado.

  A criacao usa instancias anonimas aninhadas:
    Cidade(
      id: idCidade,
      nome: nomeCidade,
      estado: Estado(id: id, nome: nome, sigla: sigla)  // anonimo, passado direto
    )

  Composicao vs Heranca:
  - Heranca: "Cidade E UM Estado" -> nao faz sentido.
  - Composicao: "Cidade TEM UM Estado" -> faz sentido.

  Atencao:
  o print exibe "Instance of 'Cidade'" porque a classe nao tem `toString()`.
  Dart usa a implementacao padrao de `Object`, que mostra apenas o tipo.
  Isso pode ser melhorado em uma etapa seguinte.
*/
