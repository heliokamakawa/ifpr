# Explicação do DAO com associação

## Objetivo

`CidadeDao` organiza o acesso aos dados de cidade.

Mas cidade tem uma associação com estado.

```text
cidade.estado_id -> estado.id
```

Por isso, algumas consultas precisam trazer dados das duas tabelas.

## Tabelas envolvidas

```text
cidade
|
+-- id
+-- nome
+-- estado_id

estado
|
+-- id
+-- nome
+-- sigla
```

`estado_id` guarda o identificador do estado da cidade.

## DAO com associação

No DAO simples, consultamos apenas uma tabela.

No DAO com associação, usamos `JOIN`.

```text
CidadeDao -> cidade + estado
```

## _selecionarComEstado

```dart
static const String _selecionarComEstado = '''
  SELECT
    cidade.id,
    cidade.nome,
    cidade.estado_id,
    estado.nome  AS estado_nome,
    estado.sigla AS estado_sigla
  FROM cidade
  INNER JOIN estado ON estado.id = cidade.estado_id
''';
```

Esse SQL junta cidade e estado.

Ele busca:

* dados da cidade
* nome do estado
* sigla do estado

## INNER JOIN

```sql
INNER JOIN estado ON estado.id = cidade.estado_id
```

Esse trecho conecta as duas tabelas.

Ideia:

```text
cidade.estado_id precisa ser igual a estado.id
```

## AS

```sql
estado.nome  AS estado_nome
estado.sigla AS estado_sigla
```

`AS` dá um nome para a coluna no resultado.

Isso evita confusão, porque cidade e estado podem ter colunas com nomes parecidos.

## DTO

A consulta com `JOIN` retorna dados que não pertencem apenas à tabela `cidade`.

Por isso, usamos:

```dart
CidadeComEstadoDto
```

O DTO transporta o resultado da consulta.

Ele contém:

```text
id
nome
estadoId
estadoNome
estadoSigla
```

## buscarTodos

```dart
Future<List<CidadeComEstadoDto>> buscarTodos() async
```

Busca todas as cidades com seus estados.

```dart
'$_selecionarComEstado ORDER BY cidade.nome'
```

Depois converte:

```dart
return resultado.map(CidadeComEstadoDto.fromMap).toList();
```

Fluxo:

```text
Map -> CidadeComEstadoDto
```

## buscarPorEstado

```dart
Future<List<CidadeComEstadoDto>> buscarPorEstado(int estadoId) async
```

Busca cidades de um estado específico.

```sql
WHERE cidade.estado_id = ?
```

O valor do `?` vem de:

```dart
[estadoId]
```

## buscarPorId

```dart
Future<Cidade?> buscarPorId(int id) async
```

Busca uma cidade pelo `id`.

Essa consulta usa apenas a tabela `cidade`.

Ela devolve `Cidade`, não DTO.

Por quê?

Porque para editar a cidade precisamos dos dados principais:

```text
id
nome
estado_id
```

## inserir, atualizar e excluir

Esses métodos são parecidos com o DAO simples.

```dart
inserir(Cidade cidade)
atualizar(Cidade cidade)
excluir(int id)
```

Eles manipulam a tabela `cidade`.

Para gravar, usamos:

```dart
cidade.toMap()
```

## Diferença principal

```text
DAO simples:
consulta uma tabela

DAO com associação:
consulta mais de uma tabela
usa JOIN
pode devolver DTO
```

## Para lembrar

```text
Cidade:
model da tabela cidade

CidadeComEstadoDto:
resultado da consulta cidade + estado

JOIN:
junta tabelas relacionadas

estado_id:
liga cidade ao estado
```

## Perguntas rápidas

* Por que cidade precisa de `estado_id`?
* Para que serve o `INNER JOIN`?
* Por que usamos `AS estado_nome` e `AS estado_sigla`?
* Por que `buscarTodos` devolve DTO?
* Por que `buscarPorId` pode devolver apenas `Cidade`?
* Qual é a diferença entre DAO simples e DAO com associação?

## Fechamento

Com isso, a base principal está completa:

```text
Conexao
Model
DAO simples
DAO com associação
DTO
```

Agora o foco passa a ser praticar até conseguir aplicar essa organização no projeto.

