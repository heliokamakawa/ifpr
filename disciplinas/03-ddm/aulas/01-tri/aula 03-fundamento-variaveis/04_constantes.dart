
void main(List<String> arguments) {
  print('sample const/final variables');
  /*
    const/final 
    o valor definido não pode ser alterado
    pode ser atribuído uma única vez

    const → definido em tempo de compilação
    final → definido em tempo de execução

    a diferença é que na const não podemos atribuir valores que são definidos em tempo de execução. Exemplo: chamada de função


    const int num1 = 3;
    final int num2 = 4; 
    const int resultado = num1 * num2; >>> gera ERRO → resultado é uma constante (definido em tempo de compilação), mas a atribuição depende de num2 que é definido em tempo de execução (final)
  */
  const String nomeProduto = 'Prestígio';
  final String descricaoProduto = 'chocolate';

  /*
  const var nomeProduto = 'Prestígio';        >>>> ERADO → para declarar const não existe VAR
  final var descricaoProduto = 'chocolate';   >>>> ERADO → para declarar final não existe VAR
  */
  //definindo const/final com inferência de valor
  const nomeProduto2 = 'Chokito';
  final descricaoProduto2 = 'doce';

  /*
  nomeProduto = 'Chokito';    >>>> gera ERRO → o valor definido em CONST não pode ser alterado
  descricaoProduto = 'doce';  >>>> gera ERRO → o valor definido em FINAL não pode ser alterado
  */
  
  /*
  const String nomeCompleto = nomeProduto + descricaoProduto;
  >>>> gera ERRO → nomeCompleto é definido em tempo de compilação, mas a atribuição depende de descricaoProduto que é definido em tempo de execução 
  */
  double precoProduto = 27.2;
  int quantidadeProduto = 3;
  bool produtoDisponivel = true; //só pode ser true ou false

  print('''
    produto 1: $nomeProduto $descricaoProduto
    produto 2: $nomeProduto2 $descricaoProduto2
  ''');
}

/*
  >>>Exercícios
  Crie um novo arquivo e definina variáveis para Curso, Aluno e Disciplina.
*/