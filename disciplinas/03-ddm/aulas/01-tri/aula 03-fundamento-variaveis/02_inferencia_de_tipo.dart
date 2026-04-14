void main(List<String> arguments) {
  print('inferência de tipos');
  //para definir uma variável com inferência de tipo: var nome_variável = atribuição;
  var nomeProduto = "Ferrero Rocher";     //é uma String
  var descricaoProduto = 'chocolate';     //é uma String
  var precoProduto = 27.2;                //é um double
  var quantidadeProduto = 3;              //é um inteiro
  var produtoDisponivel = true;           //é um booleano
  var valor = null;                       //como o tipo é definido na atribuição, neste caso o valor pode ser nulo
  print('''o produto $nomeProduto é um $descricaoProduto,
    o seu preço é $precoProduto, 
    compramos $quantidadeProduto unidades''');


  
  //Por qual motivo utilizamos a inferência de tipo? 
  //String meuNome = 'Paulo'; 
  // veja que, quando declaramos uma variável com atribuição, é possível deduzir o tipo pela atribuição
  // se estamos atribuindo 'Paulo', estamos atribuindo um tipo String 
  // se estamos atribuindo uma String em uma variável, logicamente, a variável é do tipo String 
  // assim, neste caso, especificar o tipo antes da variável seria redundante, repetitivo, verboso
  // desta forma, quando declaramos uma variável com atribuição, podemos e segundo a documentação oficial devemos usar a inferência de tipo
  //var meuNome = 'Paulo';

  // um detalhe é que, meuNome, após a atribuição, se torma uma variável do tipo String
  // após a definição de um tipo, não é possível mudar. 
  //var meuNome = 'Paulo'; // → na atribuição meuNome vira uma String
  //meuNome = 50; // >>>> gera erro, visto que estamos atribuindo um inteiro em meuNome que é uma String
  


  /*
  Quando devemos explicitar um tipo e quando devemos utilizar a inferência de tipo?

  Em declarações com atribuição de um tipo explícito e claro, utilizamos a inferência de tipo
  var meuNome = 'Paulo'; → aqui recomenda-se utilizar a inferência de tipo

  Em declarações sem atribuição, em que sabemos o tipo mas não o seu valor (só saberemos depois)
  utilizamos a declaração com o tipo explícito
  String endereco; → supondo que vou atribuir o endereço somente depois

  Neste caso, o uso de inferência de tipo (var endereco) seria perigoso, visto que, sem atribuição inicial, endereco poderá ser qualquer tipo

  */
}

