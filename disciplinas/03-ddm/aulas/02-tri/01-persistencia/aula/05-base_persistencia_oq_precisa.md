# Persistência - o que precisa?

```text
Aplicativo
|
+-- Biblioteca de banco
|   |
|   +-- driver/adaptador
|   +-- conexão com o banco
|
+-- SQL
|   |
|   +-- DDL: define estrutura
|   +-- DML: manipula dados
|
+-- Organização do código
|   |
|   +-- Model
|   +-- DAO
|   +-- Repository
|
+-- Mapeamento
    |
    +-- model <-> tabela
```

## Conexão

Conexão é o caminho usado pelo aplicativo para acessar o banco de dados.

Na conexão, geralmente definimos:

* onde está o banco
* como abrir o banco
* qual é a versão do banco
* o que fazer quando o banco é criado
* o que fazer quando a versão do banco muda

**A conexão deve ser organizada.**

Evite abrir o banco de qualquer jeito em vários lugares do app.

O ideal é ter um ponto central para controlar a abertura e o uso do banco.

Isso facilita:

* manutenção
* correção de erros
* controle de versão
* criação das tabelas
* reaproveitamento da conexão

## Bibliotecas e drivers

Geralmente não acessamos o banco “na mão”.

Usamos uma biblioteca.

No Flutter, para SQLite, um exemplo é o `sqflite`.

A biblioteca oferece uma interface para o app conversar com o banco.

Por trás dessa interface, existem implementações específicas para a plataforma.

Ideia simples:

```text
App Flutter -> biblioteca -> driver/adaptador -> banco
```

O app usa os métodos da biblioteca.

A biblioteca cuida dos detalhes de comunicação com o banco.

## SQL

SQL é a linguagem usada para trabalhar com bancos relacionais.

Neste momento, vamos separar SQL em dois grupos importantes:

* DDL
* DML

## DDL

DDL significa Data Definition Language.

É a parte do SQL usada para definir a estrutura do banco.

Exemplos:

* criar tabela
* alterar tabela
* remover tabela

Comando comum:

```sql
CREATE TABLE estado (...);
```

No banco local, o app precisa ter comandos de DDL para criar a estrutura inicial.

## DML

DML significa Data Manipulation Language.

É a parte do SQL usada para manipular os dados.

Exemplos:

* inserir
* consultar
* atualizar
* excluir

Comandos comuns:

```sql
INSERT
SELECT
UPDATE
DELETE
```

Esses comandos formam a base do CRUD.

## Model

Model, ou modelo, é a classe que representa uma entidade do aplicativo.

Exemplos:

* `Estado`
* `Cidade`
* `Cliente`
* `Produto`

Um model organiza os dados que o app usa.

Exemplo simples:

```text
Estado
|
+-- id
+-- nome
+-- sigla
```

O model ajuda a evitar que o app trabalhe apenas com dados soltos.

Sem model, é comum espalhar `Map`, textos e números por várias partes do código.

Com model, o dado fica mais claro.

Ideia simples:

```text
Tabela estado -> Model Estado
Model Estado -> Tabela estado
```

## DAO

DAO significa Data Access Object.

É uma classe usada para organizar o acesso ao banco.

O DAO costuma guardar o SQL de uma entidade.

Normalmente, o DAO recebe ou devolve objetos model.

Exemplos:

* `EstadoDao`
* `CidadeDao`

Um DAO pode ter métodos como:

```text
inserir
listar
buscarPorId
atualizar
excluir
```

Ideia principal:

```text
Tela -> DAO -> Banco
```

O objetivo é evitar SQL espalhado pelas telas.

De forma simples:

```text
Tela usa Model
DAO recebe/devolve Model
DAO executa SQL no Banco
```

## Repository

Repository também organiza acesso a dados, mas em um nível mais alto.

Ele representa uma fonte de dados para o restante do sistema.

Um repository pode decidir de onde os dados vêm:

* banco local
* API
* cache
* outra fonte

Ideia simples:

```text
Tela -> Repository -> DAO/API
```

## Diferença objetiva entre DAO e Repository

| Estrutura | Foco principal |
| --------- | -------------- |
| DAO | acesso direto ao banco e ao SQL |
| Repository | fonte de dados usada pelo app |

De forma simples:

* DAO sabe falar com o banco
* Repository sabe de onde buscar os dados para o app

Neste período, o foco principal será DAO.

Repository é importante para entender a organização, mas pode ser aprofundado depois.

## MOR

MOR significa Mapeamento Objeto-Relacional.

Também pode aparecer como ORM, em inglês: Object-Relational Mapping.

A ideia é transformar dados entre dois formatos:

```text
Model do app <-> Tabela do banco
```

Exemplo:

```text
Objeto Estado
|
+-- id
+-- nome
+-- sigla

Tabela estado
|
+-- id
+-- nome
+-- sigla
```

No nosso caso, o mapeamento será manual.

Isso significa que o próprio código fará a conversão entre:

* model para `Map`
* `Map` para model
* objeto para dados do SQL
* resultado do SQL para model

## Para lembrar

```text
Conexão:
abre e controla o acesso ao banco

Biblioteca:
permite o app conversar com o banco

DDL:
define estrutura

DML:
manipula dados

Model:
representa uma entidade do app

DAO:
organiza o SQL

Repository:
organiza a fonte de dados

MOR:
converte model <-> tabela
```

## Perguntas rápidas

* Para que serve a conexão?
* Por que usamos uma biblioteca para acessar o banco?
* Qual é a diferença entre DDL e DML?
* Para que serve um model?
* Por que o DAO ajuda na organização?
* Qual é a diferença básica entre DAO e Repository?
* O que significa mapear model e tabela?

## Ligação com o próximo assunto

Antes de separar o código em classes melhores, vamos olhar para o fluxo das telas.

Afinal, persistência aparece para o usuário como ações simples:

```text
cadastrar
listar
editar
excluir
ver detalhes
```
