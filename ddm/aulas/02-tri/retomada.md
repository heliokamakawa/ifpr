# 📘 Aula de Retomada – Desenvolvimento para Dispositivos Móveis

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
- Implementar método de **inserção**.  
- Criar tela simples que insira **dados fixos** (sem formulário ainda).  
- Implementar **listagem** com `ListView.builder` e `ListTile`.  
- **Teste parcial:** inserir dados fixos e ver listados na tela.  
  - Feedback visual rápido → motiva o aluno.  

---

### 🔹 Terceira hora (2h – 3h): exclusão e atualização
- Implementar **exclusão** (ícone no `ListTile`).  
- Implementar **atualização** (edição simples).  
- **Teste parcial:** excluir e editar registros.  

---

### 🔹 Quarta hora (3h – 4h): formulários e validações
- Substituir inserções fixas por **formulário com `Form`, `FormKey`, `TextFormField`**.  
- Adicionar **validações mínimas** (ex: campo não vazio).  
- Usar **ElevatedButton** para salvar.  
- **Teste final:** fluxo completo → cadastrar via formulário, listar, editar e excluir.  

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
- **Exigência:** CRUD básico com `sqflite` e `path`.  
  - **Create e Read obrigatórios.**  
  - Update/Delete opcionais se houver tempo.  
- **Critérios de avaliação:**  
  - Funcionalidade mínima entregue (50%)  
  - Organização do código (20%)  
  - Documento técnico (20%)  
  - Postura/produtividade (10%)  

### O que NÃO será flexibilizado
- Durante o trimestre, muitos **não entregaram projeto**, **não participaram das discussões** e **não estudaram os pontos críticos no Moodle**.  
- Não seria justo agora facilitar demais.  
- **Não haverá rigor em perfeição**, mas será cobrado o **mínimo necessário**.  
- Hoje é a chance de treinar com apoio. Semana que vem será o momento de mostrar **o que cada um consegue fazer sozinho**.  
