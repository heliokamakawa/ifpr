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

  Produto(this.nome, this.preco, this.tipo, this.categoria, {required this.unidadeMedida, required this.fornecedor, required this.ajustarPreco});
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

// Nova Classe Armazem
class Armazem {
  String nome;
  Endereco endereco;

  Armazem({required this.nome, required this.endereco});
}

// Nova Classe ArmazemEstoque
class ArmazemEstoque {
  Armazem armazem;
  List<ProdutoEstoque> produtosEstoque;
  List<Map<String, dynamic>> historicoAlteracoes;

  ArmazemEstoque({required this.armazem, required this.produtosEstoque, required this.historicoAlteracoes});
}

// Nova Classe Empresa
class Empresa {
  String nome;
  Endereco endereco;
  List<Departamento> departamentos;

  Empresa({required this.nome, required this.endereco, required this.departamentos});
}

// Nova Classe FolhaPagamento
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

// Nova Classe RotaEntrega
class RotaEntrega {
  Endereco origem;
  Endereco destino;
  double distancia;
  double calcularFrete() {
    return distancia * 10;
  }

  RotaEntrega({required this.origem, required this.destino, required this.distancia});
}

// Nova Classe SistemaIntegrado
class SistemaIntegrado {
  List<Compra> compras;
  List<Venda> vendas;
  ArmazemEstoque armazemEstoque;
  RotaEntrega rotaEntrega;

  SistemaIntegrado(
      {required this.compras, required this.vendas, required this.armazemEstoque, required this.rotaEntrega});
}

// Nova Classe ItemVenda
class ItemVenda {
  Produto produto;
  int quantidade;
  double precoUnitario;

  ItemVenda({required this.produto, required this.quantidade, required this.precoUnitario});
}

// Nova Classe ItemCompra
class ItemCompra {
  Produto produto;
  int quantidade;
  double precoUnitario;

  ItemCompra({required this.produto, required this.quantidade, required this.precoUnitario});
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
Crie um objeto do tipo Produto com referência anônima, utilizando classes auxiliares para tipo, categoria e unidade de medida. Em seguida, exiba o nome e o preço do produto e execute a função de ajuste de preço.

```dart
void main() {
  var produto = Produto(
    "Notebook",
    3500.00,
    TipoProduto("Eletrônico", exibirTipo: () {
      print("Tipo: Eletrônico");
    }),
    CategoriaProduto("Informática", "Produtos de TI", exibirCategoria: () {
      print("Categoria: Informática");
    }),
    unidadeMedida: UnidadeMedida("Unidade", simbolo: "UN", atualizarUnidade: () {
      print("Unidade atualizada");
    }),
    fornecedor: Fornecedor(
      "Fornecedor X",
      "11.111.111/0001-11",
      Endereco(
        rua: "Av. dos Fornecedores, 456",
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
        print("Fornecedor X acionado");
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
Crie um objeto PedidoVenda com referência anônima, que contenha um objeto Cliente e um objeto Produto. Utilize funções anônimas para concluir a venda. Exiba os detalhes do pedido e execute a função de conclusão.

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
    Produto(
      "Geladeira",
      2500.00,
      TipoProduto("Eletrodoméstico", exibirTipo: () {
        print("Tipo: Eletrodoméstico");
      }),
      CategoriaProduto("Cozinha", "Produtos para cozinha", exibirCategoria: () {
        print("Categoria: Cozinha");
      }),
      unidadeMedida: UnidadeMedida("Unidade", simbolo: "UN", atualizarUnidade: () {
        print("Unidade atualizada");
      }),
      fornecedor: Fornecedor(
        "Fornecedor Y",
        "22.222.222/0001-22",
        Endereco(
          rua: "Av. dos Fornecedores, 101",
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
          print("Fornecedor Y acionado");
        },
      ),
      ajustarPreco: () {
        print("Preço da Geladeira ajustado!");
      },
    ),
    1,
    concluirVenda: () {
      print("Venda concluída com sucesso!");
    },
  );

  print("Pedido de Venda:");
  print("Cliente: ${pedidoVenda.cliente.nome}");
  print("Produto: ${pedidoVenda.produto.nome}");
  print("Quantidade: ${pedidoVenda.quantidade}");

  pedidoVenda.concluirVenda();
}
```

Exercício 4 – Nível Avançado: Criar um Pedido de Compra com Frete e Pagamento
Enunciado:
Crie um objeto PedidoCompraFrete que contenha um objeto PedidoCompra, com um Fornecedor e Produto, e inclua uma função anônima para calcular o frete. Em seguida, crie um objeto PedidoCompraPagamento para simular o pagamento do pedido. Exiba as informações e execute as funções anônimas.

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
      Produto(
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
      5,
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
      Produto(
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
      5,
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
  print("Produto: ${pedidoCompraFrete.pedidoCompra.produto.nome}");
  print("Quantidade: ${pedidoCompraFrete.pedidoCompra.quantidade}");

  pedidoCompraFrete.calcularFrete();
  pedidoCompraPagamento.realizarPagamentoCompra();
}
```

Exercício 5 – Nível Avançado: Criar um Pedido de Venda com Entrega e Ações Compostas
Enunciado:
Crie um objeto PedidoVendaEntrega que contenha um PedidoVenda, que por sua vez contém um Cliente com endereço completo e um Produto. Inclua funções anônimas para organizar a entrega e concluir a venda. Exiba o cenário completo e execute as funções anônimas para simular o fluxo de entrega.

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
      Produto(
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
          "Fornecedor W",
          "44.444.444/0001-44",
          Endereco(
            rua: "Av. dos Fornecedores, 303",
            cep: "00000-000",
            cidade: Cidade(
              nome: "Goiânia",
              estado: Estado(
                nome: "Goiás",
                pais: Pais(nome: "Brasil"),
              ),
            ),
          ),
          acaoFornecedor: () {
            print("Fornecedor W acionado");
          },
        ),
        ajustarPreco: () {
          print("Preço da Caixa de Som ajustado!");
        },
      ),
      2,
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
  print("Produto: ${pedidoVendaEntrega.pedidoVenda.produto.nome}");
  print("Quantidade: ${pedidoVendaEntrega.pedidoVenda.quantidade}");
  print("Data de Entrega: ${pedidoVendaEntrega.dataEntrega}");
  print("Endereço de Entrega: ${pedidoVendaEntrega.enderecoEntrega.rua}");

  pedidoVendaEntrega.pedidoVenda.concluirVenda();
  pedidoVendaEntrega.organizarEntrega();
}
}
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






