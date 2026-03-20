import 'dart:io';
//ignore_for_file: avoid_print
void main(){
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
        sigla: sigla
      )
    )
  }');
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

class Cidade{
  final int id; 
  final String nome; 
  final Estado estado; 
  Cidade({required this.id, required this.nome, required this.estado});
}

/*
  Composição — um objeto contém outro como atributo.

  `Cidade` tem um atributo `estado` do tipo `Estado`.
  Isso modela o mundo real: uma cidade pertence a um estado.

  A criação usa instâncias anônimas aninhadas:
    Cidade(
      id: idCidade,
      nome: nomeCidade,
      estado: Estado(id: id, nome: nome, sigla: sigla)  // anônimo, passado direto
    )

  Composição vs Herança:
  - Herança: "Cidade É UM Estado" — não faz sentido.
  - Composição: "Cidade TEM UM Estado" — faz sentido. Use composição.

  Atenção: o print exibe "Instance of 'Cidade'" porque a classe não tem `toString()`
  definido. Dart usa o padrão da classe Object, que só mostra o tipo.
  Isso será resolvido quando implementarmos `toString()` nas classes.
*/
