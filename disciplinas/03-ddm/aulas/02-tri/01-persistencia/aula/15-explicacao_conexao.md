# Explicação da conexão

## Objetivo da classe

A classe de conexão centraliza o acesso ao banco.

Ela evita que cada tela ou DAO tente abrir o banco por conta própria.

```text
Tela/DAO -> Conexao -> SQLite
```

## Singleton

```dart
Conexao._();

static final Conexao instancia = Conexao._();
```

O construtor privado impede criar várias instâncias livremente.

`instancia` cria um ponto único de acesso.

Ideia:

```text
uma classe
uma instância principal
um controle da conexão
```

## Nome do banco

```dart
static const String _nomeBanco = 'fase_04_associacao.db';
static const String _nomeBancoWeb = 'fase_04_associacao_web.db';
```

Há um nome para dispositivo e outro para web.

Isso ajuda porque o acesso ao banco no navegador usa uma configuração diferente.

## Banco em memória da classe

```dart
Database? _bancoDados;
```

Essa variável guarda o banco depois que ele foi aberto.

Se o banco já estiver aberto, a classe reaproveita a conexão.

## Getter bancoDados

```dart
Future<Database> get bancoDados async
```

Esse é o principal acesso ao banco.

Fluxo:

```text
alguém pede o banco
|
+-- banco já abriu?
|   |
|   +-- sim: retorna o banco
|   +-- não: abre conexão
```

## Abrir conexão

```dart
Future<Database> _abrir() async
```

Esse método prepara e abre o banco.

Ele faz três coisas principais:

* verifica se está rodando na web
* monta o caminho do banco
* chama `openDatabase`

## Web e dispositivo

```dart
if (kIsWeb) {
  databaseFactory = databaseFactoryFfiWeb;
}
```

Na web, o `sqflite` precisa de uma fábrica específica.

No dispositivo, usamos o caminho retornado por `getDatabasesPath()`.

## Caminho do banco

```dart
final String caminho = kIsWeb
    ? _nomeBancoWeb
    : p.join(await getDatabasesPath(), _nomeBanco);
```

Na web, usa apenas o nome do banco.

No dispositivo, usa `path.join` para montar o caminho corretamente.

## Criação do banco

```dart
openDatabase(
  caminho,
  version: 1,
  onCreate: ...
)
```

`openDatabase` abre o banco.

Se o banco ainda não existir, executa `onCreate`.

## onCreate

```dart
onCreate: (Database db, int version) async {
  ...
}
```

Esse bloco executa apenas quando o banco é criado pela primeira vez.

Aqui ficam:

* `CREATE TABLE estado`
* `CREATE TABLE cidade`
* inserção de dados iniciais

## CREATE TABLE

```sql
CREATE TABLE estado (...)
CREATE TABLE cidade (...)
```

Esses comandos definem a estrutura do banco local.

No app com banco local, essa estrutura precisa estar no próprio app.

## Dados iniciais

```dart
await db.execute("INSERT INTO estado ...");
await db.execute("INSERT INTO cidade ...");
```

Esses comandos inserem dados para o projeto já iniciar com alguns registros.

Isso ajuda nos testes e nas primeiras telas.

## Fechar conexão

```dart
Future<void> fechar() async {
  await _bancoDados?.close();
  _bancoDados = null;
}
```

Fecha o banco se ele estiver aberto.

Depois limpa a variável `_bancoDados`.

## Para lembrar

```text
Conexao:
centraliza o banco

bancoDados:
entrega a conexão aberta

_abrir:
abre ou cria o banco

onCreate:
cria tabelas e dados iniciais

path:
monta o caminho correto do banco
```

## Ligação com o próximo assunto

Antes de avançar para DAO, vale entender melhor o pacote `path`.

Ele aparece na conexão porque o banco local precisa de um caminho de arquivo correto.
