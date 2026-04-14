
  /*
  Variável é um espaço na memória que reservamos para armazenar um dado 
  Um valor que pode "variar", hora é um valor, hora é outro - é por isto que chamamos de variável.
  
  Sintaxe para definir uma variável com tipo explícito: 
  tipo nome_variável = valor; // = representa atribuição
  
  Tipos existentes: String (conjunto de caracteres), char (caractere), double (números com casas decimais), int (números inteiros), bool (valor booleano)
  */

void main(List<String> arguments) {
  print('tipos de variávei em Dart'); //imprimindo um texto
  String meuNome = 'Paulo'; //definindo variável do tipo String com atribuição - conjunto de caracteres    
  int minhaIdade;  //definindo variável do tipo int sem atribuição - números inteiros    
  minhaIdade = 30; //atribuindo um valor - só podemos atribuir um valor depois da declaração
  minhaIdade = 25; //podemos atribuir outros valores
  minhaIdade = 18; //podemos atribuir outros valores

  /*
  >>RECOMENDAÇÕES
  Para definir nomes de variáveis, escolha nomes sugestivos, que rotule o conteúdo que será armazenado
  */

  /*
  >>>ERROS DE SINTAXE 
  // 1º erro - atribuir um valor antes da declaração da variável
  meuSobrenome = 'Silva';
  String meuSobrenome;

  // 2º erro - não podemos declarar mais que uma variável com o mesmo nome
  String meuSobrenome = 'Silva';    // o nome de uma variável é a referência do endereço de memória que guarda o valor
  String meuSobrenome = 'Pereira';  // ou seja, é um identificador! Como é um identificador tem que ser único!
  int meuSobrenome = 'Pereira';     // não adianta mudar de tipo, o nome continua sendo um identificador
  
  // 3º erro - não podemos definir o nome de uma variável com palavras compostas com espaço
  String meu Sobrenome;  // → desta forma dá erro, pois o Dart espera uma única palavra na definição do nome da variável
  */


   /*
  >>PADRÃO DE NOMENCLATURA PARA VARIÁVEIS
  String MEUSOBRENOME; // Em relação a sintaxe, no Dart, podemos definir o nome de variável com letras maiúsculas
  String meusobrenome; // com letras minúsculas
  String MeUsObReNoMe; // ou misturado

  //Apedar de PODER usar letras maiúsculas ou minúsculas ou misturado, 
  //Para definir o nome de um variável devemos seguir o padrão lowerCamelCase.
  //Este padrão define a escrita de nome com palavras compostas sem espaço (Exemplo: meu sobrenome).  
  //Neste padrão escrevemos todas as letras em minúsculas, exceto a 1º letra de cada palavra juntada.
  //Exemplo: meu nome fica meuNome, meu sobrenome fica meuSobrenome  
  */
  
  double peso = 80.7;         //definindo variável do tipo double com atribuição - conjunto de números com casas decimais
  bool eProgramador = true;   //definindo variável do tipo double com atribuição - conjunto de números com casas decimais
  // no dart não temos um tipo específcio para char 

  //imprimindo com concatenação
  print('nome: '+meuNome); 
  //imprimindo com interpolação - mais fácil, abre a string uma única vez 
  print('nome ${meuNome}, idade: ${minhaIdade}'); 
  //na interpolação, quando o nome é simples, não é necessário inserir chaves 
  //a documentação oficial indica a retirada de chaves em nomes simples na interpolação
  print('nome $meuNome, idade: $minhaIdade'); 
  //para definir uma String podemos utilizar ' ou ""
  print("nome $meuNome, idade: $minhaIdade"); 
  //podemos utilizar ''' para quebrar linhas nas sentenças
  print('''
    Meu nome é $meuNome,
    minha idade é $minhaIdade,
    meu peso é $peso,
    sou programador? $eProgramador!
  ''');
  
  String nomeProduto = 'Chokito';                   //conjunto de caracteres
  String descricaoProduto = 'chocolate';            //conjunto de caracteres
  String nomeComDescricaoProduto = nomeProduto +' '+ descricaoProduto; //na declaração podemos fazer atribuição com operações envolvendo outras variáveis
  double precoProduto = 27.2;                       //números com casas decimais
  int quantidadeProduto = 3;                        //números inteiros
  bool produtoDisponivel = true;                    //booleano - só pode ser true ou false
  double total = precoProduto * quantidadeProduto;  //na declaração podemos fazer atribuição com operações envolvendo outras variáveis
  
  print('''
    Produto: $nomeProduto,
    Descrição: $descricaoProduto,
    Nome e descrição: $nomeComDescricaoProduto
    Preço: $precoProduto,
    Quantidade: $quantidadeProduto,
    Total: $total
  ''');

  /**
  a partir da versão 2.12 do dart as variávies por padrão são Null Safety - não anuláveis por padrão
  nomeProduto = null; >>>> gera erro
  */
  
  String? nome = null; //para declarar uma variável que pode ser nula adicionaos "?" logo após o tipo
}
