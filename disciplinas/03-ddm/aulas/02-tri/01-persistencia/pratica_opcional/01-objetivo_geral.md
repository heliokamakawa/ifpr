# Projeto

## Objetivo geral do período

Desenvolver a capacidade de trabalhar com persistência de dados em aplicações, compreendendo:

* uso de banco de dados relacional
* mapeamento entre objetos e banco de dados (Object-Relational Mapping)
* organização de código em diferentes níveis de abstração
* aplicação de padrões estruturais (classe de conexão, DAO, model, DTO)
* uso de programação assíncrona (async/await)

## Objetivo final do período

Dominar CRUD de uma entidade com associação.

## Motivação

* Usar frameworks com base técnica: otimização, consciência de custos e decisões técnicas.
* Usar IA com base técnica: não apenas gerar código, mas validar e corrigir o código gerado.
* Atuar em projetos sem frameworks de ORM: maior controle e entendimento do banco, facilitando diagnóstico e otimização. Frameworks ajudam no início, mas exigem conhecimento adicional em cenários mais complexos.

## Como vamos trabalhar

Utilizaremos um exemplo de CRUD de Estado e Cidade, evoluindo em 5 fases com aprendizagem progressiva.

Cada fase introduz um nível de organização e abstração, mantendo o mesmo problema para facilitar a compreensão da evolução.

### Fase 01 — CRUD raiz

* Operações diretas com SQL
* Sem abstrações
* Código simples e repetitivo
* Replicação prática opcional, mas altamente recomendável para compreensão

### Fase 02 — Model, DTO e conexão

* Separação entre estrutura de dados e persistência
* Introdução de Model e DTO
* Centralização da conexão com o banco

### Fase 03 — DAO (entidade simples)

* Separação do acesso a dados
* Organização das operações de CRUD por entidade

### Fase 04 — DAO com associação

* Relacionamento entre Estado e Cidade
* Consultas com associação (JOIN)
* Mapeamento de dados relacionados

### Fase 05 — Interfaces e organização

* Abstração do acesso a dados
* Introdução de interfaces
* Organização para manutenção e evolução

## Objetivo desta fase

Compreender o funcionamento básico de um CRUD utilizando SQLite, sem abstrações.

## O que está sendo trabalhado nesta fase

* execução de comandos SQL
* abertura e uso de banco de dados
* manipulação de dados via Map<String, dynamic>
* fluxo básico de persistência

## O que NÃO está sendo trabalhado nesta fase

* organização em camadas
* separação de responsabilidades
* padrões de projeto
* modelagem estruturada

Esses pontos serão introduzidos nas próximas fases.

## O que observar no código

* onde o banco é aberto
* onde o SQL é executado
* como os dados são manipulados
* onde existe repetição
* quem é responsável por acessar o banco

## Limitações desta abordagem

* forte acoplamento
* código duplicado
* baixa reutilização
* dificuldade de manutenção

## Próxima evolução

A próxima fase introduz organização do código, separando responsabilidades e iniciando o processo de abstração.
