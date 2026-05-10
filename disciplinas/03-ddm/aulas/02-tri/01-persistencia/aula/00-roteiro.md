# Persistência de dados em aplicativos

## Contexto deste período

Estou participando de um edital de afastamento para capacitação.

Fui classificado em primeiro lugar. A previsão é de que ficarei junto com a turma por aproximadamente mais um mês. Depois disso, um novo professor assumirá a disciplina.

Por esse motivo, este material foi organizado para este período e também para que vocês consigam estudar e desenvolver o projeto com autonomia.

## Objetivo deste material

Este material serve como guia de estudo para o período.

Ele explicita:

* o que estudar
* o que praticar
* o que será avaliado
* quais partes do projeto precisam estar funcionando
* quais conceitos precisam ser compreendidos

A proposta é estudar primeiro a base conceitual e, depois, aplicar na prática o essencial da persistência de dados.

## Objetivo do período

O foco será:

* conceitos de persistência
    * persistência local
    * persistência remota
    * sincronização de dados
* fundamentos necessários
    * uso de programação assíncrona
    * uso de bibliotecas externas pelo `pub.dev`
    * widgets
        - passagem de dados entre telas e widgets
        - uso de componentes de tela que exibem e enviam objetos, como `DropdownButton`
        - atualização de dados na interface após exclusão e alteração
        - uso de widgets com estado, como `StatefulWidget`
* fundamentos em persistência
    * classe de conexão com o banco
    * DAO simples
    * DAO com associação → mapeamento manual entre objetos e banco relacional

## O que você deve conseguir explicar ao final

Você deve conseguir explicar:

* persistência de dados local, remota, sincronização;
* classe de conexão, padrão Singleton e seu uso;
* por que operações de banco costumam ser assíncronas;
* por que o código evolui de uma solução simples para uma solução organizada em camadas;
* qual é o papel de Model, DAO, classe de conexão e interface;
* como uma tela pode enviar dados para outra;
* como um componente visual pode exibir uma informação e enviar um objeto;
* por que o DAO ajuda a separar a interface do acesso ao banco.

## Previsão de aulas

Esta previsão pode mudar conforme o andamento da turma e a situação do edital.

### 11/05: conceitos e termos gerais sobre persistência

Nesta aula, a ideia é explicar os conceitos principais que serão usados no restante do período.

Serão trabalhados:

* persistência local, persistência remota e sincronização de dados;
* banco de dados relacional;
* SQLite;
* SQL;
* CRUD;
* mapeamento manual entre objetos e tabelas;
* programação assíncrona com `Future`, `async` e `await`;
* bibliotecas externas e uso do `pub.dev`;
* passagem de dados de um widget para outro;
* uso de `DropdownButton` para mostrar dados e enviar objetos;
* atualização da interface após operações de exclusão e alteração;
* classe de conexão;
* padrão Singleton aplicado à conexão;
* DAO simples;
* DAO com associação.

A intenção é concentrar a explicação conceitual nesta aula.

Depois disso, as próximas aulas serão usadas principalmente para prática, atendimento de dúvidas específicas, acompanhamento individual e orientação conforme o ritmo de cada estudante.

### 18/05: Pint of Science (VAMOS PARTICIPAR?)

Atividade:

**Canetas emagrecedoras: milagre da ciência ou moda perigosa?**

Participantes:

* Daiani Cristina Frotté: mediadora, professora da Unifatecie
* Diórgnes Silva de Queiroz: palestrante

Local:

* Quintal do Zuli

### 25/05: desenvolvimento do projeto e code review

Esta é, provavelmente, a última aula em que estarei com a turma antes do possível afastamento.

Atividade principal:

* desenvolvimento do projeto
* atendimento de dúvidas
* revisão das implementações

Às 21h10, será realizada uma atividade de code review.

No Moodle, haverá uma questão aberta em que cada estudante deverá escrever o DAO com associação.

Quem quiser poderá escrever também outras partes do código. Isso poderá ser considerado na avaliação, desde que ajude a demonstrar domínio do conteúdo.

### 01/06: desenvolvimento do projeto ou atividade de fechamento

Talvez eu não esteja mais com a turma nesta data.

Se eu ainda estiver, a aula será usada para desenvolvimento do projeto, atendimento de dúvidas e ajustes.

Como talvez eu não esteja, haverá uma atividade de fechamento que poderá ser realizada mesmo sem minha presença.

A atividade será a entrega de um vídeo em que o estudante grava a si mesmo escrevendo, à mão, a classe de conexão.

O objetivo dessa atividade é avaliar domínio do código sem consulta.

O vídeo deve observar os seguintes critérios:

* a pessoa deve aparecer, pelo menos no início do vídeo
* se possível, o estudante deve mostrar inicialmente o ambiente, indicando que não há meios de consulta
* o vídeo não deve ter cortes
* a escrita deve acontecer de forma sequencial
* o estudante não deve parar longamente para lembrar ou consultar
* o código deve estar legível
* o código deve estar devidamente indentado
* ao final, o estudante deve explicar o código de forma geral

O objetivo não é comparar quem escreve mais rápido.

O tempo pode variar conforme a característica de cada pessoa, o cuidado com a letra, a organização e a legibilidade.

O que será observado é o domínio: escrever sem consulta, com fluidez, em sequência, demonstrando compreensão da estrutura.

### 08/06: refinamento com interfaces e injeção de dependências

É quase certo que eu não esteja mais com a turma nesta data.

Caso eu ainda esteja, a aula será usada para refinamento do código.

Os temas serão:

* uso de interfaces para DAO
* isolamento de uma biblioteca específica de persistência
* interface como contrato
* independência do código em relação à implementação concreta
* relação com inversão de dependência
* injeção de dependências nas interfaces dos DAOs

## Conteúdos do período

### Conteúdo geral

O tema geral é persistência de dados em aplicativos Flutter.

O foco principal será:

* classe de conexão
* DAO simples
* DAO com associação

### Conteúdos específicos

Para conseguir desenvolver a persistência do aplicativo, também serão necessários alguns fundamentos:

* programação assíncrona
* uso de bibliotecas pelo `pub.dev`
* envio de dados de um widget para outro
* envio de dados de uma tela para outra
* uso de `DropdownButton`
* exibição de dados em componentes visuais
* envio de objetos a partir de componentes visuais

### Classe de conexão

Na classe de conexão, além do código, serão trabalhados conceitos como:

* persistência local
* persistência remota
* sincronização de dados
* SQL
* criação do banco
* criação das tabelas
* versionamento do banco
* padrão Singleton

### DAO simples e DAO com associação

No DAO, o foco será compreender:

* onde ficam os comandos SQL
* como inserir, consultar, atualizar e excluir dados
* como evitar SQL espalhado pelas telas
* como mapear dados do banco para objetos
* como mapear objetos para dados do banco
* como trabalhar com associação entre entidades
* como escrever consultas com dados relacionados

Um ponto central será o mapeamento manual objeto-relacional.

Ou seja: entender como os dados saem das tabelas e se transformam em objetos do aplicativo, e como os objetos do aplicativo são transformados em dados para o banco.

## Avaliação deste período

A avaliação será composta por três elementos principais.

### 1. Implementação prática de quatro cadastros funcionando

O projeto deve ter quatro cadastros funcionando.

Este é um pré-requisito.

Sem essa implementação prática, os demais elementos não serão avaliados.

### 2. Code review do DAO com associação

O code review do DAO com associação será usado para definir conceito.

O objetivo é verificar se o estudante compreende:

* a entidade principal
* a entidade associada
* o relacionamento entre elas
* o uso de chave estrangeira
* a consulta com associação
* o mapeamento dos dados retornados
* a responsabilidade do DAO

### 3. Vídeo da classe de conexão

O vídeo da classe de conexão também será usado para definir conceito.

O objetivo é verificar domínio sem consulta.

Será observado se o estudante consegue:

* escrever a classe de conexão em sequência
* manter o código legível
* manter a indentação adequada
* explicar a estrutura geral
* demonstrar compreensão do papel da conexão no projeto

## Como estudar

Não comece tentando decorar os nomes das estruturas.

O mais importante é entender qual problema cada estrutura resolve.

Sempre que aparecer uma palavra nova, faça três perguntas:

* O que é?
* Para que serve?
* Que problema aparece se eu não usar isso?

Depois de compreender a ideia, pratique até conseguir escrever as partes principais sem consulta.

Em programação, domínio não é apenas reconhecer um código pronto.

Domínio significa conseguir reconstruir o código, explicar suas partes e adaptar a estrutura a outro problema parecido.

## Ideia central

No começo, o código pode acessar o banco diretamente.

Isso ajuda a entender o funcionamento básico.

Depois, conforme o sistema cresce, essa abordagem começa a gerar repetição, acoplamento e dificuldade de manutenção.

Por isso, o código passa a ser organizado em partes com responsabilidades diferentes.
