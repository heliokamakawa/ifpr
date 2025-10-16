# Conteúdo Mínimo — Persistência de Entidade com Associação

Este documento reúne os tópicos fundamentais que todo aluno deve dominar para aplicar **persistência de entidade com associação** em Flutter + SQLite (nível mínimo para simulado/avaliação).

---

## Widgets

### Visual (exemplos principais)
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

### Estrutural (layout e organização)
- `Column`  
- `Row`  
- `Container`  
- `Padding`  
- `Align`  
- `Center`  
- `ListView`  
- `Scaffold`  

---

## Estado e Gerência de Dados

- **Comunicação entre widgets via `setState()`**  
  Permite atualizar o estado interno do widget e refazer `build()` com novas informações.

- **Passagem de dados entre telas (via rotas / Navigator)**  
  Enviar objetos ou parâmetros entre páginas (ex: editar um registro recebido da tela de listagem).

- **Atualização de dados com DropdownButton, ListTile, etc.**  
  Por exemplo, ao editar uma entidade que possui associação, você pode usar um `DropdownButton` para escolher o elemento associado (ex: selecionar um “cliente” para um “pedido”) ou `ListTile` para exibir opções clicáveis que alteram o valor relacionado.  

---

## Formulários e Validação

- **Criação de formulários com `Form` e `TextFormField`**  
  Estrutura padrão para capturar múltiplos campos com validação.

- **Controladores (`TextEditingController`)**  
  Permitem leitura e manipulação do conteúdo dos campos.

- **Validação de campos e mensagens de erro**  
  Usando a propriedade `validator:` para impedir valores inválidos (ex: campos vazios, formato incorreto).

- **Submissão de formulários e integração com banco de dados**  
  Após a validação bem-sucedida, salvar ou atualizar o objeto no banco de dados local (SQLite) e refletir isso na interface.

---

## Componentização e Interface

- **Widgets básicos** → `Text`, `Column`, `Row`, `Container`, etc.  
- **Widgets de layout** → `ListView`, `GridView`, `Stack`, etc.  
- **Widgets personalizados / composição** → criar componentes reutilizáveis (ex: um campo customizado, botão estilizado, card de exibição).  
- **Uso adequado de `const`, `final` e atenção à performance de renderização**  
  Evitar reconstruções desnecessárias e promover eficiência no código.

---

## Persistência (SQLite / Persistência local)

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

## Boas Práticas e Arquitetura

### Código limpo  
- Nomenclatura clara e coerente (funções e variáveis com nomes significativos)  
- Legibilidade do código (idealmente evitar funções longas, lógica excessiva em widgets)  
- Boas práticas Dart/Flutter (uso de `const`, evitar duplicação, manter simplicidade)

### Estrutura de pastas organizada & separação de responsabilidades  
- **models/** → definição das entidades / classes de domínio  
- **views/** → telas, widgets de interface  
- **controllers / services / repositories** → lógica de negócio, acesso a dados, regras de integração  
- Cada pasta e arquivo com responsabilidade única e coesa  

---

## Recursos de Estudo

### 🔹 Referência oficial (principal)

- [📘 Documentação principal do Flutter](https://docs.flutter.dev/?utm_source=chatgpt.com)  
- [🧱 Catálogo oficial de Widgets](https://docs.flutter.dev/ui/widgets?utm_source=chatgpt.com)  
- [📄 Layout Tutorial — aprendendo a organizar widgets](https://docs.flutter.dev/ui/layout/tutorial?utm_source=chatgpt.com)  
- [🧩 Cookbook: formulários com validação](https://docs.flutter.dev/cookbook/forms/validation?utm_source=chatgpt.com)  
- [💾 Cookbook: persistência com SQLite (sqflite)](https://docs.flutter.dev/cookbook/persistence/sqlite?utm_source=chatgpt.com)  
- [🏗 Arquitetura com SQL e dados persistentes](https://docs.flutter.dev/app-architecture/design-patterns/sql?utm_source=chatgpt.com)  
- [🎓 Flutter Learning Resources (Codelabs e exemplos oficiais)](https://docs.flutter.dev/reference/learning-resources?utm_source=chatgpt.com)

### 🔹 Tutoriais e Guias Complementares

#### 🧩 Widgets / Layout / Interface

- [📘 What are Widgets in Flutter? (GeeksforGeeks)](https://www.geeksforgeeks.org/flutter/what-is-widgets-in-flutter/?utm_source=chatgpt.com)  
- [🎥 Flutter Layout Tutorial (YouTube — oficial Flutter)](https://www.youtube.com/watch?v=R2hLgysH6JA&utm_source=chatgpt.com)  

#### 💾 SQLite / Persistência Local

- [📗 SQLite in Flutter (GeeksforGeeks)](https://www.geeksforgeeks.org/sqlite-in-flutter/?utm_source=chatgpt.com)  
- [🧠 Flutter SQFLite Tutorial Example (Dbestech)](https://www.dbestech.com/tutorials/flutter-sqflite-tutorial-example?utm_source=chatgpt.com)  
- [🧩 Guide for SQFlite in Flutter (Medium)](https://medium.com/@dpatel312002/guide-for-sqflite-in-flutter-59e429db1088?utm_source=chatgpt.com)  
- [🧱 Building a Flutter To-Do List with SQLite (Medium)](https://medium.com/@gopikaprabhu020/building-a-sqlite-flutter-to-do-list-app-35e8313d0d49?utm_source=chatgpt.com)  
- [💡 How to Use SQFlite on Windows (Dev.to)](https://dev.to/ayoubzulfiqar/how-to-use-sqflite-on-windows-flutter-ggm?utm_source=chatgpt.com)  
- [📚 SQLTutorial.net — fundamentos de SQL puro](https://www.sqlitetutorial.net/?utm_source=chatgpt.com)  

#### 🧠 Formulários e Validação

- [📄 Build a Form with Validation (Flutter Cookbook)](https://docs.flutter.dev/cookbook/forms/validation?utm_source=chatgpt.com)  
- [🧩 Form Validation in Flutter (GeeksforGeeks)](https://www.geeksforgeeks.org/form-validation-in-flutter/?utm_source=chatgpt.com)  
- [💡 Handling Forms and Input Validation (Medium)](https://medium.com/flutter-community/flutter-form-validation-b874fb53e248?utm_source=chatgpt.com)  

#### 🧱 Boas Práticas / Arquitetura / Clean Code

- [🧭 Clean Architecture in Flutter (Medium)](https://medium.com/flutter-community/clean-architecture-with-flutter-2e1e4da5e9f9?utm_source=chatgpt.com)  
- [🧩 Folder Structure Best Practices (Dev.to)](https://dev.to/flutterdevs/flutter-folder-structure-best-practices-4j6b?utm_source=chatgpt.com)  
- [📘 Effective Dart: Style Guide (oficial)](https://dart.dev/guides/language/effective-dart/style?utm_source=chatgpt.com)  
