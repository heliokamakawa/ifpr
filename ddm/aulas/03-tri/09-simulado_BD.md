# Simulado — Banco de Dados e Persistência (Flutter + SQLite)

**Contexto**

Este simulado tem o objetivo de avaliar a compreensão prática sobre **persistência local com SQLite** e sua **integração com o Flutter**.

As questões exploram a modelagem, o mapeamento de dados e a integração entre o banco e a interface, com foco no **raciocínio** e não na memorização de comandos SQL.

---

## Parte A — Estrutura da Tabela e Modelagem

Considere o script de criação de tabelas simplificado abaixo:

CREATE TABLE estado (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    uf TEXT NOT NULL
);

CREATE TABLE cidade (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    estado_id INTEGER NOT NULL,
    ativa INTEGER NOT NULL DEFAULT 1,
    FOREIGN KEY (estado_id) REFERENCES estado(id)
);

**Responda:**

1.  O campo “ativa” usa **INTEGER**, mas no app ele é booleano. Qual o motivo disso e o que deve ser feito no DTO para o código funcionar corretamente?
2.  Por que o campo “estado\_id” deve ser **INTEGER** e não **TEXT**?
3.  O campo “id” precisa ser incluído no método **toMap()**? Justifique.
4.  O que aconteceria se o campo “estado\_id” não tivesse a definição **FOREIGN KEY** e o app tentasse excluir um estado ainda vinculado a cidades?
5.  Como garantir que a exclusão de um estado não quebre o aplicativo, mesmo sem integridade referencial ativada?
6.  No Flutter, como é feita a conversão de “ativa = 1” para “true” e “ativa = 0” para “false”? Onde normalmente essa lógica aparece?
7.  Por que o tipo **TEXT** é usado para armazenar listas, como “grade\_bikes”? O que é necessário para transformá-lo novamente em lista no DTO?
8.  Explique o impacto de usar **NOT NULL** em todos os campos e o que ocorre se o app tentar inserir um valor nulo.

---

## Parte B — Modelos e Mapeamento

Considere o código simplificado de um DAO de Estado que realiza uma consulta (**db.query('estado')**) e gera uma lista de objetos **Estado**:

> final db = await ConexaoSQLite.database;
> final List<Map<String, dynamic>> maps = await db.query('estado');
> return List.generate(maps.length, (i) {
>     return Estado(
>         id: maps[i]['id'],
>         nome: maps[i]['nome'],
>         uf: maps[i]['uf'],
>     );
> });

**Responda:**

1.  Se o mesmo padrão fosse usado para listar Cidades, o que precisaria mudar no código, considerando que `cidade` possui **estado\_id**?
2.  O campo **id** precisa obrigatoriamente estar no construtor da classe **Cidade**? Justifique sua resposta.
3.  Explique por que o método **List.generate** é usado aqui em vez de um simples **for**.
4.  Como gerar uma lista de DTOs de Estado sem criar manualmente um **List<Map>**?
5.  O que mudaria no código se quiséssemos incluir também o nome do estado dentro do DTO de Cidade (usando **JOIN**)?
6.  Como adaptar o código para exibir apenas cidades ativas?
7.  Se o método **toMap()** esquecer de incluir o campo “uf”, o que acontece ao inserir no banco?
8.  Qual seria a diferença entre buscar dados com **db.query()** e **db.rawQuery()**?

---

## Parte C — Conexão e Inicialização

Trecho do arquivo **conexao.dart**:

> deleteDatabase(path);
> return await databaseFactory.openDatabase(
>     path,
>     options: OpenDatabaseOptions(
>         version: 1,
>         onCreate: _criarTabelas,
>         onUpgrade: _atualizarBanco,
>     ),
> );

**Responda:**

1.  Qual o risco de usar **deleteDatabase(path)** em produção?
2.  Explique o que aconteceria se o script SQL fosse alterado e o app executado novamente sem deletar o banco.
3.  Por que o método **onCreate** é chamado apenas uma vez?
4.  Qual seria a forma mais simples de adicionar uma nova coluna “observacoes TEXT” sem recriar o banco do zero?
5.  Explique o que é o **“path”** e onde o banco é armazenado no dispositivo.
6.  Mostre o que ocorreria se o aplicativo abrisse a conexão três vezes seguidas sem padrão **Singleton**.
7.  O que é necessário ajustar para evitar que conexões fiquem abertas por tempo indeterminado?
8.  Por que é recomendável centralizar a conexão do banco em uma única classe?

---

## Parte D — Operações e Erros Comuns

Analise o código abaixo, que salva uma **DTOSala** no banco:

> Future<void> salvarSala(DTOSala sala) async {
>     final db = await ConexaoSQLite.database;
>     db.insert('sala', sala.toMap());
>     await db.close();
> }

**Responda:**

1.  O que ocorre se o **await** for omitido antes do **db.insert()**?
2.  Por que fechar o banco a cada operação prejudica o desempenho?
3.  Como o código deveria tratar possíveis falhas de inserção?
4.  Escreva a forma correta de capturar o erro **DatabaseException**.
5.  O que aconteceria se a conexão fosse fechada enquanto outra operação estivesse em andamento?
6.  Em que situação um **insert** pode falhar mesmo com dados válidos?
7.  O que muda entre **db.insert()** e **db.rawInsert()**?
8.  Cite duas boas práticas de tratamento de exceções em operações com SQLite.

---

## Parte E — Integração com a Interface

Considere a seguinte descrição:
Um formulário possui dois **DropdownButtons**: o primeiro exibe os Estados, e o segundo exibe as Cidades do estado selecionado.

**Responda:**

1.  Em que ponto o **setState** deve ser chamado?
2.  O que acontece se o Dropdown for criado dentro de um **StatelessWidget**?
3.  Qual o comportamento esperado se o estado mudar, mas o dropdown de cidade não for limpo?
4.  Como o app deve se comportar quando a lista de estados estiver vazia?
5.  Mostre como preencher o primeiro Dropdown a partir de um **Future<List<Estado>>**.
6.  Por que é importante garantir que a função que carrega as cidades esteja dentro de um método **async**?
7.  Como lidar com a situação em que o usuário escolhe rapidamente outro estado antes da carga das cidades terminar?
8.  Se a lista de cidades for alterada, mas o **setState** não for chamado, o que ocorre visualmente?

---

## Instruções Finais

* Leia cada questão com atenção antes de responder.
* Utilize **respostas próprias** e explique com base no funcionamento do código.
* O foco é a **compreensão técnica** e a **autonomia na escrita do código**, não a memorização de comandos.
* Respostas copiadas, automáticas ou sem relação com o código serão invalidadas.
* Use seu raciocínio lógico e relacione sempre o que ocorre no banco com o que ocorre no app.
