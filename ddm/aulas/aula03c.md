# Biblioteca de Classes - Flutter e Dart

## Estrutura de Classes
Aqui está a biblioteca de classes organizada com associações aninhadas de até 5 níveis, incluindo construtores com parâmetros nomeados, posicionais e do tipo função.

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
---

### Exercícios Graduais

1. **Instancie um objeto simples** da classe `Cliente`.
2. **Crie uma instância** da classe `Venda` associada a um cliente.
3. **Utilize um construtor nomeado** para criar uma instância da classe `Produto`.
4. **Crie uma instância da classe Pedido** contendo um `Cliente` e uma `Lista de Produtos`.
5. **Crie uma instância anônima** da classe `Funcionario` associada a um `Departamento`.
6. **Desafio**: Instancie um `Fornecedor` contendo uma `Empresa`, localizada em uma `Cidade`, pertencente a um `Estado` dentro de um `País`.

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

---

Esse material servirá para que os alunos dominem a sintaxe do Dart e a estruturação de classes no Flutter. 🚀
