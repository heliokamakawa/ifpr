# 📱 Conteúdo que serão trabalhadas no Trimestre — Flutter + SQLite (sqflite)

## 📢 Orientação Geral

Para oportunizar os que estão com mais dificuldades, vamos **retomar os conteúdos dos trimestres anteriores** e aplicá-los em um **novo estudo de caso**.  

Esse formato permitirá que cada aluno:  
- **Reveja o conteúdo** já trabalhado e consolide a base.  
- Tenha **tempo hábil para estudar e praticar**.  
- Participe de uma dinâmica em que o professor terá **mais tempo para tirar dúvidas**, graças à organização em **checks parciais**.  
- Desenvolva em equipe, contando com o **apoio dos colegas** para superar dificuldades.  

**Importante:**  
- A presença é fundamental — **não faltar** compromete o acompanhamento.  
- As **entregas periódicas parciais** são obrigatórias para garantir evolução contínua.  

Assim, todos terão condições de avançar, equilibrando o ritmo da turma com espaço para que cada aluno possa aprender com segurança e responsabilidade.

---

## 📌 Avaliação Tradicional 

O aluno que optar por **não participar dos checks parciais** poderá realizar a **avaliação tradicional**.  

- Avaliação dissertativa (código em flutter).  
- Será realizada de forma **individual**.  
- Não será permitida **consulta** a materiais ou uso de IA.  


---

## 🔹 Navegação e Rotas
- Uso do **Navigator** (push, pop) e rotas nomeadas.
- Passagem de **argumentos entre telas**.
- Padrão de navegação **Lista → Formulário → Detalhe** (master–detail).
- Estrutura básica para CRUD em múltiplas telas.

## 🔹 Formulários e Validações
- Estrutura de formulário com **Form** e **GlobalKey\<FormState>**.
- Uso de **TextFormField** com **TextEditingController**.
- Implementação de **validações** por campo (`validator`).
- Máscaras e formatações com **input formatters**.
- Tratamento de foco e teclado.
- Feedback ao usuário: mensagens de erro e **SnackBar** para sucesso/erro.

## 🔹  Controle de Estado
- Diferença entre **StatelessWidget** e **StatefulWidget**.
- Uso do **setState** para atualizar a interface.
- Controle de estados comuns: **loading**, **erro**, **vazio**.
- Comunicação entre widgets (callbacks e elevação de estado).
- Introdução ao conceito de **gerenciamento de estado** (Provider/ValueNotifier — opcional).

## 🔹 Banco de Dados e Associações
- Revisão de conceitos SQL: **tabelas, chaves primárias, estrangeiras, índices, constraints**.
- Associação **1–N** (ex.: Categoria 1—N Produto).
- Comandos DDL, DML e de consultas.

## 🔹 Camada de Dados (Conexão e DAO)
- Criação de classe de **conexão com SQLite** utilizando **sqflite** + **path_provider**.
- Configuração de **onCreate**, **onUpgrade** e **onConfigure**.
- **Criação manual de tabelas** com SQL (`CREATE TABLE`, índices e FKs).
- Implementação do padrão **DAO** (Data Access Object) com métodos **CRUD**.

## 🔹 CRUD Completo com Associação
- **Create/Insert**: cadastrar Categoria e Produtos vinculados.
- **Read/Query**: listar registros com filtros e **JOIN** (Produto + Categoria).
- **Update**: editar dados mantendo integridade referencial.
- **Delete**: remoção com tratamento de dependências (**ON DELETE RESTRICT/CASCADE**).
- Mapeamento OR via dao (manualmente).
- Funcionalidades adicionais: **busca, ordenação e paginação**.
- Tratamento de exceções e feedback ao usuário.

## 🔹 Interface de Usuário do CRUD
- Tela de **lista** com **ListView**, **Card** e **FloatingActionButton**.
- Tela de **formulário** (criação/edição) com validações.
- Tela de **detalhes** (opcional) com dados estendidos e ações rápidas.
- Uso de **DropdownButtonFormField** para selecionar Categoria ao criar Produto.
- Inclusão de indicadores de **loading** e mensagens de erro.
- Integração entre UI ↔ DAO com atualização em tempo real do estado.

