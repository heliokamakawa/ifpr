# Model de Estado e Cidade

## Ideia principal

Model representa uma entidade principal do sistema.

Neste projeto, os models principais são:

```text
Estado
Cidade
```

O SQLite retorna dados como `Map<String, dynamic>`.

O aplicativo trabalha melhor com objetos.

Por isso, os models têm:

```text
fromMap -> Map para objeto
toMap   -> objeto para Map
```

Mas existe um cuidado importante:

```text
Model representa uma tabela principal.
DTO representa um resultado específico de consulta.
```

No nosso caso:

| Classe | Representa | Usada para |
| ------ | ---------- | ---------- |
| `Estado` | tabela `estado` | cadastrar, alterar e listar estados |
| `Cidade` | tabela `cidade` | cadastrar, alterar, excluir e buscar cidade por id |
| `CidadeComEstadoDto` | resultado de `cidade + estado` | listar cidade já mostrando nome e sigla do estado |

## Estado

```dart
class Estado {
  Estado({this.id, required String nome, required String sigla})
    : nome = nome.trim(),
      sigla = sigla.trim().toUpperCase() {
    if (this.nome.isEmpty) {
      throw ArgumentError('Nome do estado e obrigatorio.');
    }

    if (this.sigla.length != 2) {
      throw ArgumentError('Sigla do estado deve ter 2 caracteres.');
    }
  }

  final int? id;
  final String nome;
  final String sigla;

  factory Estado.fromMap(Map<String, dynamic> map) {
    return Estado(
      id: map['id'] as int,
      nome: map['nome'] as String,
      sigla: map['sigla'] as String,
    );
  }

  Map<String, dynamic> toMap({bool incluirId = false}) {
    return {
      if (incluirId && id != null) 'id': id,
      'nome': nome,
      'sigla': sigla,
    };
  }

  String get descricao => '$nome ($sigla)';
}
```

## Cidade

`Cidade` representa somente a tabela `cidade`.

Ela guarda `estadoId`, porque a tabela `cidade` tem a coluna `estado_id`.

Ela não guarda `estadoNome` nem `estadoSigla`.

```dart
class Cidade {
  Cidade({this.id, required String nome, required this.estadoId})
    : nome = nome.trim() {
    if (this.nome.isEmpty) {
      throw ArgumentError('Nome da cidade e obrigatorio.');
    }

    if (estadoId <= 0) {
      throw ArgumentError('Estado da cidade e obrigatorio.');
    }
  }

  final int? id;
  final String nome;
  final int estadoId;

  factory Cidade.fromMap(Map<String, dynamic> map) {
    return Cidade(
      id: map['id'] as int,
      nome: map['nome'] as String,
      estadoId: map['estado_id'] as int,
    );
  }

  Map<String, dynamic> toMap({bool incluirId = false}) {
    return {
      if (incluirId && id != null) 'id': id,
      'nome': nome,
      'estado_id': estadoId,
    };
  }
}
```

## CidadeComEstadoDto

Uma consulta com associação traz dados de duas tabelas:

```text
cidade + estado
```

Esse resultado não é exatamente a tabela `cidade`.

Por isso, usamos um DTO.

```dart
class CidadeComEstadoDto {
  const CidadeComEstadoDto({
    required this.id,
    required this.nome,
    required this.estadoId,
    required this.estadoNome,
    required this.estadoSigla,
  });

  final int id;
  final String nome;
  final int estadoId;
  final String estadoNome;
  final String estadoSigla;

  factory CidadeComEstadoDto.fromMap(Map<String, dynamic> map) {
    return CidadeComEstadoDto(
      id: map['id'] as int,
      nome: map['nome'] as String,
      estadoId: map['estado_id'] as int,
      estadoNome: map['estado_nome'] as String,
      estadoSigla: map['estado_sigla'] as String,
    );
  }

  Cidade toModel() {
    return Cidade(id: id, nome: nome, estadoId: estadoId);
  }

  String get estadoDescricao => '$estadoNome ($estadoSigla)';
}
```

## Diferença importante

```text
Cidade:
model da tabela cidade
tem id, nome e estadoId

CidadeComEstadoDto:
resultado da consulta com JOIN
tem id, nome, estadoId, estadoNome e estadoSigla
```

`Cidade` não tem `estadoNome` nem `estadoSigla`, porque essas colunas não existem na tabela `cidade`.

Esses dados aparecem no DTO porque vêm da tabela `estado`.

## Onde cada um aparece?

```text
Inserir cidade:
Tela -> Cidade -> CidadeDao.inserir()

Alterar cidade:
Tela -> Cidade -> CidadeDao.atualizar()

Buscar uma cidade por id:
CidadeDao.buscarPorId() -> Cidade

Listar cidades com nome do estado:
CidadeDao.buscarTodos() -> List<CidadeComEstadoDto>

Filtrar cidades por estado:
CidadeDao.buscarPorEstado() -> List<CidadeComEstadoDto>
```

Assim, a regra fica simples:

```text
precisa salvar na tabela cidade -> Cidade
precisa mostrar cidade + estado na tela -> CidadeComEstadoDto
```

## Para lembrar

```text
fromMap:
Map -> objeto

toMap:
objeto -> Map

Model:
representa uma entidade do app

DTO:
transporta um resultado específico
```

## Perguntas rápidas

* Por que usamos model em vez de `Map` na tela?
* Para que serve `fromMap`?
* Para que serve `toMap`?
* Por que `Cidade` tem `estadoId`?
* Por que `Cidade` não tem `estadoNome`?
* Por que `CidadeComEstadoDto` tem `estadoNome` e `estadoSigla`?

## Ligação com o próximo assunto

Com os models definidos, o controller pode usar o DAO de forma mais organizada.

O próximo passo é separar o que o controller precisa do DAO usando uma interface.
