# Alterações necessárias para Entidade com associação
Passos para implementar uma entidade que possui associação com outra, como por exemplo uma Bike associada a um Fabricante.

## Etapas Gerais
Os passos necessários são: 
1. Criar a tabela da nova entidade no script do banco:  
- Definir o comando de criação (CREATE TABLE);  
- Definir os comandos de inserção (INSERT INTO);  
- Adicionar ambos nas listas globais de criação e inserção;  
- Caso a aplicação já esteja em execução, resetar o banco ou alterar a versão.  

2. Criar o DAO (Data Access Object) da entidade;  
3. Alterar o widget lista para carregar dados do banco (substituir mocks);  
4. Alterar o widget formulário para salvar e carregar dados do banco.  


## Script
Exemplo com a entidade Bike, que está associada ao Fabricante.

```dart
static const String _criarTabelaBike = '''
  CREATE TABLE bike (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    numero_serie TEXT,
    fabricante_id INTEGER NOT NULL,
    data_cadastro TEXT NOT NULL,
    ativa INTEGER NOT NULL DEFAULT 1,
    FOREIGN KEY (fabricante_id) REFERENCES fabricante(id) ON DELETE CASCADE
  )
''';

/**
IMPORTANTE: Como há associação, é obrigatório que as inserções da tabela associada (fabricante) já existam antes de inserir os dados da nova tabela.
**/
static const List<String> _insercoesBike = [
    "INSERT INTO bike (nome, numero_serie, fabricante_id, data_cadastro, ativa) VALUES ('Spin Trainer Pro', 'SPN-001-A', 1, '2023-01-15 10:00:00', 1)",
    "INSERT INTO bike (nome, numero_serie, fabricante_id, data_cadastro, ativa) VALUES ('Velocidade Studio', 'VLS-002-B', 2, '2023-02-20 11:30:00', 1)",
    "INSERT INTO bike (nome, numero_serie, fabricante_id, data_cadastro, ativa) VALUES ('Indoor Cycle X', NULL, 3, '2023-03-10 09:00:00', 1)",
    "INSERT INTO bike (nome, numero_serie, fabricante_id, data_cadastro, ativa) VALUES ('Fitness Ride Max', 'FTR-004-C', 4, '2023-04-05 14:15:00', 1)",
    "INSERT INTO bike (nome, numero_serie, fabricante_id, data_cadastro, ativa) VALUES ('Power Spin 500', 'PWS-005-D', 5, '2023-05-12 16:00:00', 1)",
    "INSERT INTO bike (nome, numero_serie, fabricante_id, data_cadastro, ativa) VALUES ('Essential Spin', NULL, 1, '2023-06-01 08:45:00', 0)", // Uma bike de spinning inativa
    "INSERT INTO bike (nome, numero_serie, fabricante_id, data_cadastro, ativa) VALUES ('Compact Spin 2.0', 'CMP-006-E', 2, '2023-07-20 13:00:00', 1)",
  ];

```
###  Inclusão nas listas de execução
Com os comandos definidos, é necessário incluir estas variáveis na lista de execução.

```dart
// Variável pública com todos os comandos de criação
  static const List<String> comandosCriarTabelas = [
    ...
    _criarTabelaBike, //inclusão de criar bike
  ];

  // Variável pública com todas as inserções
  static const List<List<String>> comandosInsercoes = [
    ...
    _insercoesBike, //inclusão das inserções da bike
  ];
```

## Definição do DAO 
Criação do DAO responsável pelas operações com a tabela Bike.

```dart
class DAOBike {
  Future<int> salvar(DTOBike bike) async {
  }

  Future<List<DTOBike>> buscarTodos() async {
  }

  Future<DTOBike?> buscarPorId(int id) async {
  }

  Future<int> excluir(int id) async {
  }
}
```
**IMPORTANTE:** Permidito utilizar IA, mas é essencial revisar, validar e manter o padrão do projeto.

### Salvar/alterar
Neste método, tratamos tanto **inserção/alteração** quanto atualização de registros. Como há **associação**, é necessário garantir que fabricante.id seja válido.


```dart
class DAOBike {

  Future<int> salvar(DTOBike bike) async {
    final db = await ConexaoSQLite.database;

    // Mapeia o DTOBike para um Map<String, dynamic> para o banco de dados
    final Map<String, dynamic> dados = {
      'nome': bike.nome,
      'numero_serie': bike.numeroSerie, 
      'fabricante_id': bike.fabricante.id, //salva o id e não o fabricante
      'data_cadastro': bike.dataCadastro.toIso8601String(), 
      'ativa': bike.ativa ? 1 : 0, 
    };

    if (bike.id != null) {
      return await db.update(
        _tabela,
        dados,
        where: 'id = ?',
        whereArgs: [bike.id],
      );
    } else {
      return await db.insert(
        _tabela,
        dados,
        conflictAlgorithm: ConflictAlgorithm.replace, 
      );
    }
  }
}
```

### buscarTodos

Diferencial com associação: o objeto DTOBike inclui um DTOFabricante. Neste exemplo, o nome está em branco e pode ser preenchido em uma consulta posterior, se necessário.

```dart
class DAOBike {
  Future<List<DTOBike>> buscarTodos() async {
    final db = await ConexaoSQLite.database;
    final List<Map<String, dynamic>> maps = await db.query(_tabela);

    final List<DTOBike> bikes = [];
    for (var map in maps) {
      final int fabricanteId = map['fabricante_id'];
      // convertendo id para DTO Fabricante
      final DTOFabricante? fabricante = await _daoFabricante.buscarPorId(fabricanteId);

      // Garante que o fabricante existe 
      if (fabricante != null) {
        bikes.add(
          DTOBike(
            id: map['id'],
            nome: map['nome'],
            numeroSerie: map['numero_serie'],
            fabricante: fabricante,
            dataCadastro: DateTime.parse(map['data_cadastro']),
            ativa: map['ativa'] == 1,
          ),
        );
      } else {
        throw Exception('Fabricante com ID $id não encontrado.');
        
      }
    }
    return bikes;
  }
```

### buscarPorId

```dart
class DAOBike {
  Future<DTOBike?> buscarPorId(int id) async {
    final db = await ConexaoSQLite.database;
    //busca dados em map
    final List<Map<String, dynamic>> maps = await db.query(
      _tabela,
      where: 'id = ?',
      whereArgs: [id],
      limit: 1, // Limita a 1 resultado, já que o ID é único
    );

    if (maps.isNotEmpty) {
      final Map<String, dynamic> map = maps.first;
      final int fabricanteId = map['fabricante_id'];
      // Busca o DTOFabricante completo usando o DAOFabricante
      final DTOFabricante? fabricante = await _daoFabricante.buscarPorId(fabricanteId);

      if (fabricante != null) {
        return DTOBike(
          id: map['id'],
          nome: map['nome'],
          numeroSerie: map['numero_serie'],
          fabricante: fabricante,
          dataCadastro: DateTime.parse(map['data_cadastro']),
          ativa: map['ativa'] == 1,
        );
      } else {
        // se não encontrar fabricante
        throw Exception('Fabricante com ID $id não encontrado.');
      }
    }
    return null; // Retorna null se nenhuma bike for encontrada com o ID fornecido
  }
}
```

### excluir

```dart
class DAOBike {
    Future<int> excluir(int id) async {
    final db = await ConexaoSQLite.database;
    return await db.delete(
      _tabela,
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
```

## Widget Lista
Estavamos utilizando mock de dados. Necessário retirar e fazer a chamada do dao lista. 

```dart
class _ListaBikesState extends State<ListaBikes> {
  ...
  late DAOBike dao; //declaração

  @override
  void initState() {
    super.initState();
    dao = DAOBike(); //criação do dao
    _carregarBikes();
  }
```

```dart
Future<void> _carregarBikes() async {
    ...
    final bikes = await dao.buscarTodos(); //retirando mock e buscando dados via dao
    ....
  }
```

## Excluir (Lista)

```dart
Future<void> _excluirBike(DTOBike bike) async {
    ...
      try {
        dao.excluir(bike.id!); //chamada dao excluir
    ...
  }
```

## Alterar
Alterar não precisa de alterações
```dart
void _editarBike(DTOBike bike) {
    Navigator.pushNamed(
      context,
      Rotas.cadastroBike,
      arguments: bike,
    ).then((_) => _carregarBikes());
  }
```

## Formulário
Estavamos utilizando mock de dados. Necessário retirar e fazer a chamada do dao lista.

```dart
void _salvar() async {
    ...
      await dao.salvar(dto); //salvando via dao
      _limparFormulario();
      Navigator.pushNamed(context, Rotas.listaBikes); //redirecionamento para lista

    }
  }
```
