# Explicação do DAO simples

## Objetivo do DAO

DAO significa Data Access Object.

O DAO organiza o acesso ao banco.

No exemplo, `EstadoDao` concentra as operações da tabela `estado`.

```text
Tela -> EstadoDao -> Banco
```

## Construtor

```dart
EstadoDao(this._bancoDados);
```

O DAO recebe o banco já aberto.

Ele não abre a conexão sozinho.

Quem cuida disso é a classe de conexão.

## Banco recebido

```dart
final Database _bancoDados;
```

Esse é o objeto usado para executar comandos no SQLite.

## Nome da tabela

```dart
static const String _tabela = 'estado';
```

Centraliza o nome da tabela.

Assim, o código evita repetir `'estado'` em vários lugares.

## buscarTodos

```dart
Future<List<Estado>> buscarTodos() async
```

Busca todos os estados.

```sql
SELECT id, nome, sigla FROM estado ORDER BY nome
```

O banco retorna uma lista de mapas.

Depois o DAO converte:

```text
Map -> Estado
```

Trecho principal:

```dart
return resultado.map(Estado.fromMap).toList();
```

## buscarPorId

```dart
Future<Estado?> buscarPorId(int id) async
```

Busca um estado pelo `id`.

```sql
SELECT id, nome, sigla FROM estado WHERE id = ?
```

O `?` é substituído pelo valor enviado em:

```dart
[id]
```

Se não encontrar nada, retorna `null`.

## inserir

```dart
Future<void> inserir(Estado estado) async
```

Insere um novo estado.

```dart
await _bancoDados.insert(_tabela, estado.toMap());
```

O model vira `Map` antes de ir para o banco.

```text
Estado -> Map -> INSERT
```

## atualizar

```dart
Future<void> atualizar(Estado estado) async
```

Atualiza um estado existente.

```dart
await _bancoDados.update(
  _tabela,
  estado.toMap(),
  where: 'id = ?',
  whereArgs: [estado.id],
);
```

O `where` indica qual registro será alterado.

Sem `where`, a atualização poderia afetar vários registros.

## excluir

```dart
Future<void> excluir(int id) async
```

Exclui um estado pelo `id`.

```dart
await _bancoDados.delete(_tabela, where: 'id = ?', whereArgs: [id]);
```

## O que o DAO simples resolve?

```text
SQL sai da tela
CRUD fica em uma classe própria
tabela estado fica concentrada no EstadoDao
conversão Map <-> Estado fica organizada
```

## Para lembrar

```text
buscarTodos:
consulta vários registros

buscarPorId:
consulta um registro

inserir:
insere novo registro

atualizar:
altera registro existente

excluir:
remove registro
```

## Ligação com o próximo assunto

O DAO simples resolve bem uma tabela isolada.

Mas `Cidade` depende de `Estado`.

Por isso, o próximo passo é estudar um DAO com associação.

