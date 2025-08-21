# 📘 Aula de Retomada – Desenvolvimento para Dispositivos Móveis


## Equipes
- Reeodenação/definição.
- Definição de papeis e tarefas (distribuição de tarefas).
- Rever técnicas e planejar o levantamento de requisitos.
- Organizar a participação da SETIF
  - Resumo/artigo
  - Objetivo/formato
  - Estrutura

##  04/09/2025	
- 2 Empresas (1 especializada em mobile)
- Apresentação geral (demanda)
- Cada equipe terá 5 minutos para dúvidas.
- Coffe Break - deifnir até hoje


**Tema:** CRUD com associação – Flutter + SQLite (`sqflite` + `path`)  
**Carga horária:** 4h  

---

## 🎯 Objetivos
1. Treinar a construção **passo a passo** de um CRUD com associação.  
2. Revisar os widgets e recursos mínimos para entregar um app funcional.  
3. Estimular autonomia: tentar sozinho, **registrar as dificuldades** e só então solicitar apoio do professor.  
4. Mostrar como dividir o problema em partes testáveis para não travar no meio do caminho.  
5. Conscientizar sobre o uso reduzido da internet e evitar IA: a avaliação será **sem consulta**.  

---

## 📌 O que estudar
- **Widgets fundamentais:** `StatelessWidget`, `StatefulWidget`.  
- **Formulários em Flutter:** `Form`, `FormKey`, `TextFormField`, `validator`.  
- **Botões e ações:** `ElevatedButton`.  
- **Listagem e navegação:** `ListView`, `ListTile`, rotas nomeadas (`Navigator.pushNamed`).  
- **Validações:** campos obrigatórios, formato de texto.  
- **Persistência:** dependências `sqflite` e `path`, `openDatabase`, scripts SQL.  

---

## 📋 Roteiro da Aula (4h)

### 🔹 Primeira hora (0h – 1h): preparação e scripts
- Relembrar instalação e importação de `sqflite` e `path`.  
- Definir **script de criação de tabelas** (ex: `Categoria` e `Produto`).  
  - Se não sabe montar SQL → anotar no documento como “ponto a estudar”.  
- Criar a **classe de conexão** com o banco.  
- **Teste parcial:** verificar se o banco cria corretamente.  
  - **Observação:** não há como “listar” apenas com a conexão. O teste é verificar se o `openDatabase` executa sem erro.  
  - O arquivo do banco pode ser encontrado no diretório interno do app, normalmente em `data/data/<nome-do-pacote>/databases/`.  

---

### 🔹 Segunda hora (1h – 2h): inserções e listagem  
- Implementar **listagem** com `ListView.builder` e `ListTile`.  
- **Teste parcial:** listar os dados inseridos via script.  
  - Feedback visual rápido → motiva.  
- Implementar método de **exclusão** - é mais sobre widget.
  
- Implementar método de **inserção**.  
- Criar tela simples que insira **dados fixos** (sem formulário ainda).
- Implementar **atualização** (edição simples).  

---

### 🔹 Terceira hora (2h – 3h): exclusão e atualização
- Substituir inserções fixas por **formulário com `Form`, `FormKey`, `TextFormField`**.  
- Adicionar **validações mínimas** (ex: campo não vazio).  
- Usar **ElevatedButton** para salvar.
- **Teste final:** fluxo completo → cadastrar via formulário, listar, editar e excluir.  
---

### 🔹 Quarta hora (3h – 4h): formulários e validações
Elaborar o documento técnico e criar um plano de estudo.

---

## 📝 Orientações aos alunos
- **Autonomia primeiro:** tente sozinho cada etapa.  
- **Quando chamar o professor:** apenas depois de tentar, pesquisar (internet de forma reduzida) e anotar a dúvida.  
- **Documento técnico obrigatório:**  
  - O que conseguiu fazer.  
  - Onde travou.  
  - O que pesquisou.  
  - O que precisa estudar mais.  
- **Uso da internet:** apenas para consultas específicas (documentação, exemplos simples).  
- **Uso de IA:** **não recomendado** → a avaliação será sem IA/internet.  

---

## 📢 Avaliação de Recuperação (semana que vem)
- **Formato:** individual, sem internet, 4h.  
- **Exigência:** CRUD com interfaces.  
 

### O que NÃO será flexibilizado
- Durante o trimestre, muitos **não entregaram projeto**, **não participaram das discussões** e **não estudaram os pontos críticos no Moodle**.  
- Não seria justo agora facilitar demais.  
- **Não haverá rigor em perfeição**, mas será cobrado o **mínimo necessário**.  
- Hoje é a chance de treinar com apoio. Semana que vem será o momento de mostrar **o que cada um consegue fazer sozinho**.

## 📚 O que Estudar

### 📌 Widgets Fundamentais

| Widget | Descrição | Link |
|--------|-----------|------|
| `StatelessWidget` | Widget sem estado (UI fixa) | [Docs](https://api.flutter.dev/flutter/widgets/StatelessWidget-class.html) |
| `StatefulWidget` | Widget com estado (UI dinâmica) | [Docs](https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html) |

---

### 🧾 Formulários

| Recurso | Descrição | Link |
|--------|-----------|------|
| `Form` + `FormKey` | Agrupamento e controle de formulário | [Form Docs](https://api.flutter.dev/flutter/widgets/Form-class.html) |
| `TextFormField` | Campo de texto com validação | [TextFormField](https://api.flutter.dev/flutter/material/TextFormField-class.html) |
| `validator` | Validação de campos obrigatórios | [Validation](https://docs.flutter.dev/cookbook/forms/validation) |
| `ElevatedButton` | Botão de ação | [ElevatedButton](https://api.flutter.dev/flutter/material/ElevatedButton-class.html) |

---

### 📄 Listagem e Navegação

| Recurso | Descrição | Link |
|--------|-----------|------|
| `ListView.builder` | Lista dinâmica | [ListView](https://api.flutter.dev/flutter/widgets/ListView-class.html) |
| `ListTile` | Widget para itens de lista | [ListTile](https://api.flutter.dev/flutter/material/ListTile-class.html) |
| `Navigator.pushNamed` | Navegação entre telas | [Named Routes](https://docs.flutter.dev/cookbook/navigation/named-routes) |

---

### 📦 Persistência com SQLite

| Recurso | Descrição | Link |
|--------|-----------|------|
| `sqflite` | Biblioteca SQLite | [pub.dev/sqflite](https://pub.dev/packages/sqflite) |
| `path` | Manipulação de caminhos | [pub.dev/path](https://pub.dev/packages/path) |
| `openDatabase` | Abre/cria o banco local | [Docs](https://pub.dev/documentation/sqflite/latest/sqflite/openDatabase.html) |
| SQL | Script de criação de tabelas | [SQLite Docs](https://www.sqlite.org/lang.html) |

---

### 🔮 FutureBuilder

| Recurso | Descrição | Link |
|--------|-----------|------|
| `FutureBuilder` | Widget reativo que exibe dados assíncronos (ex: carregar dados do banco) | [FutureBuilder Docs](https://api.flutter.dev/flutter/widgets/FutureBuilder-class.html) |
| Exemplo | Verifica se banco está pronto antes de mostrar conteúdo | [FutureBuilder Example](https://docs.flutter.dev/cookbook/networking/fetch-data#5-display-the-data) |

---

### 🔽 Dropdown (Menu de Seleção)

| Recurso | Descrição | Link |
|--------|-----------|------|
| `DropdownButton` | Menu suspenso (útil para selecionar categorias, por exemplo) | [DropdownButton](https://api.flutter.dev/flutter/material/DropdownButton-class.html) |
| `DropdownMenuItem` | Opções do menu | [DropdownMenuItem](https://api.flutter.dev/flutter/material/DropdownMenuItem-class.html) |

---

