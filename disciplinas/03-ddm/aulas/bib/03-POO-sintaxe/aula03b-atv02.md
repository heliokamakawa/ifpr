# Atividade - Criar objetos

## Estrutura de Classes

```dart
// Classe de País
class Pais {
  String nome;
  Pais({required this.nome});
}

// Classe de Estado
class Estado {
  String nome;
  Pais pais;
  Estado({required this.nome, required this.pais});
}

// Classe de Cidade
class Cidade {
  String nome;
  Estado estado;
  Cidade({required this.nome, required this.estado});
}

// Classe de Endereco
class Endereco {
  String rua;
  String cep;
  Cidade cidade;
  Endereco({required this.rua, required this.cep, required this.cidade});
}

// Classe de Fornecedor
class Fornecedor {
  String nome;
  String cnpj;
  Endereco endereco;
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
  List<Funcionario> funcionarios;

  Departamento(this.nome, this.gerente, {required this.acaoDepartamento, required this.funcionarios});
}

// Classe de Cliente
class Cliente {
  String nome;
  Endereco endereco;
  void Function() atualizarEndereco;

  Cliente(this.nome, {required this.endereco, required this.atualizarEndereco});
}

// Classe de Pedido de Venda
class PedidoVenda {
  Cliente cliente;
  List<ItemVenda> itens;
  void Function() concluirVenda;

  PedidoVenda(this.cliente, {required this.itens, required this.concluirVenda});
}

// Classe de Pedido de Compra
class PedidoCompra {
  Fornecedor fornecedor;
  List<ItemCompra> itens;
  void Function() realizarCompra;

  PedidoCompra(this.fornecedor, {required this.itens, required this.realizarCompra});
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

// Classe de Produto
class Produto {
  String nome;
  double preco;
  TipoProduto tipo;
  CategoriaProduto categoria;
  UnidadeMedida unidadeMedida;
  Fornecedor fornecedor;
  void Function() ajustarPreco;

  Produto(this.nome, this.preco, this.tipo, this.categoria,
      {required this.unidadeMedida, required this.fornecedor, required this.ajustarPreco});
}

// Classe de ProdutoEstoque
class ProdutoEstoque {
  Produto produto;
  int quantidade;
  void Function() ajustarEstoque;
  DateTime dataAtualizacao;

  ProdutoEstoque(this.produto, this.quantidade, {required this.ajustarEstoque, required this.dataAtualizacao});
}

// Classe de PrecoProduto
class PrecoProduto {
  Produto produto;
  double precoVenda;
  double precoCusto;
  double margemLucro;
  void Function() calcularMargemLucro;

  PrecoProduto(this.produto, this.precoVenda, this.precoCusto, this.margemLucro, {required this.calcularMargemLucro});
}

// Classe de HistoricoPreco
class HistoricoPreco {
  Produto produto;
  DateTime dataAlteracao;
  double precoAntigo;
  double precoNovo;
  void Function() registrarAlteracao;

  HistoricoPreco(this.produto, this.dataAlteracao, this.precoAntigo, this.precoNovo, {required this.registrarAlteracao});
}

// Classe de ProdutoDesconto
class ProdutoDesconto {
  Produto produto;
  double percentualDesconto;
  DateTime dataInicio;
  DateTime dataFim;
  void Function() aplicarDesconto;

  ProdutoDesconto(this.produto, this.percentualDesconto, this.dataInicio, this.dataFim, {required this.aplicarDesconto});
}

// Classe de ProdutoLote
class ProdutoLote {
  Produto produto;
  String numeroLote;
  DateTime dataFabricacao;
  DateTime dataValidade;
  void Function() verificarLote;

  ProdutoLote(this.produto, this.numeroLote, this.dataFabricacao, this.dataValidade, {required this.verificarLote});
}

// Classe de ProdutoLocalizacao
class ProdutoLocalizacao {
  Produto produto;
  String corredor;
  String prateleira;
  void Function() atualizarLocalizacao;

  ProdutoLocalizacao(this.produto, this.corredor, this.prateleira, {required this.atualizarLocalizacao});
}

// Classe de ProdutoObservacao
class ProdutoObservacao {
  Produto produto;
  String observacao;
  void Function() registrarObservacao;

  ProdutoObservacao(this.produto, this.observacao, {required this.registrarObservacao});
}

// Classe de GarantiaProduto
class GarantiaProduto {
  Produto produto;
  int anosGarantia;
  String tipoGarantia;
  void Function() ativarGarantia;

  GarantiaProduto(this.produto, this.anosGarantia, this.tipoGarantia, {required this.ativarGarantia});
}

// Classe de ProdutoDisponibilidade
class ProdutoDisponibilidade {
  Produto produto;
  bool disponivel;
  String status;
  void Function() atualizarStatus;

  ProdutoDisponibilidade(this.produto, this.disponivel, this.status, {required this.atualizarStatus});
}

// Classe de AvaliacaoProduto
class AvaliacaoProduto {
  Produto produto;
  int numeroEstrelas;
  String comentario;
  void Function() registrarAvaliacao;

  AvaliacaoProduto(this.produto, this.numeroEstrelas, this.comentario, {required this.registrarAvaliacao});
}

// Classe de ImagemProduto
class ImagemProduto {
  Produto produto;
  String urlImagem;
  void Function() exibirImagem;

  ImagemProduto(this.produto, {required this.urlImagem, required this.exibirImagem});
}

// Classe de TamanhoProduto
class TamanhoProduto {
  Produto produto;
  String tamanho;
  void Function() atualizarTamanho;

  TamanhoProduto(this.produto, {required this.tamanho, required this.atualizarTamanho});
}

// Classe de CorProduto
class CorProduto {
  Produto produto;
  String cor;
  void Function() alterarCor;

  CorProduto(this.produto, {required this.cor, required this.alterarCor});
}

// Classe de PesoProduto
class PesoProduto {
  Produto produto;
  double peso;
  void Function() atualizarPeso;

  PesoProduto(this.produto, {required this.peso, required this.atualizarPeso});
}

// Classe de VolumeProduto
class VolumeProduto {
  Produto produto;
  double volume;
  void Function() ajustarVolume;

  VolumeProduto(this.produto, {required this.volume, required this.ajustarVolume});
}

// Classe de EmbalagemProduto
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
  List<ItemVenda> itens;
  DateTime dataVenda;
  void Function() registrarVenda;

  Venda(this.cliente, this.dataVenda, {required this.itens, required this.registrarVenda});
}

// Classe de Compra
class Compra {
  Fornecedor fornecedor;
  List<ItemCompra> itens;
  DateTime dataCompra;
  void Function() registrarCompra;

  Compra(this.fornecedor, this.dataCompra, {required this.itens, required this.registrarCompra});
}

// Classe de CompraLote
class CompraLote {
  Compra compra;
  String numeroLote;
  DateTime dataEntrega;
  void Function() verificarLoteCompra;

  CompraLote(this.compra, this.numeroLote, this.dataEntrega, {required this.verificarLoteCompra});
}

// Classe de PedidoVendaEntrega
class PedidoVendaEntrega {
  PedidoVenda pedidoVenda;
  DateTime dataEntrega;
  Endereco enderecoEntrega;
  void Function() organizarEntrega;

  PedidoVendaEntrega(this.pedidoVenda, this.dataEntrega, this.enderecoEntrega, {required this.organizarEntrega});
}

// Classe de PedidoCompraFrete
class PedidoCompraFrete {
  PedidoCompra pedidoCompra;
  double valorFrete;
  DateTime dataEnvio;
  void Function() calcularFrete;

  PedidoCompraFrete(this.pedidoCompra, this.valorFrete, this.dataEnvio, {required this.calcularFrete});
}

// Classe de PedidoCompraPagamento
class PedidoCompraPagamento {
  PedidoCompra pedidoCompra;
  double valorPago;
  DateTime dataPagamento;
  void Function() realizarPagamentoCompra;

  PedidoCompraPagamento(this.pedidoCompra, this.valorPago, this.dataPagamento, {required this.realizarPagamentoCompra});
}

// Classe de PedidoVendaDesconto
class PedidoVendaDesconto {
  PedidoVenda pedidoVenda;
  double percentualDesconto;
  void Function() aplicarDesconto;

  PedidoVendaDesconto(this.pedidoVenda, this.percentualDesconto, {required this.aplicarDesconto});
}

// Classe de FornecedorCondicaoPagamento
class FornecedorCondicaoPagamento {
  Fornecedor fornecedor;
  int numeroParcelas;
  double valorParcela;
  void Function() registrarCondicao;

  FornecedorCondicaoPagamento(this.fornecedor, this.numeroParcelas, this.valorParcela, {required this.registrarCondicao});
}

// Classe de PedidoCompraAtraso
class PedidoCompraAtraso {
  PedidoCompra pedidoCompra;
  DateTime dataPrevisao;
  DateTime dataReal;
  void Function() verificarAtraso;

  PedidoCompraAtraso(this.pedidoCompra, this.dataPrevisao, this.dataReal, {required this.verificarAtraso});
}

// Classe de PedidoVendaFreteExpresso
class PedidoVendaFreteExpresso {
  PedidoVenda pedidoVenda;
  double taxaExpresso;
  DateTime prazoEntrega;
  void Function() calcularFreteExpresso;

  PedidoVendaFreteExpresso(this.pedidoVenda, this.taxaExpresso, this.prazoEntrega, {required this.calcularFreteExpresso});
}

// Classe de ProdutoRestricaoIdade
class ProdutoRestricaoIdade {
  Produto produto;
  int idadeMinima;
  void Function() verificarRestricao;

  ProdutoRestricaoIdade(this.produto, this.idadeMinima, {required this.verificarRestricao});
}

// Classe de ClientePreferencias
class ClientePreferencias {
  Cliente cliente;
  List<String> categoriasFavoritas;
  List<String> metodosPagamento;
  void Function() atualizarPreferencias;

  ClientePreferencias(this.cliente,
      {required this.categoriasFavoritas, required this.metodosPagamento, required this.atualizarPreferencias});
}

// Classe Armazem
class Armazem {
  String nome;
  Endereco endereco;

  Armazem({required this.nome, required this.endereco});
}

// Classe ArmazemEstoque
class ArmazemEstoque {
  Armazem armazem;
  List<ProdutoEstoque> produtosEstoque;
  List<Map<String, dynamic>> historicoAlteracoes;

  ArmazemEstoque({required this.armazem, required this.produtosEstoque, required this.historicoAlteracoes});
}

// Classe Empresa
class Empresa {
  String nome;
  Endereco endereco;
  List<Departamento> departamentos;

  Empresa({required this.nome, required this.endereco, required this.departamentos});
}

// Classe FolhaPagamento
class FolhaPagamento {
  Empresa empresa;
  DateTime dataPagamento;

  FolhaPagamento({required this.empresa, required this.dataPagamento});

  double calcularFolhaPagamento() {
    double total = 0;
    for (var departamento in empresa.departamentos) {
      for (var funcionario in departamento.funcionarios) {
        total += funcionario.salario;
      }
    }
    return total;
  }
}

// Classe RotaEntrega
class RotaEntrega {
  Endereco origem;
  Endereco destino;
  double distancia;

  double calcularFrete() {
    return distancia * 10;
  }

  RotaEntrega({required this.origem, required this.destino, required this.distancia});
}

// Classe SistemaIntegrado
class SistemaIntegrado {
  List<Compra> compras;
  List<Venda> vendas;
  ArmazemEstoque armazemEstoque;
  RotaEntrega rotaEntrega;

  SistemaIntegrado(
      {required this.compras, required this.vendas, required this.armazemEstoque, required this.rotaEntrega});
}

// Classe ItemVenda
class ItemVenda {
  Produto produto;
  int quantidade;
  double precoUnitario;

  ItemVenda({required this.produto, required this.quantidade, required this.precoUnitario});
}

// Classe ItemCompra
class ItemCompra {
  Produto produto;
  int quantidade;
  double precoUnitario;

  ItemCompra({required this.produto, required this.quantidade, required this.precoUnitario});
}

// Classe Telefone
class Telefone {
  String ddd;
  String numero;

  Telefone(this.ddd, this.numero);
}

// Classe Dimensao
class Dimensao {
  double largura;
  double altura;
  double profundidade;

  Dimensao(this.largura, this.altura, this.profundidade);
}

// Classe Periodo
class Periodo {
  DateTime inicio;
  DateTime fim;

  Periodo(this.inicio, this.fim);
}
```

Exemplos de exercícios:


### Exercício 1 – Nível Fácil: Criar um Fornecedor com Referência Anônima
Enunciado:
Crie um objeto do tipo Fornecedor usando referência anônima e parâmetros nomeados. Em seguida, exiba o nome do fornecedor e execute a ação associada.

```dart
void main() {
  var fornecedor = Fornecedor(
    "Fornecedor A",
    "00.000.000/0001-00",
    Endereco(
      rua: "Rua dos Fornecedores, 123",
      cep: "00000-000",
      cidade: Cidade(
        nome: "São Paulo",
        estado: Estado(
          nome: "São Paulo",
          pais: Pais(nome: "Brasil"),
        ),
      ),
    ),
    acaoFornecedor: () {
      print("Ação do Fornecedor A executada!");
    },
  );

  print("Fornecedor: ${fornecedor.nome}");
  fornecedor.acaoFornecedor();
}
```

### Exercício 2 – Nível Fácil: Criar um Produto com Referência Anônima
Enunciado:
Crie um objeto do tipo Produto com referência anônima, utilizando classes auxiliares para tipo, categoria, unidade de medida e fornecedor. Em seguida, exiba o nome e o preço do produto e execute a função de ajuste de preço.

```dart
void main() {
  var produto = Produto(
    "Notebook",
    3500.00,
    TipoProduto(
      "Eletrônico",
      exibirTipo: () {
        print("Tipo: Eletrônico");
      },
    ),
    CategoriaProduto(
      "Informática",
      "Produtos de TI",
      exibirCategoria: () {
        print("Categoria: Informática");
      },
    ),
    unidadeMedida: UnidadeMedida(
      "Unidade",
      simbolo: "UN",
      atualizarUnidade: () {
        print("Unidade atualizada");
      },
    ),
    fornecedor: Fornecedor(
      "Fornecedor A",
      "00.000.000/0001-00",
      Endereco(
        rua: "Rua dos Fornecedores, 123",
        cep: "00000-000",
        cidade: Cidade(
          nome: "São Paulo",
          estado: Estado(
            nome: "São Paulo",
            pais: Pais(nome: "Brasil"),
          ),
        ),
      ),
      acaoFornecedor: () {
        print("Ação do Fornecedor A executada!");
      },
    ),
    ajustarPreco: () {
      print("Preço do Notebook ajustado!");
    },
  );

  print("Produto: ${produto.nome} - R\$${produto.preco}");
  produto.ajustarPreco();
}
```

### Exercício 3 – Nível Médio: Criar um Pedido de Venda com Referência Anônima
Enunciado:
Crie um objeto PedidoVenda com referência anônima, que contenha um Cliente e uma lista de ItemVenda com um Produto. Utilize funções anônimas para concluir a venda. Exiba os detalhes do pedido e execute a função de conclusão.

```dart
void main() {
  var pedidoVenda = PedidoVenda(
    Cliente(
      "Cliente B",
      endereco: Endereco(
        rua: "Rua dos Clientes, 789",
        cep: "00000-000",
        cidade: Cidade(
          nome: "Rio de Janeiro",
          estado: Estado(
            nome: "Rio de Janeiro",
            pais: Pais(nome: "Brasil"),
          ),
        ),
      ),
      atualizarEndereco: () {
        print("Endereço do Cliente B atualizado");
      },
    ),
    itens: [
      ItemVenda(
        produto: Produto(
          "Geladeira",
          2500.00,
          TipoProduto(
            "Eletrodoméstico",
            exibirTipo: () {
              print("Tipo: Eletrodoméstico");
            },
          ),
          CategoriaProduto(
            "Cozinha",
            "Produtos para cozinha",
            exibirCategoria: () {
              print("Categoria: Cozinha");
            },
          ),
          unidadeMedida: UnidadeMedida(
            "Unidade",
            simbolo: "UN",
            atualizarUnidade: () {
              print("Unidade atualizada");
            },
          ),
          fornecedor: Fornecedor(
            "Fornecedor B",
            "11.111.111/0001-11",
            Endereco(
              rua: "Rua dos Fornecedores, 456",
              cep: "00000-000",
              cidade: Cidade(
                nome: "Belo Horizonte",
                estado: Estado(
                  nome: "Minas Gerais",
                  pais: Pais(nome: "Brasil"),
                ),
              ),
            ),
            acaoFornecedor: () {
              print("Ação do Fornecedor B executada!");
            },
          ),
          ajustarPreco: () {
            print("Preço da Geladeira ajustado!");
          },
        ),
        quantidade: 1,
        precoUnitario: 2500.00,
      ),
    ],
    concluirVenda: () {
      print("Venda concluída com sucesso!");
    },
  );

  print("Pedido de Venda:");
  print("Cliente: ${pedidoVenda.cliente.nome}");
  print("Produto: ${pedidoVenda.itens[0].produto.nome}");
  print("Quantidade: ${pedidoVenda.itens[0].quantidade}");

  pedidoVenda.concluirVenda();
}
```

### Exercício 4 – Nível Avançado: Criar um Pedido de Compra com Frete e Pagamento
Enunciado:
Crie um objeto PedidoCompraFrete que contenha um PedidoCompra com Fornecedor e uma lista de ItemCompra com Produto. Inclua uma função anônima para calcular o frete. Em seguida, crie um objeto PedidoCompraPagamento para simular o pagamento do pedido. Exiba as informações e execute as funções anônimas.

```dart
void main() {
  var pedidoCompraFrete = PedidoCompraFrete(
    PedidoCompra(
      Fornecedor(
        "Fornecedor Z",
        "33.333.333/0001-33",
        Endereco(
          rua: "Rua dos Fornecedores, 202",
          cep: "00000-000",
          cidade: Cidade(
            nome: "Curitiba",
            estado: Estado(
              nome: "Paraná",
              pais: Pais(nome: "Brasil"),
            ),
          ),
        ),
        acaoFornecedor: () {
          print("Fornecedor Z acionado");
        },
      ),
      itens: [
        ItemCompra(
          produto: Produto(
            "Mesa de Escritório",
            800.00,
            TipoProduto("Móvel", exibirTipo: () {
              print("Tipo: Móvel");
            }),
            CategoriaProduto("Escritório", "Móveis para escritório", exibirCategoria: () {
              print("Categoria: Escritório");
            }),
            unidadeMedida: UnidadeMedida("Unidade", simbolo: "UN", atualizarUnidade: () {
              print("Unidade atualizada");
            }),
            fornecedor: Fornecedor(
              "Fornecedor Z",
              "33.333.333/0001-33",
              Endereco(
                rua: "Rua dos Fornecedores, 202",
                cep: "00000-000",
                cidade: Cidade(
                  nome: "Curitiba",
                  estado: Estado(
                    nome: "Paraná",
                    pais: Pais(nome: "Brasil"),
                  ),
                ),
              ),
              acaoFornecedor: () {
                print("Fornecedor Z acionado");
              },
            ),
            ajustarPreco: () {
              print("Preço da Mesa de Escritório ajustado!");
            },
          ),
          quantidade: 5,
          precoUnitario: 800.00,
        ),
      ],
      realizarCompra: () {
        print("Pedido de Compra realizado com sucesso!");
      },
    ),
    150.00,
    DateTime.now(),
    calcularFrete: () {
      print("Frete calculado com base na distância e quantidade.");
    },
  );

  var pedidoCompraPagamento = PedidoCompraPagamento(
    PedidoCompra(
      Fornecedor(
        "Fornecedor Z",
        "33.333.333/0001-33",
        Endereco(
          rua: "Rua dos Fornecedores, 202",
          cep: "00000-000",
          cidade: Cidade(
            nome: "Curitiba",
            estado: Estado(
              nome: "Paraná",
              pais: Pais(nome: "Brasil"),
            ),
          ),
        ),
        acaoFornecedor: () {
          print("Fornecedor Z acionado");
        },
      ),
      itens: [
        ItemCompra(
          produto: Produto(
            "Mesa de Escritório",
            800.00,
            TipoProduto("Móvel", exibirTipo: () {
              print("Tipo: Móvel");
            }),
            CategoriaProduto("Escritório", "Móveis para escritório", exibirCategoria: () {
              print("Categoria: Escritório");
            }),
            unidadeMedida: UnidadeMedida("Unidade", simbolo: "UN", atualizarUnidade: () {
              print("Unidade atualizada");
            }),
            fornecedor: Fornecedor(
              "Fornecedor Z",
              "33.333.333/0001-33",
              Endereco(
                rua: "Rua dos Fornecedores, 202",
                cep: "00000-000",
                cidade: Cidade(
                  nome: "Curitiba",
                  estado: Estado(
                    nome: "Paraná",
                    pais: Pais(nome: "Brasil"),
                  ),
                ),
              ),
              acaoFornecedor: () {
                print("Fornecedor Z acionado");
              },
            ),
            ajustarPreco: () {
              print("Preço da Mesa de Escritório ajustado!");
            },
          ),
          quantidade: 5,
          precoUnitario: 800.00,
        ),
      ],
      realizarCompra: () {
        print("Pedido de Compra realizado com sucesso!");
      },
    ),
    4500.00,
    DateTime.now(),
    realizarPagamentoCompra: () {
      print("Pagamento do Pedido de Compra efetuado!");
    },
  );

  print("Pedido de Compra com Frete:");
  print("Fornecedor: ${pedidoCompraFrete.pedidoCompra.fornecedor.nome}");
  print("Produto: ${pedidoCompraFrete.pedidoCompra.itens[0].produto.nome}");
  print("Quantidade: ${pedidoCompraFrete.pedidoCompra.itens[0].quantidade}");

  pedidoCompraFrete.calcularFrete();
  pedidoCompraPagamento.realizarPagamentoCompra();
}
```

### Exercício 5 – Nível Avançado: Criar um Pedido de Venda com Entrega e Ações Compostas
Enunciado:
Crie um objeto PedidoVendaEntrega que contenha um PedidoVenda, que por sua vez contém um Cliente com endereço completo e uma lista de ItemVenda com Produto. Inclua funções anônimas para organizar a entrega e concluir a venda. Exiba o cenário completo e execute as funções anônimas para simular o fluxo de entrega.

```dart
void main() {
  var pedidoVendaEntrega = PedidoVendaEntrega(
    PedidoVenda(
      Cliente(
        "Cliente C",
        endereco: Endereco(
          rua: "Rua dos Clientes, 987",
          cep: "00000-000",
          cidade: Cidade(
            nome: "Salvador",
            estado: Estado(
              nome: "Bahia",
              pais: Pais(nome: "Brasil"),
            ),
          ),
        ),
        atualizarEndereco: () {
          print("Endereço do Cliente C atualizado!");
        },
      ),
      itens: [
        ItemVenda(
          produto: Produto(
            "Caixa de Som",
            299.99,
            TipoProduto("Eletrônico", exibirTipo: () {
              print("Tipo: Eletrônico");
            }),
            CategoriaProduto("Áudio", "Aparelhos de som", exibirCategoria: () {
              print("Categoria: Áudio");
            }),
            unidadeMedida: UnidadeMedida("Unidade", simbolo: "UN", atualizarUnidade: () {
              print("Unidade atualizada");
            }),
            fornecedor: Fornecedor(
              "Fornecedor C",
              "22.222.222/0001-22",
              Endereco(
                rua: "Rua dos Fornecedores, 789",
                cep: "00000-000",
                cidade: Cidade(
                  nome: "Salvador",
                  estado: Estado(
                    nome: "Bahia",
                    pais: Pais(nome: "Brasil"),
                  ),
                ),
              ),
              acaoFornecedor: () {
                print("Ação do Fornecedor C executada!");
              },
            ),
            ajustarPreco: () {
              print("Preço da Caixa de Som ajustado!");
            },
          ),
          quantidade: 2,
          precoUnitario: 299.99,
        ),
      ],
      concluirVenda: () {
        print("Venda concluída com sucesso!");
      },
    ),
    DateTime.now().add(Duration(days: 2)),
    Endereco(
      rua: "Rua da Entrega, 321",
      cep: "00000-000",
      cidade: Cidade(
        nome: "Fortaleza",
        estado: Estado(
          nome: "Ceará",
          pais: Pais(nome: "Brasil"),
        ),
      ),
    ),
    organizarEntrega: () {
      print("Entrega organizada para o Pedido de Venda!");
    },
  );

  print("Pedido de Venda:");
  print("Cliente: ${pedidoVendaEntrega.pedidoVenda.cliente.nome}");
  print("Produto: ${pedidoVendaEntrega.pedidoVenda.itens[0].produto.nome}");
  print("Quantidade: ${pedidoVendaEntrega.pedidoVenda.itens[0].quantidade}");
  print("Data de Entrega: ${pedidoVendaEntrega.dataEntrega}");
  print("Endereço de Entrega: ${pedidoVendaEntrega.enderecoEntrega.rua}");

  pedidoVendaEntrega.pedidoVenda.concluirVenda();
  pedidoVendaEntrega.organizarEntrega();
}
```

---

### Exercícios

Exercício 1: Cadastrando um Fornecedor
Uma distribuidora precisa ser cadastrada no sistema com seu nome, CNPJ, endereço completo e uma ação que será executada quando o fornecedor for acionado. Ao final, exiba o nome do fornecedor e execute a ação.

Exercício 2: Cadastrando um Produto
Cadastre um produto no sistema com todas as suas informações: nome, preço, tipo, categoria, unidade de medida e fornecedor responsável. O produto deve ter uma ação de ajuste de preço associada. Ao final, exiba o nome e o preço do produto e execute o ajuste.

Exercício 3: Registrando um Pedido de Venda
Um cliente realizou uma compra. Registre o pedido de venda com os dados do cliente e ao menos um produto na lista de itens. O pedido deve poder ser concluído ao final. Exiba o nome do cliente, o produto e a quantidade, e execute a conclusão da venda.

Exercício 4: Cadastrando um Funcionário
Cadastre um funcionário com seu nome, cargo e salário base. O sistema deve permitir calcular o bônus salarial a partir de um tipo de bônus informado na chamada. Exiba os dados do funcionário e execute o cálculo passando um tipo de bônus.

Exercício 5: Registrando um Lote de Produto
Um produto chegou ao estoque em lote com número de identificação e datas de fabricação e validade. Registre esse lote no sistema e implemente a lógica de verificação. Exiba as informações do lote e execute a verificação.

Exercício 6: Registrando um Pedido de Compra
O setor de compras realizou um pedido a um fornecedor com ao menos um produto na lista de itens. Registre esse pedido no sistema. O pedido deve poder ser efetivado ao final. Exiba o nome do fornecedor e os produtos e execute a compra.

Exercício 7: Controlando o Estoque de um Produto
Registre a entrada de um produto no estoque com a quantidade disponível. O sistema deve permitir atualizar essa quantidade. Exiba o nome do produto e a quantidade atual, e execute a atualização.

Exercício 8: Registrando uma Avaliação de Produto
Um cliente avaliou um produto com uma nota de estrelas e deixou um comentário. Registre essa avaliação no sistema e execute o registro. Exiba o nome do produto, a nota e o comentário.

Exercício 9: Aplicando Desconto em um Produto
Um produto receberá um desconto percentual com data de início e fim definidos. Registre esse desconto no sistema. Exiba o nome do produto e o percentual e execute a aplicação do desconto.

Exercício 10: Calculando Frete de um Pedido de Compra
Associe um valor de frete e uma data de envio a um pedido de compra. O sistema deve permitir calcular o frete. Exiba o nome do fornecedor, o produto e o valor do frete, e execute o cálculo.

Exercício 11: Organizando a Entrega de um Pedido de Venda
Um pedido de venda precisa ser entregue em um endereço diferente do cadastrado, com data prevista definida. Registre essa entrega no sistema. Exiba o nome do cliente, o endereço e a data, e execute a organização da entrega.

Exercício 12: Registrando a Garantia de um Produto
Cadastre a garantia de um produto informando a duração em anos e o tipo de cobertura. O sistema deve permitir ativar a garantia. Exiba o nome do produto, os anos e o tipo, e execute a ativação.

Exercício 13: Aplicando Desconto em um Pedido de Venda
Aplique um desconto percentual a um pedido de venda já registrado. O sistema deve executar a aplicação e informar o valor descontado. Exiba o nome do cliente, o produto e o percentual, e execute a aplicação.

Exercício 14: Registrando a Disponibilidade de um Produto
Registre no catálogo se um produto está disponível para venda e qual o seu status atual. O sistema deve permitir atualizar esse status. Exiba o nome do produto e o status, e execute a atualização.

Exercício 15: Definindo Condições de Pagamento com um Fornecedor
O setor financeiro acordou condições de pagamento com um fornecedor: número de parcelas e valor de cada parcela. Registre essas condições no sistema. Exiba o nome do fornecedor, as parcelas e o valor, e execute o registro.

Exercício 16: Monitorando Atraso em Pedido de Compra
Um pedido de compra chegou após a data prevista. Registre a data de previsão e a data real de chegada, e implemente a lógica de verificação de atraso. Exiba as datas e execute a verificação.

Exercício 17: Registrando a Alteração de Preço de um Produto
O preço de um produto foi reajustado. Registre no histórico a data da alteração, o valor anterior e o novo valor, e implemente o registro da mudança. Exiba os dois preços e execute o registro.

Exercício 18: Calculando Frete Expresso de um Pedido de Venda
Um cliente solicitou entrega expressa. Associe a taxa do frete expresso e o prazo de entrega ao pedido de venda. O sistema deve permitir calcular o custo. Exiba o nome do cliente, a taxa e o prazo, e execute o cálculo.

Exercício 19: Cadastrando Restrição de Idade em Produto
Um produto possui restrição de venda por faixa etária. Cadastre essa restrição no sistema informando a idade mínima exigida. O sistema deve permitir verificar se a restrição é atendida. Exiba o nome do produto e a restrição, e execute a verificação.

Exercício 20: Registrando Preferências de um Cliente
Registre as preferências de um cliente no sistema, incluindo suas categorias de produtos favoritas e os métodos de pagamento aceitos. O sistema deve permitir atualizar essas preferências. Exiba o nome do cliente e execute a atualização.

Exercício 21: Cadastrando o Telefone de um Fornecedor
O setor de compras precisa registrar o telefone de contato de um fornecedor, com DDD e número. Exiba o telefone formatado.

Exercício 22: Registrando as Dimensões de um Produto
Para fins de cálculo logístico, registre as dimensões físicas de um produto: largura, altura e profundidade em centímetros. Exiba as medidas do produto.

Exercício 23: Definindo o Período de uma Campanha Promocional
Uma campanha promocional tem prazo definido de início e fim. Registre o período da campanha no sistema. Exiba as datas de início e fim da campanha.