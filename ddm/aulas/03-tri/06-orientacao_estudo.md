# 📚 Conteúdo Mínimo — Persistência de Entidade com Associação

Este documento reúne os tópicos fundamentais que todo aluno deve dominar para aplicar **persistência de entidade com associação** em Flutter + SQLite (nível mínimo para simulado/avaliação).

---

## 🧩 Widgets

### 🖼 Visual (exemplos principais)
- `Text`  
- `Icon`  
- `Image`  
- `CircleAvatar`  
- `TextField` / `TextFormField`  
- `DropdownButton` / `DropdownMenu` (essencial para seleção de entidades associadas)  
- `ElevatedButton`  
- `FloatingActionButton`  
- `Card`  
- `ListTile`  

### 🏗 Estrutural (layout e organização)
- `Column`  
- `Row`  
- `Container`  
- `Padding`  
- `Align`  
- `Center`  
- `ListView`  
- `Scaffold`  

---

## 📦 Estado e Gerência de Dados

- **Comunicação entre widgets via `setState()`**  
  Permite atualizar o estado interno do widget e refazer `build()` com novas informações.

- **Passagem de dados entre telas (via rotas / Navigator)**  
  Enviar objetos ou parâmetros entre páginas (ex: editar um registro recebido da tela de listagem).

- **Atualização de dados com DropdownButton, ListTile, etc.**  
  Por exemplo, ao editar uma entidade que possui associação, você pode usar um `DropdownButton` para escolher o elemento associado (ex: selecionar um “cliente” para um “pedido”) ou `ListTile` para exibir opções clicáveis que alteram o valor relacionado.  

---

## 📝 Formulários e Validação

- **Criação de formulários com `Form` e `TextFormField`**  
  Estrutura padrão para capturar múltiplos campos com validação.

- **Controladores (`TextEditingController`)**  
  Permitem leitura e manipulação do conteúdo dos campos.

- **Validação de campos e mensagens de erro**  
  Usando a propriedade `validator:` para impedir valores inválidos (ex: campos vazios, formato incorreto).

- **Submissão de formulários e integração com banco de dados**  
  Após a validação bem-sucedida, salvar ou atualizar o objeto no banco de dados local (SQLite) e refletir isso na interface.

---

## 🧩 Componentização e Interface

- **Widgets básicos** → `Text`, `Column`, `Row`, `Container`, etc.  
- **Widgets de layout** → `ListView`, `GridView`, `Stack`, etc.  
- **Widgets personalizados / composição** → criar componentes reutilizáveis (ex: um campo customizado, botão estilizado, card de exibição).  
- **Uso adequado de `const`, `final` e atenção à performance de renderização**  
  Evitar reconstruções desnecessárias e promover eficiência no código.

---

## 💾 Persistência (SQLite / Persistência local)

- **Banco de Dados Local e Persistência**  
  Uso do pacote `sqflite` ou similar para persistência local.

- **Estrutura de um CRUD**  
  Implementar operações de criação, leitura, atualização e exclusão para a entidade.

- **Criação de tabelas**  
  Definição de colunas, tipos e relacionamentos (por exemplo, `INTEGER`, `TEXT`, `FOREIGN KEY`).

- **Conversão de dados (`Map`, `toJson`, `fromJson`)**  
  Transformar objetos Dart em mapas e vice-versa para persistência.

- **Associação entre entidades**  
  Relações tipo 1:N ou N:1 — ex: um “cliente” pode ter vários “pedidos”.  
  Implementar através de **chaves estrangeiras** e consultas que juntem dados relacionados.

---

## 🛠 Boas Práticas e Arquitetura

### 🧼 Código limpo  
- Nomenclatura clara e coerente (funções e variáveis com nomes significativos)  
- Legibilidade do código (idealmente evitar funções longas, lógica excessiva em widgets)  
- Boas práticas Dart/Flutter (uso de `const`, evitar duplicação, manter simplicidade)

### 🗂 Estrutura de pastas organizada & separação de responsabilidades  
- **models/** → definição das entidades / classes de domínio  
- **views/** → telas, widgets de interface  
- **controllers / services / repositories** → lógica de negócio, acesso a dados, regras de integração  
- Cada pasta e arquivo com responsabilidade única e coesa  

---

## 📖 Recursos de Estudo

### 🔹 Referência oficial (principal)

- Flutter Documentation (Widgets, API, guia de design) — **docs.flutter.dev** :contentReference[oaicite:0]{index=0}  
- Persist data with SQLite — Flutter Cookbook (persistência local) :contentReference[oaicite:1]{index=1}  
- Persistent storage architecture: SQL (para dados relacionais / complexos) :contentReference[oaicite:2]{index=2}  

### 🔹 Complementares (exemplos, tutoriais práticos)

- GeeksforGeeks: SQLite em Flutter — exemplo passo a passo :contentReference[oaicite:3]{index=3}  
- Dev.to: guia completo de SQLite no Flutter :contentReference[oaicite:4]{index=4}  
- Medium: “Using SQLite in Flutter” (conceitos e implementação) :contentReference[oaicite:5]{index=5}  
- Medium: “Building a Flutter To-Do List with SQLite Database” (projeto real de exemplo) :contentReference[oaicite:6]{index=6}  
- Medium: “Guide for SQFlite in Flutter” (práticas recomendadas) :contentReference[oaicite:7]{index=7}  
- SQLTutorial.net — guia geral de SQLite (quando quiser reforçar SQL puro) :contentReference[oaicite:8]{index=8}  

---

> *Use este README como checklist de revisão. Para cada tópico, certifique-se de poder explicar, demonstrar e codificar a solução correspondente. O simulado
::contentReference[oaicite:9]{index=9}
