# Atividade em Duplas

## Orientações iniciais
- Baixe o projeto atual - Spin_Flow e deixe FUNCIONANDO
- adicione as bibliotecas:
  sqflite:
  path:
  sqflite_common_ffi:
  sqflite_common_ffi_web:
  mask_text_input_formatter:
- execute o comando: "dart run sqflite_common_ffi_web:setup" no terminal
- comente o comento deleteDatabase na clsase conexão



# Check 01 em 2 fases

## Desafio 1: Implementar CRUD Real com SQLite para Vídeo-aula

**Descrição:**
Atualmente, a tela de lista de vídeo-aulas utiliza apenas dados mockados (em memória, arquivo `mock_video_aula.dart`). O desafio é implementar o CRUD real (Create, Read, Update, Delete) usando SQLite, criando o DAO correspondente, adaptando o formulário e a lista para persistirem e lerem os dados reais do banco.

- **O que fazer:**
  - Criar o DAO para vídeo-aula (`dao_video_aula.dart`).
  - Adaptar o formulário e a lista para usar o DAO em vez do mock.
  - Garantir que as operações de adicionar, editar, excluir e listar estejam funcionando com dados reais.
- **Objetivo de aprendizagem:**
  - Entender a diferença entre mock e persistência real.
  - Praticar integração de formulários e listas com banco de dados SQLite.
- **Tempo sugerido:** 1 aula (50 minutos).

---

## Desafio 2: Corrigir Link relacionado a Salas 

**Descrição:**
Na aba de cadastros e listas há a opção para Salas. Os formulários e a lista já estão prontos, mas é necessário garantir que o link funcione corretamente, permitindo a navegação entre as telas.

- **O que fazer:**
  - Fazer todas rotas relacionadas ao CRUD sala.
- **Objetivo de aprendizagem:**
  - Identificar e executar os passos necessários para garantir a navegação.
  - Explorar e conhecer a estrutura do projeto.
- **Tempo sugerido:** 5 minutos.

---

## Desafio 3: Abastecer Dados de Seleção via DAO (Retirada de Mocks)

**Descrição:**
Cadastros que possuem associação ou dependência utilizam componentes de seleção (dropdowns, listas de opções) que precisam ser abastecidos com dados reais. No projeto, esses componentes ainda utilizam dados mockados. O desafio é substituir esses mocks por dados vindos do banco SQLite, usando os DAOs já implementados.

- **O que fazer:**
  - Identificar todos os campos de seleção que usam mock (ex: seleção de Fabricante, Categoria, etc.).
  - Adaptar para buscar os dados via DAO do SQLite.
  - Garantir que os dados exibidos estejam sincronizados com o banco.
- **Objetivo de aprendizagem:**
  - Praticar leitura de dados assíncrona e atualização de UI.
  - Consolidar o uso de DAOs para abastecimento dinâmico de componentes.
- **Tempo sugerido:** 30 minutos.

---

## Desafio 4: Implementar CRUD Completo de um Cadastro com Associação

**Descrição:**
Escolha um cadastro do seu projeto que envolva associação obrigatória (por exemplo, um cadastro que dependa de outro para ser criado) e implemente o CRUD completo, garantindo que as associações sejam persistidas corretamente no banco de dados.

- **O que fazer:**
  - Implementar ou adaptar o DAO para suportar as associações.
  - Garantir que o formulário permita selecionar e salvar as associações corretamente.
  - Adaptar a lista para exibir as informações associadas.
- **Objetivo de aprendizagem:**
  - Praticar modelagem de relacionamentos em banco de dados.
  - Consolidar o fluxo completo de CRUD com associações em Flutter + SQLite.
- **Tempo sugerido:** 50 minutos.

---

## Próxima semana - pode ser online/entrega via commit

### Desafio 5

**Descrição:**
Implemente três CRUDs completos de cadastros com associação, escolhendo entidades relevantes do seu próprio projeto. Lembre-se de que cada projeto é único, então selecione cadastros que façam sentido para o seu contexto e que envolvam relacionamentos obrigatórios entre entidades.

- **O que fazer:**
  - Para cada cadastro escolhido, implemente o CRUD completo (criar, listar, editar, excluir), garantindo o correto tratamento das associações.
  - Certifique-se de que os dados relacionados sejam carregados e exibidos corretamente nos formulários e listas.
  - Realize a entrega via commit, conforme orientação do instrutor.
- **Tempo sugerido:** 4 aulas (50 minutos cada).

---

**Dica final:**
A atividade em dupla tem o objetivo de incentivar a colaboração e a aprendizagem. Colabore, instigue, tire dúvidas e compartilhe todo o processo, mas busque também realizar cada etapa de forma autônoma para consolidar seu conhecimento. Documente seu processo, registre dúvidas e compartilhe dificuldades para discussão em grupo ou com o instrutor. Cada desafio é um passo importante para dominar Flutter com persistência local, arquitetura limpa e boas práticas de desenvolvimento!
