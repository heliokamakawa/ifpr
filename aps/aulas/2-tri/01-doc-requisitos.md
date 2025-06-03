## 1. Visão Geral do Sistema

Apresentar de forma **breve e objetiva**, o *problema ou necessidade* que o sistema se propõe a resolver, **contextualizando o ambiente** e os **desafios enfrentados**.

⚠️ **Importante:**

* Esta seção **não deve conter requisitos** — eles serão descritos em tópico próprio.
* **Evite repetir informações** já tratadas em outras partes do documento, para garantir **clareza, objetividade** e **facilidade de manutenção**.

> 📌 *Este é um documento técnico. Mantenha a linguagem precisa e direta, sem omitir informações relevantes.*

---

### 1.1 Introdução (Análise de Requisitos)

Apresenta o **objetivo deste documento**, que é consolidar e organizar as informações levantadas na fase de análise de requisitos, servindo de referência para todas as partes interessadas durante o desenvolvimento do sistema.

---

### 1.2 Público-Alvo

Define quem são os **destinatários deste documento**, como:

* **Stakeholders**: interessados no sistema.
* **Desenvolvedores**: equipe técnica responsável pela implementação.
* **Testadores**: responsáveis pela validação e verificação.
* **Gerência**: supervisores ou gestores do projeto.

Também é possível descrever os **principais papéis de usuários internos e externos** que utilizarão o sistema.

---

### 1.3 Escopo

Delimita o que está **dentro e fora do escopo** do sistema, evitando repetir requisitos ou detalhes técnicos desnecessários nesta fase.

✅ Deve incluir:

* Se o sistema será **web, desktop ou aplicativo móvel**.
* Se será um **sistema voltado ao cliente (customer-facing)** ou **interno/back-office**.
* **Funcionalidades que não estarão presentes**, mesmo que sejam comumente esperadas, com breve justificativa.

❌ Evite citar requisitos funcionais detalhados aqui.

---

### 1.4 Benefícios Esperados

Apresenta uma **visão geral dos ganhos e melhorias** que o sistema proporcionará ao resolver os problemas identificados.

> ⚠️ Não confundir com os requisitos do sistema — esta seção descreve os **impactos positivos gerais**, não funcionalidades específicas.

---

### 1.5 Definições, Acrônimos e Abreviações *(opcional, porém recomendado)*

Lista de termos técnicos, siglas e expressões que podem gerar dúvidas ou múltiplas interpretações.

📘 Exemplo:

* **CRUD**: Create, Read, Update, Delete
* **UI**: User Interface (Interface do Usuário)
* **API**: Application Programming Interface

---

## 2. Pesquisa de Mercado

Pesquisa e análise de **pelo menos três soluções similares**, conforme critérios claros de seleção.

📌 Critérios de comparação podem incluir:

* Popularidade (mais baixado na loja de apps)
* Avaliação técnica (recomendações em fóruns ou sites especializados)
* Aderência ao escopo do projeto
* Pesquisa a um grupo especializado

🔍 **Instrumento de busca**: descrever as ferramentas ou plataformas utilizadas para realizar a pesquisa (ex: Play Store, GitHub, Google, Product Hunt).

### Tabela Comparativa

| Projeto   | Plataforma | Funcionalidades-Chave                | Avaliação | Observações              |
| --------- | ---------- | ------------------------------------ | --------- | ------------------------ |
| Projeto A | Web        | Cadastro, Relatórios, Integração API | ★★★★☆     | Muito usado no setor X   |
| Projeto B | Android    | Notificações, Geolocalização         | ★★★★★     | Melhor ranqueado na loja |
| Projeto C | Desktop    | Multiusuário, Backup, CRUD Avançado  | ★★★☆☆     | Foco em uso interno      |

ou

| Funcionalidade   | Projeto1 | Projeto2 | Projeto3 |  Observações |
| --------- | ---------- | ------------------------------------ | --------- | ------------------------ |
| Funcionalidade A | S/N |  S/N | S/N | CRUD Avançado   |
| Funcionalidade B | S/N |  S/N | S/N | Backup |
| Funcionalidade C | S/N |  S/N | S/N |Multiusuário  |

> ⚠️ Utilizar funcionalidade que são fundamentais para o escopo

---

## 3. Requisitos do Sistema

Apresentação das técnicas utilizadas para levantamento de requisitos, bem como a estrutura adotada para documentação.

📚 **Técnicas de levantamento** (exemplos):

* Entrevistas com usuários
* Brainstorming com a equipe
* Questionários
* Análise de documentos existentes

📖 Referência metodológica recomendada: [IEEE 830](https://ieeexplore.ieee.org/document/720574) ou [ISO/IEC/IEEE 29148](https://www.iso.org/standard/45171.html)

---

### 3.1 Levantamento de Requisitos
Esta seção apresenta os requisitos levantados junto aos stakeholders e fontes documentais, organizados hierarquicamente para facilitar o entendimento e a rastreabilidade.

Sistema de identificação:  

- **LRP (Levantamento Requisito Principal):**  
  Representa o objetivo geral do sistema, a necessidade central que ele deve atender.   

- **LRE (Levantamento Requisito Específico):**  
  Representa os módulos ou funcionalidades principais que compõem o sistema, derivados do requisito principal.   

- **LRE Sub-itens:**  
  Divisão técnica e interpretativa dos módulos em funcionalidades específicas ou agrupamentos de requisitos menores.   

Siglas para facilitar a rastreabilidade:  
- E = Entrevista  
- Q = Questionário  
- D = Documento analisado  
- O = Observação direta

**Exemplo:**
- **LRP001 - Controle de empréstimo e devolução de materiais e achados e perdidos**  
  Objetivo geral do sistema: controlar o fluxo de empréstimos e devoluções de materiais, assim como gerenciar itens achados e perdidos no ambiente da organização.  
  Origem: E (Entrevista)

  - **LRE001 - Controle de empréstimos e devolução de materiais**  
    Módulo responsável pelo cadastro e movimentação dos materiais emprestados.  
    Origem: E (Entrevista)

    - **LRE001-001 - Cadastro de materiais**  
      Funcionalidade para registro dos materiais disponíveis para empréstimo.  
      Campos principais:  
        - Nome: identificador do material, campo essencial para busca e organização.  
        - Descrição: detalhes adicionais sobre o material, como características e estado.  
        - Status: indica se o material está disponível, em uso, danificado, ou aguardando manutenção.

    - **LRE001-002 - Registro de empréstimo de material**  
      Permite registrar o empréstimo de um material a um usuário.  
      Campos principais:  
        - Material: referência ao material emprestado (associação com cadastro de materiais).  
        - Usuário: quem está recebendo o material.  
        - Data de Empréstimo: data do início do empréstimo.  
        - Data de Devolução Prevista: data estimada para devolução do material.

    - **LRE001-003 -...**  

  - **LRE002 - Controle de achados e perdidos**  
    Gerenciamento dos itens encontrados e que aguardam identificação ou devolução.  
    Origem: E (Entrevista)

    - **LRE002-001 - Registro de item achado**  
      Cadastro de itens encontrados no ambiente, para controle e eventual devolução.  
      Campos principais:  
        - Descrição do item: informações que permitam identificar o objeto.  
        - Local onde foi encontrado: registro do local do achado.  
        - Data do registro: data em que o item foi registrado no sistema.

    - **LRE002-002 - ...**  

> **Observação:** 
- capturar fielmente as necessidades e expectativas dos stakeholders;
- sem detalhamento técnico não mencionado;
- esta validação cabe validação/verificação
- em caso da descrição fiel dito precisar de mais especificação, indica-se a manutenção da descrição original com o complemento da validação


---

### 3.2 Requisitos Identificados

Para garantir uniformidade na especificação dos requisitos, adotamos as seguintes siglas e padrões para os campos:

- `*` **Campo Obrigatório:** informação essencial, não pode ficar vazia.  
  Exemplo: `Nome*` — identifica o item, é obrigatório.

- `&` **Campo Enum (opções definidas):** campo com conjunto fixo de valores possíveis.  
  Exemplo: `Status&` — valores: `Disponível`, `Em Utilização`, `Danificado`, `Aguardando Manutenção`.

- `#` **Campo Associado:** campo relacionado a outro cadastro ou requisito.  
  Exemplo: `Material#` — relacionado ao cadastro de materiais (REQ-001).

- `@` **Campo Data (máscara e validações):**  
  - Máscara: `DD/MM/AAAA`  
  - Validações comuns:  
    - `@Data Empréstimo` não pode ser anterior à data atual.  
    - `@Data Devolução Prevista` deve ser igual ou posterior à `@Data Empréstimo`.

> ⚠️**Validações específicas:** devem ser claras e específicas para evitar ambiguidades.  
>  Exemplo negativo: “Validar CPF correto.”  
>  Exemplo positivo: “Validar dígitos verificadores do CPF segundo algoritmo padrão.”
> Sempre descreva detalhadamente as validações para facilitar testes e implementação, evitando retrabalho e dúvidas.

---

Padrão utilizado: IEEE 830.

| ID      | Descrição                                                                                                          | Prioridade | Origem       | Critérios de Aceitação                                                                                                  |
| ------- | ------------------------------------------------------------------------------------------------------------------ | ---------- | ------------ | ----------------------------------------------------------------------------------------------------------------------- |
| REQ-001 | Manutenção de Materiais de Consumo — Campos: `Nome*` (texto livre), `Status&` (Disponível, Em Utilização, Danificado, Aguardando Manutenção) | Alta       | LRE001-001   | `Nome` não pode ficar vazio; `Status` deve ser uma das opções definidas; alterações refletidas em tempo real.           |
| REQ-002 | Registro de Empréstimo — Campos: `Material#` (ligado a REQ-001, apenas materiais Disponíveis), `Usuário*`, `@Data Empréstimo` (≥ data atual), `@Data Devolução Prevista` (≥ `@Data Empréstimo`) | Alta       | LRE001-002   | Validar disponibilidade do material; validar máscaras e coerência das datas; usuário ativo.                             |
| REQ-003 | Cadastro de Usuários — Campos: `Nome*`, `Perfil&` (Admin, Funcionário), `CPF*` (validar dígitos verificadores CPF)   | Alta       | LRE002       | `Nome` obrigatório; `Perfil` deve ser um dos valores válidos; CPF validado segundo algoritmo oficial.                    |


---

> ✅ **Dica**: mantenha as descrições claras, verificáveis e com foco em impacto/funcionalidade.

---
