import 'dart:io';
//ignore_for_file: avoid_print
void main(){
  
  Estado estado = new Estado();
  String resultado = ler('id:');
  estado.id = int.parse(resultado);
  estado.nome = ler('nome:');
  estado.sigla = ler('sigla:');

  
  print('nome: ${estado.nome}');
}

String ler(String rotulo){
  print(rotulo);
  return stdin.readLineSync()!;
}

class Estado{
  int? id;
  String? nome; 
  String? sigla;
}

/*
  Este código funciona, mas foi escrito no estilo Java/C# — não é o jeito Dart.
  Problemas:

  1. `new Estado()` — a palavra `new` é desnecessária em Dart. Use só `Estado()`.

  2. Atributos declarados como `int?` e `String?` (nullable) só porque não foram
     inicializados no construtor. Isso obriga o compilador a desconfiar do valor
     em todo lugar que for usado — e abre espaço para NullPointerException em runtime.

  3. Atributos sem `final` — qualquer parte do código pode sobrescrever `estado.nome`
     depois da criação. Objetos de domínio quase sempre deveriam ser imutáveis.

  4. Sem construtor — os valores são atribuídos um a um após a criação. Isso permite
     criar um `Estado` vazio e incompleto por engano.

  A aula02 mostra como corrigir todos esses pontos.
*/