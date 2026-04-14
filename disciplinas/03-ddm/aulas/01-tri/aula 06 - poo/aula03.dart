import 'dart:io';
//ignore_for_file: avoid_print
void main(){
  String resultado = ler('id:');
  int id = int.parse(resultado);
  String nome = ler('nome:');
  String sigla = ler('sigla:');

  /* 
  var estado = Estado(  
    id: id, 
    nome: nome,
    sigla: sigla
  );*/

   /* 
  Estado(  
    id: id, 
    nome: nome,
    sigla: sigla
  );*/
  
  //print('nome: ${estado.nome}');
  
  print('nome: ${Estado(  
    id: id, 
    nome: nome,
    sigla: sigla
    ).nome}'
  );
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
  Instância anônima — objeto criado e usado diretamente, sem ser guardado em variável.

  Em vez de:
    var estado = Estado(id: id, nome: nome, sigla: sigla);
    print(estado.nome);

  Fazemos:
    print(Estado(id: id, nome: nome, sigla: sigla).nome);

  O objeto `Estado` é criado, `.nome` é acessado, e o objeto é descartado logo em seguida.

  Por que isso importa?
  - Em Flutter quase todos os widgets são instâncias anônimas passadas como argumento:
      Text('olá'), Icon(Icons.home), Padding(padding: ..., child: ...)
  - Evita criar variáveis desnecessárias quando o objeto é usado só uma vez.
  - Quem só conhece a forma nomeada estranha no início — mas é o padrão em Dart/Flutter.
*/