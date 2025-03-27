# Atividade - Criar objetos

## Estrutura de Classes

```dart
// Classe de Fornecedor
class Fornecedor {
  String nome;
  String cnpj;
  String endereco;
  void Function() acaoFornecedor;

  Fornecedor(this.nome, this.cnpj, this.endereco, {required this.acaoFornecedor});
}

// Classe de Funcionario
class Funcionario {
  String nome;
  String cargo;
  double salario;
  void Function(String) calculaSalarioBonus;

  Funcionario(this.nome, this.cargo, this.salario, {required this.calculaSalarioBonus});
}

// Classe de Departamento
class Departamento {
  String nome;
  Funcionario gerente;
  void Function() acaoDepartamento;

  Departamento(this.nome, this.gerente, {required this.acaoDepartamento});
}

// Classe de Cliente
class Cliente {
  String nome;
  String endereco;
  void Function() atualizarEndereco;

  Cliente(this.nome, {required this.endereco, required this.atualizarEndereco});
}

// Classe de Cidade
class Cidade {
  String nome;
  String estado;
  void Function(String) alterarEstado;

  Cidade(this.nome, this.estado, {required this.alterarEstado});
}

// Classe de Estado
class Estado {
  String nome;
  String pais;
  void Function() mudarPais;

  Estado(this.nome, {required this.pais, required this.mudarPais});
}

// Classe de País
class Pais {
  String nome;
  void Function() exibirPais;

  Pais(this.nome, {required this.exibirPais});
}

// Classe de Pedido de Venda
class PedidoVenda {
  Cliente cliente;
  Produto produto;
  int quantidade;
  void Function() concluirVenda;

  PedidoVenda(this.cliente, this.produto, this.quantidade, {required this.concluirVenda});
}

// Classe de Pedido de Compra
class PedidoCompra {
  Fornecedor fornecedor;
  Produto produto;
  int quantidade;
  void Function() realizarCompra;

  PedidoCompra(this.fornecedor, this.produto, this.quantidade, {required this.realizarCompra});
}

// Classe de Produto
class Produto {
  String nome;
  double preco;
  TipoProduto tipo;
  CategoriaProduto categoria;
  UnidadeMedida unidadeMedida;
  Fornecedor fornecedor;
  void Function() ajustarPreco;

  Produto(this.nome, this.preco, this.tipo, this.categoria, {required this.unidadeMedida, required this.fornecedor, required this.ajustarPreco});
}

// Classe de Tipo de Produto
class TipoProduto {
  String descricao;
  void Function() exibirTipo;

  TipoProduto(this.descricao, {required this.exibirTipo});
}

// Classe de Categoria de Produto
class CategoriaProduto {
  String nome;
  String descricao;
  void Function() exibirCategoria;

  CategoriaProduto(this.nome, this.descricao, {required this.exibirCategoria});
}

// Classe de Unidade de Medida
class UnidadeMedida {
  String nome;
  String simbolo;
  void Function() atualizarUnidade;

  UnidadeMedida(this.nome, {required this.simbolo, required this.atualizarUnidade});
}

// Classe de Produto com Estoque
class ProdutoEstoque {
  Produto produto;
  int quantidade;
  void Function() ajustarEstoque;

  ProdutoEstoque(this.produto, this.quantidade, {required this.ajustarEstoque});
}

// Classe de Preço de Produto
class PrecoProduto {
  Produto produto;
  double precoVenda;
  double precoCusto;
  double margemLucro;
  void Function() calcularMargemLucro;

  PrecoProduto(this.produto, this.precoVenda, this.precoCusto, this.margemLucro, {required this.calcularMargemLucro});
}

// Classe de Histórico de Preço
class HistoricoPreco {
  Produto produto;
  DateTime dataAlteracao;
  double precoAntigo;
  double precoNovo;
  void Function() registrarAlteracao;

  HistoricoPreco(this.produto, this.dataAlteracao, this.precoAntigo, this.precoNovo, {required this.registrarAlteracao});
}

// Classe de Produto com Desconto
class ProdutoDesconto {
  Produto produto;
  double percentualDesconto;
  DateTime dataInicio;
  DateTime dataFim;
  void Function() aplicarDesconto;

  ProdutoDesconto(this.produto, this.percentualDesconto, this.dataInicio, this.dataFim, {required this.aplicarDesconto});
}

// Classe de Produto com Lote
class ProdutoLote {
  Produto produto;
  String numeroLote;
  DateTime dataFabricacao;
  DateTime dataValidade;
  void Function() verificarLote;

  ProdutoLote(this.produto, this.numeroLote, this.dataFabricacao, this.dataValidade, {required this.verificarLote});
}

// Classe de Produto com Localização
class ProdutoLocalizacao {
  Produto produto;
  String corredor;
  String prateleira;
  void Function() atualizarLocalizacao;

  ProdutoLocalizacao(this.produto, this.corredor, this.prateleira, {required this.atualizarLocalizacao});
}

// Classe de Produto com Observações
class ProdutoObservacao {
  Produto produto;
  String observacao;
  void Function() registrarObservacao;

  ProdutoObservacao(this.produto, this.observacao, {required this.registrarObservacao});
}

// Classe de Garantia do Produto
class GarantiaProduto {
  Produto produto;
  int anosGarantia;
  String tipoGarantia;
  void Function() ativarGarantia;

  GarantiaProduto(this.produto, this.anosGarantia, this.tipoGarantia, {required this.ativarGarantia});
}

// Classe de Produto com Status de Disponibilidade
class ProdutoDisponibilidade {
  Produto produto;
  bool disponivel;
  String status;
  void Function() atualizarStatus;

  ProdutoDisponibilidade(this.produto, this.disponivel, this.status, {required this.atualizarStatus});
}

// Classe de Produto com Avaliação
class AvaliacaoProduto {
  Produto produto;
  int numeroEstrelas;
  String comentario;
  void Function() registrarAvaliacao;

  AvaliacaoProduto(this.produto, this.numeroEstrelas, this.comentario, {required this.registrarAvaliacao});
}

// Classe de Produto com Imagem
class ImagemProduto {
  Produto produto;
  String urlImagem;
  void Function() exibirImagem;

  ImagemProduto(this.produto, {required this.urlImagem, required this.exibirImagem});
}

// Classe de Produto com Tamanho
class TamanhoProduto {
  Produto produto;
  String tamanho;
  void Function() atualizarTamanho;

  TamanhoProduto(this.produto, {required this.tamanho, required this.atualizarTamanho});
}

// Classe de Produto com Cor
class CorProduto {
  Produto produto;
  String cor;
  void Function() alterarCor;

  CorProduto(this.produto, {required this.cor, required this.alterarCor});
}

// Classe de Produto com Peso
class PesoProduto {
  Produto produto;
  double peso;
  void Function() atualizarPeso;

  PesoProduto(this.produto, {required this.peso, required this.atualizarPeso});
}

// Classe de Produto com Volume
class VolumeProduto {
  Produto produto;
  double volume;
  void Function() ajustarVolume;

  VolumeProduto(this.produto, {required this.volume, required this.ajustarVolume});
}

// Classe de Produto com Embalagem
class EmbalagemProduto {
  Produto produto;
  String tipoEmbalagem;
  double pesoEmbalagem;
  void Function() alterarEmbalagem;

  EmbalagemProduto(this.produto, {required this.tipoEmbalagem, required this.pesoEmbalagem, required this.alterarEmbalagem});
}

// Classe de Estoque
class Estoque {
  Produto produto;
  int quantidade;
  void Function() atualizarEstoque;

  Estoque(this.produto, this.quantidade, {required this.atualizarEstoque});
}

// Classe de Venda
class Venda {
  Cliente cliente;
  Produto produto;
  int quantidade;
  DateTime dataVenda;
  void Function() registrarVenda;

  Venda(this.cliente, this.produto, this.quantidade, this.dataVenda, {required this.registrarVenda});
}

// Classe de Compra
class Compra {
  Fornecedor fornecedor;
  Produto produto;
  int quantidade;
  DateTime dataCompra;
  void Function() registrarCompra;

  Compra(this.fornecedor, this.produto, this.quantidade, this.dataCompra, {required this.registrarCompra});
}

// Classe de Compra com Lote
class CompraLote {
  Compra compra;
  String numeroLote;
  DateTime dataEntrega;
  void Function() verificarLoteCompra;

  CompraLote(this.compra, this.numeroLote, this.dataEntrega, {required this.verificarLoteCompra});
}

// Classe de Pedido de Venda com Entrega
class PedidoVendaEntrega {
  PedidoVenda pedidoVenda;
  DateTime dataEntrega;
  String enderecoEntrega;
  void Function() organizarEntrega;

  PedidoVendaEntrega(this.pedidoVenda, this.dataEntrega, this.enderecoEntrega, {required this.organizarEntrega});
}

// Classe de Pedido de Compra com Frete
class PedidoCompraFrete {
  PedidoCompra pedidoCompra;
  double valorFrete;
  DateTime dataEnvio;
  void Function() calcularFrete;

  PedidoCompraFrete(this.pedidoCompra, this.valorFrete, this.dataEnvio, {required this.calcularFrete});
}

// Classe de Pedido de Compra com Pagamento
class PedidoCompraPagamento {
  PedidoCompra pedidoCompra;
  double valorPago;
  DateTime data

```
Exemplos de exercícios:

```dart
Exercício 1 – Nível Fácil: Criar um Fornecedor com Referência Anônima
Enunciado:
Crie um objeto do tipo Fornecedor usando referência anônima e parâmetros nomeados. Em seguida, exiba o nome do fornecedor e execute a ação associada.

dart
Copiar
Editar
void main() {
  // Cria um objeto Fornecedor utilizando referência anônima para a função 'acaoFornecedor'
  var fornecedor = Fornecedor(
    "Fornecedor A", 
    "00.000.000/0001-00", 
    "Rua dos Fornecedores, 123",
    acaoFornecedor: () {
      // Função anônima para simular uma ação do fornecedor
      print("Ação do Fornecedor A executada!");
    }
  );
  
  // Exibe o nome do fornecedor
  print("Fornecedor: ${fornecedor.nome}");
  
  // Executa a ação anônima associada
  fornecedor.acaoFornecedor();
}
Comentários:

Este exercício demonstra a criação de um objeto com parâmetros nomeados, onde a função acaoFornecedor é passada como referência anônima.

Ao final, é exibido o nome do fornecedor e a função é executada.

Exercício 2 – Nível Fácil: Criar um Produto com Referência Anônima
Enunciado:
Crie um objeto do tipo Produto com referência anônima, utilizando classes auxiliares para tipo, categoria e unidade de medida. Em seguida, exiba o nome e o preço do produto e execute a função de ajuste de preço.

dart
Copiar
Editar
void main() {
  // Cria um objeto TipoProduto com função anônima para exibir o tipo
  var tipo = TipoProduto("Eletrônico", exibirTipo: () {
    print("Tipo: Eletrônico");
  });
  
  // Cria um objeto CategoriaProduto com função anônima para exibir a categoria
  var categoria = CategoriaProduto("Informática", "Produtos de TI", exibirCategoria: () {
    print("Categoria: Informática");
  });
  
  // Cria um objeto UnidadeMedida com função anônima para atualizar a unidade
  var unidade = UnidadeMedida("Unidade", simbolo: "UN", atualizarUnidade: () {
    print("Unidade atualizada");
  });
  
  // Cria um objeto Fornecedor necessário para o produto
  var fornecedor = Fornecedor(
    "Fornecedor X", 
    "11.111.111/0001-11", 
    "Av. dos Fornecedores, 456",
    acaoFornecedor: () {
      print("Fornecedor X acionado");
    }
  );
  
  // Cria o objeto Produto utilizando referência anônima para a função ajustarPreco
  var produto = Produto(
    "Notebook", 
    3500.00, 
    tipo, 
    categoria, 
    unidade: unidade, 
    fornecedor: fornecedor, 
    ajustarPreco: () {
      print("Preço do Notebook ajustado!");
    }
  );
  
  // Exibe informações do produto
  print("Produto: ${produto.nome} - R\$${produto.preco}");
  
  // Executa a função anônima para ajuste de preço
  produto.ajustarPreco();
}
Comentários:

Este exercício reforça o uso de classes auxiliares e parâmetros nomeados.

Demonstra a composição de um objeto complexo (Produto) e a execução de uma função anônima (ajustarPreco).

Exercício 3 – Nível Médio: Criar um Pedido de Venda com Referência Anônima
Enunciado:
Crie um objeto PedidoVenda com referência anônima, que contenha um objeto Cliente e um objeto Produto. Utilize funções anônimas para concluir a venda. Exiba os detalhes do pedido e execute a função de conclusão.

dart
Copiar
Editar
void main() {
  // Cria um Cliente utilizando parâmetros nomeados
  var cliente = Cliente(
    "Cliente B", 
    "Rua dos Clientes, 789", 
    atualizarEndereco: () {
      print("Endereço do Cliente B atualizado");
    }
  );
  
  // Cria objetos auxiliares para o Produto
  var tipo = TipoProduto("Eletrodoméstico", exibirTipo: () {
    print("Tipo: Eletrodoméstico");
  });
  var categoria = CategoriaProduto("Cozinha", "Produtos para cozinha", exibirCategoria: () {
    print("Categoria: Cozinha");
  });
  var unidade = UnidadeMedida("Unidade", simbolo: "UN", atualizarUnidade: () {
    print("Unidade atualizada");
  });
  var fornecedor = Fornecedor(
    "Fornecedor Y", 
    "22.222.222/0001-22", 
    "Av. dos Fornecedores, 101", 
    acaoFornecedor: () {
      print("Fornecedor Y acionado");
    }
  );
  
  // Cria um Produto com função anônima para ajustar o preço
  var produto = Produto(
    "Geladeira", 
    2500.00, 
    tipo, 
    categoria, 
    unidade: unidade, 
    fornecedor: fornecedor, 
    ajustarPreco: () {
      print("Preço da Geladeira ajustado!");
    }
  );
  
  // Cria o PedidoVenda com função anônima para concluir a venda
  var pedidoVenda = PedidoVenda(
    cliente, 
    produto, 
    1, 
    concluirVenda: () {
      print("Venda concluída com sucesso!");
    }
  );
  
  // Exibe detalhes do pedido
  print("Pedido de Venda:");
  print("Cliente: ${pedidoVenda.cliente.nome}");
  print("Produto: ${pedidoVenda.produto.nome}");
  print("Quantidade: ${pedidoVenda.quantidade}");
  
  // Executa a função de conclusão da venda
  pedidoVenda.concluirVenda();
}
Comentários:

Neste exercício, o aluno compõe objetos aninhados (Cliente e Produto) dentro de um Pedido de Venda.

A função concluirVenda simula o processamento final do pedido.

Exercício 4 – Nível Avançado: Criar um Pedido de Compra com Frete e Pagamento
Enunciado:
Crie um objeto PedidoCompraFrete que contenha um objeto PedidoCompra, com um Fornecedor e Produto, e inclua uma função anônima para calcular o frete. Em seguida, crie um objeto PedidoCompraPagamento para simular o pagamento do pedido. Exiba as informações e execute as funções anônimas.

dart
Copiar
Editar
void main() {
  // Cria um Fornecedor
  var fornecedor = Fornecedor(
    "Fornecedor Z", 
    "33.333.333/0001-33", 
    "Rua dos Fornecedores, 202", 
    acaoFornecedor: () {
      print("Fornecedor Z acionado");
    }
  );
  
  // Cria objetos auxiliares para o Produto
  var tipo = TipoProduto("Móvel", exibirTipo: () {
    print("Tipo: Móvel");
  });
  var categoria = CategoriaProduto("Escritório", "Móveis para escritório", exibirCategoria: () {
    print("Categoria: Escritório");
  });
  var unidade = UnidadeMedida("Unidade", simbolo: "UN", atualizarUnidade: () {
    print("Unidade atualizada");
  });
  
  // Cria um Produto com função anônima para ajustar o preço
  var produto = Produto(
    "Mesa de Escritório", 
    800.00, 
    tipo, 
    categoria, 
    unidade: unidade, 
    fornecedor: fornecedor, 
    ajustarPreco: () {
      print("Preço da Mesa de Escritório ajustado!");
    }
  );
  
  // Cria um PedidoCompra com função anônima para realizar a compra
  var pedidoCompra = PedidoCompra(
    fornecedor, 
    produto, 
    5, 
    realizarCompra: () {
      print("Pedido de Compra realizado com sucesso!");
    }
  );
  
  // Cria um objeto PedidoCompraFrete com função anônima para calcular o frete
  var pedidoCompraFrete = PedidoCompraFrete(
    pedidoCompra, 
    150.00, 
    DateTime.now(), 
    calcularFrete: () {
      print("Frete calculado com base na distância e quantidade.");
    }
  );
  
  // Cria um objeto PedidoCompraPagamento com função anônima para realizar o pagamento
  var pedidoCompraPagamento = PedidoCompraPagamento(
    pedidoCompra, 
    4500.00, 
    DateTime.now(), 
    realizarPagamentoCompra: () {
      print("Pagamento do Pedido de Compra efetuado!");
    }
  );
  
  // Exibe informações
  print("Pedido de Compra com Frete:");
  print("Fornecedor: ${pedidoCompra.fornecedor.nome}");
  print("Produto: ${pedidoCompra.produto.nome}");
  print("Quantidade: ${pedidoCompra.quantidade}");
  
  // Executa as funções anônimas
  pedidoCompraFrete.calcularFrete();
  pedidoCompraPagamento.realizarPagamentoCompra();
}
Comentários:

Este exercício é mais avançado e envolve a criação de objetos aninhados (PedidoCompra, PedidoCompraFrete e PedidoCompraPagamento) com funções anônimas para calcular frete e processar pagamento.

Cada função anônima é executada para simular ações reais no fluxo de compra.

Exercício 5 – Nível Avançado: Criar um Pedido de Venda com Entrega e Ações Compostas
Enunciado:
Crie um objeto PedidoVendaEntrega que contenha um PedidoVenda, que por sua vez contém um Cliente com endereço completo e um Produto. Inclua funções anônimas para organizar a entrega e concluir a venda. Exiba o cenário completo e execute as funções anônimas para simular o fluxo de entrega.

dart
Copiar
Editar
void main() {
  // Cria o objeto Cliente com endereço detalhado
  var cliente = Cliente(
    "Cliente C", 
    "Rua dos Clientes, 987", 
    atualizarEndereco: () {
      print("Endereço do Cliente C atualizado!");
    }
  );
  
  // Cria os objetos auxiliares para o Produto
  var tipo = TipoProduto("Eletrônico", exibirTipo: () {
    print("Tipo: Eletrônico");
  });
  var categoria = CategoriaProduto("Áudio", "Aparelhos de som", exibirCategoria: () {
    print("Categoria: Áudio");
  });
  var unidade = UnidadeMedida("Unidade", simbolo: "UN", atualizarUnidade: () {
    print("Unidade atualizada");
  });
  var fornecedor = Fornecedor(
    "Fornecedor W", 
    "44.444.444/0001-44", 
    "Av. dos Fornecedores, 303", 
    acaoFornecedor: () {
      print("Fornecedor W acionado");
    }
  );
  
  // Cria um Produto com ajuste de preço
  var produto = Produto(
    "Caixa de Som", 
    299.99, 
    tipo, 
    categoria, 
    unidade: unidade, 
    fornecedor: fornecedor, 
    ajustarPreco: () {
      print("Preço da Caixa de Som ajustado!");
    }
  );
  
  // Cria um PedidoVenda com conclusão de venda
  var pedidoVenda = PedidoVenda(
    cliente, 
    produto, 
    2, 
    concluirVenda: () {
      print("Venda concluída com sucesso!");
    }
  );
  
  // Cria um PedidoVendaEntrega com função anônima para organizar a entrega
  var pedidoVendaEntrega = PedidoVendaEntrega(
    pedidoVenda, 
    DateTime.now().add(Duration(days: 2)), 
    "Rua da Entrega, 321", 
    organizarEntrega: () {
      print("Entrega organizada para o Pedido de Venda!");
    }
  );
  
  // Exibe informações do cenário
  print("Pedido de Venda:");
  print("Cliente: ${pedidoVenda.cliente.nome}");
  print("Produto: ${pedidoVenda.produto.nome}");
  print("Quantidade: ${pedidoVenda.quantidade}");
  print("Data de Entrega: ${pedidoVendaEntrega.dataEntrega}");
  print("Endereço de Entrega: ${pedidoVendaEntrega.enderecoEntrega}");
  
  // Executa as funções anônimas para concluir a venda e organizar a entrega
  pedidoVenda.concluirVenda();
  pedidoVendaEntrega.organizarEntrega();
}
Comentários:

Neste exercício avançado, o aluno cria um cenário completo de um pedido de venda com entrega, envolvendo vários objetos aninhados.

As funções anônimas concluirVenda e organizarEntrega são executadas para simular o fluxo do processo de venda e entrega.

Esses 5 exercícios gradativos foram elaborados para que o aluno treine a criação de objetos com referência anônima e compreenda como utilizar parâmetros nomeados e posicionais na construção de instâncias complexas. Cada exercício vem com resolução comentada para facilitar o entendimento e a fixação dos conceitos.
```
---

### Exercícios

Exercício 1: Criando um Fornecedor com Referência Anônima
Crie um objeto de Fornecedor usando referência anônima. Utilize parâmetros nomeados no construtor.

Exercício 2: Criando um Produto com Referência Anônima
Crie um objeto de Produto com referência anônima. Defina o preço e categoria de forma simples.

Exercício 3: Criando um Pedido de Venda
Crie um objeto de PedidoVenda com referência anônima, utilizando parâmetros nomeados.

Exercício 4: Criando um Funcionario com Referência Anônima
Crie um objeto de Funcionario com uma função anônima no parâmetro calculaSalarioBonus.

Exercício 5: Criando um Produto com Referência Anônima e Lote
Crie um objeto de ProdutoLote com referência anônima e parâmetros nomeados.

Exercício 6: Criando um Pedido de Compra
Crie um objeto de PedidoCompra com função anônima para realizar a compra.

Exercício 7: Criando um Estoque de Produto
Crie um objeto de Estoque com função anônima para atualizar a quantidade.

Exercício 8: Criando um Produto com Avaliação
Crie um objeto de AvaliacaoProduto com referência anônima.

Exercício 9: Criando um Produto com Desconto
Crie um objeto de ProdutoDesconto com função anônima para aplicar o desconto.

Exercício 10: Criando um Pedido de Compra com Frete
Crie um objeto de PedidoCompraFrete com função anônima para calcular o frete.

Exercício 11: Criando um Pedido de Venda com Entrega
Crie um objeto de PedidoVendaEntrega com função anônima para organizar a entrega.

Exercício 12: Criando um Produto com Garantia
Crie um objeto de ProdutoGarantia com referência anônima e função para ativar a garantia.

Exercício 13: Criando um Pedido de Venda com Desconto
Crie um objeto de PedidoVendaDesconto com referência anônima para aplicar um desconto no pedido.

Exercício 14: Criando um Produto com Status
Crie um objeto de ProdutoStatus com referência anônima, onde a função altera o status do produto.

Exercício 15: Criando um Fornecedor com Condições de Pagamento
Crie um objeto de FornecedorCondicaoPagamento com referência anônima, incluindo parâmetros para o número de parcelas e valor da parcela.

Exercício 16: Criando um Pedido de Compra com Atraso
Crie um objeto de PedidoCompraAtraso com referência anônima e função para verificar o atraso na entrega.

Exercício 17: Criando um Produto com Data de Validade
Crie um objeto de ProdutoValidade com referência anônima e função para verificar a validade do produto.

Exercício 18: Criando um Pedido de Venda com Frete Expresso
Crie um objeto de PedidoVendaFreteExpresso com referência anônima para calcular o custo do frete expresso.

Exercício 19: Criando um Produto com Restrição de Idade
Crie um objeto de ProdutoRestricaoIdade com referência anônima, incluindo um parâmetro para a faixa etária mínima.

Exercício 20: Criando um Cliente com Preferências
Crie um objeto de ClientePreferencias com referência anônima, incluindo um parâmetro para preferências de produtos e métodos de pagamento.
---

## Desafios Avançados

### Desafio 1 - Associação em 5 Níveis
**Enunciado:** Instancie uma `Venda` que contenha um `Cliente` associado a uma `Cidade`, que pertence a um `Estado`, dentro de um `País`.

```dart
var venda = Venda(
  Cliente("João", Cidade("Curitiba", Estado("Paraná", Pais("Brasil")))),
  1500.0
);
```

### Desafio 2 - Construtor com Função e Associação
**Enunciado:** Crie um `Pedido` que contenha um `Cliente`, uma `Lista de Produtos` e um cálculo de desconto como função anônima.

```dart
var pedido = Pedido(
  Cliente("Maria", Cidade("São Paulo", Estado("SP", Pais("Brasil")))),
  [Produto("TV", (preco) => preco * 0.85)]
);
```

### Desafio 3 - Associação Profunda e Função
**Enunciado:** Instancie um `Fornecedor` contendo um `Departamento`, que pertence a uma `Empresa`, situada em uma `Cidade`, dentro de um `Estado` e `País`, e inclua uma função de cálculo de imposto.

```dart
var fornecedor = Fornecedor(
  "TechSupply",
  Departamento("TI", Empresa("InovaCorp", Cidade("Porto Alegre", Estado("RS", Pais("Brasil"))))),
  (double valor) => valor * 0.18
);
```
Desafio 1: Sistema Complexo de Venda Multinível
Enunciado:
Crie um objeto de Venda que englobe um Cliente cujo endereço possui hierarquia completa (Endereço → Cidade → Estado → País). O produto vendido deve estar associado a um Fornecedor com sua própria hierarquia de endereço. Utilize funções anônimas para:

Calcular um imposto dinâmico com base no valor do produto.

Concluir a venda com uma função que valide todas as associações.

Dica: Utilize parâmetros nomeados para facilitar a leitura, mas mantenha alguns parâmetros posicionais para simular a diversidade de construtores.

Desafio 2: Pedido de Compra com Cálculo de Frete e Pagamento
Enunciado:
Crie um objeto de PedidoCompra com as seguintes condições:

O Fornecedor deve ter um endereço completo (incluindo Cidade, Estado e País).

O Produto deve possuir detalhes como Tipo, Categoria e Unidade de Medida.

Implemente funções anônimas para:

Calcular o valor do frete com base na distância (simulada) e quantidade.

Realizar o pagamento, que deve validar o pedido e registrar a data do pagamento.

Dica: Estruture as associações de forma a refletir uma cadeia de valor completa e encadeada.

Desafio 3: Sistema Integrado de Empresa e Folha de Pagamento
Enunciado:
Crie um objeto de Empresa que contenha múltiplos Departamentos. Cada Departamento deve incluir vários Funcionarios, onde cada funcionário tem uma função anônima para calcular seu bônus (baseado em seu cargo e salário). Além disso, a empresa deve ter um endereço hierárquico (Endereço → Cidade → Estado → País).
Utilize funções anônimas para:

Calcular a folha de pagamento total da empresa.

Exibir relatórios de desempenho dos departamentos.

Dica: Combine parâmetros nomeados e posicionais para criar construtores que permitam flexibilidade e clareza na instanciação dos objetos.

Desafio 4: Armazém com Estoque Dinâmico e Rastreamento
Enunciado:
Crie um objeto de ArmazemEstoque que contenha:

Um objeto Armazem com localização detalhada.

Produtos com informações completas (incluindo Tipo, Categoria, Unidade de Medida e dados de Garantia).

Implemente funções anônimas para:

Atualizar o estoque dinamicamente (exemplo: diminuir a quantidade ao vender).

Registrar um histórico de alterações no estoque, com data e quantidade modificada.

Dica: Garanta que as funções anônimas sejam utilizadas para simular a integração entre vendas e a atualização do estoque.

Desafio 5: Sistema Integrado de Compras, Vendas e Logística
Enunciado:
Desenvolva um objeto de “Sistema Integrado” que una os seguintes módulos:

Compras: Utilize um objeto de Compra que contenha um PedidoCompra com Fornecedor, Produto, e um lote específico, usando função anônima para verificar a validade do lote.

Vendas: Crie um objeto de PedidoVendaEntrega que contenha todas as associações do Cliente (incluindo endereço completo) e Produto, com funções anônimas para concluir a venda e organizar a entrega.

Logística: Implemente um módulo de logística (pode ser representado por uma classe ArmazemEstoque ou similar) que integre informações de estoque, com funções anônimas para calcular rotas de entrega e ajustar o estoque automaticamente.
Utilize funções anônimas para simular:

Cálculos dinâmicos de frete, impostos e descontos.

A integração entre os módulos, validando que os dados do módulo de compras impactam o módulo de vendas e vice-versa.

Dica: Este desafio exige a criação de uma estrutura que englobe múltiplas associações e módulos do sistema. Considere criar classes auxiliares para modularizar as funções (ex: classe Logistica, classe IntegracaoSistema) e, então, utilizar funções anônimas para orquestrar a comunicação entre elas.
---

Esse material servirá para que os alunos dominem a sintaxe do Dart e a estruturação de classes no Flutter. 🚀
