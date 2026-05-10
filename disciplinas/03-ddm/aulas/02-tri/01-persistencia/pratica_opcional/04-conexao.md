# Conexão com o banco de dados (sqflite)

## O que é

Biblioteca para acessar o banco SQLite no Flutter.

## Onde encontrar

https://pub.dev/packages/sqflite

## Observação

A dependência já foi adicionada anteriormente.

Exemplos de uso podem ser encontrados em:

* aba **"Example"** do pacote:
  https://pub.dev/packages/sqflite/example

* documentação oficial (cookbook do Flutter):
  https://docs.flutter.dev/cookbook/persistence/sqlite

## Para que serve

Abrir o banco e executar comandos SQL.

## Exemplo

```dart
// Abre (ou cria) o banco de dados chamado 'app.db'
openDatabase(
  'app.db',

  // Define a versão do banco (usado para controle de migração)
  version: 1,

  // Função executada apenas na criação inicial do banco
  onCreate: (db, version) async {

    // Executa um comando SQL para criar a tabela "estado"
    await db.execute('CREATE TABLE estado (...)');
  },
);
```

## Onde aparece

* abertura do banco
* criação das tabelas
* execução de SQL

## Observação

As operações são assíncronas.

## Referências

https://pub.dev/packages/sqflite
https://docs.flutter.dev/cookbook/persistence/sqlite
