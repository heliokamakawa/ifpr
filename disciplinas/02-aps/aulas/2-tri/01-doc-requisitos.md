Aula 03/06
- Curso Virtus  
- Sábado Letivo  
- Redefinição de grupos (se quiserem)  
- Correções gerais - afinamento.


## 1. Visão Geral do Sistema

Apresentar de forma **breve e objetiva**, o *problema ou necessidade* que o sistema se propõe a resolver, **contextualizando o ambiente** e os **desafios enfrentados**.

⚠️ **Importante:**

* Esta seção **não deve conter requisitos** — eles serão descritos em tópico próprio.
* **Evite repetir informações** já tratadas em outras partes do documento, para garantir **clareza, objetividade** e **facilidade de manutenção**.

> 📌 *Este é um documento técnico. Mantenha a linguagem precisa e direta, sem omitir informações relevantes.*

---

### 1.1 Introdução (Análise de Requisitos)

Problematização, contextualização do projeto, objetivo do documento/projeto - serve como apoio aos outros tópicos, servindo de referência para todas as partes interessadas durante o desenvolvimento do sistema.

Exemplo: 
Este documento apresenta a análise de requisitos para o desenvolvimento de um Sistema de Controle de Empréstimo de Materiais e Achados e Perdidos (SCEAP) para o Instituto Federal do Paraná (IFPR), Campus Paranavaí. Seu objetivo é detalhar as necessidades dos usuários, os requisitos funcionais e não funcionais, e o escopo do sistema proposto, servindo como base para as fases subsequentes de design, desenvolvimento e implantação do software.

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
>> - capturar fielmente as necessidades e expectativas dos stakeholders;
>> - sem detalhamento técnico não mencionado;
>> - esta validação cabe validação/verificação
>> - em caso da descrição fiel dito precisar de mais especificação, indica-se a manutenção da descrição original com o complemento da validação


---

### 3.2 Requisitos Identificados

Para garantir uniformidade na especificação dos requisitos, adotamos as seguintes siglas e padrões para os campos:

- `*` **Campo Obrigatório:** informação essencial, não pode ficar vazia.  
  Exemplo: `Nome*` — identifica o item, é obrigatório.

- `&` **Campo Enum (opções definidas):** campo com conjunto fixo de valores possíveis.  
  Exemplo: `Status&` — valores: `Disponível`, `Em Utilização`, `Danificado`, `Aguardando Manutenção`.

- `#` **Campo Associado:** campo relacionado a outro cadastro ou requisito.  
  Exemplo: `Material#` — relacionado ao cadastro de materiais (REQ-001).

- `+` **link** para cadastrar novo item diretamente no campo de associação.  

- `@` **Campo Data (máscara e validações):**  
  - Máscara: `DD/MM/AAAA`  
  - Validações comuns:  
    - `@Data Empréstimo` não pode ser anterior à data atual.  
    - `@Data Devolução Prevista` deve ser igual ou posterior à `@Data Empréstimo`.

O termo **"Manutenir"** refere-se ao conjunto completo de operações de gerenciamento de uma entidade do sistema, incluindo **criar, consultar, atualizar e excluir** (CRUD). 


> ⚠️**Validações específicas:** devem ser claras e específicas para evitar ambiguidades.  
>  Exemplo negativo: “Validar CPF correto.”  
>  Exemplo positivo: “Validar dígitos verificadores do CPF segundo algoritmo padrão.”
> Sempre descreva detalhadamente as validações para facilitar testes e implementação, evitando retrabalho e dúvidas.

---

Padrão utilizado: IEEE 830.

| ID      | Descrição                                                                                                                                                                                                                                                                                                                                                                | Prioridade | Origem      | Critérios de Aceitação                                                                                                                                                                                                                                                                                     |
| ------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------- | ----------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| REQ-001 | **Manutenir Materiais de Consumo** — campos: <br>  - `*Nome`: campo texto. <br>  - `&Status`: opções — Disponível, Em Utilização, Danificado, Aguardando Manutenção.                                                                                                                                                                                                     | Alta       | LRE-001-001 | - Permitir cadastro de novos materiais. <br> - Permitir edição dos materiais existentes. <br> - Permitir exclusão apenas se não houver empréstimos vinculados. <br> - Validar obrigatoriedade dos campos.                                                                                                  |
| REQ-002 | **Manutenir Usuários** — campos: <br>  - `*Nome`: campo texto. <br>  - `&Perfil`: opções — Admin, Funcionário.                                                                                                                                                                                                                                                           | Alta       | LRE-001-002 | - Cadastro deve validar perfis corretamente. <br> - Usuários só acessam funções permitidas por seu perfil. <br> - Permitir desativação de usuários sem exclusão.                                                                                                                                           |
| REQ-003 | **Emitir Relatórios de Uso** — campos: <br>  - Período de início e fim (`*Data Inicial`, `*Data Final`): máscara `dd/mm/aaaa`.                                                                                                                                                                                                                                           | Média      | LRE-001-003 | - Relatórios devem ser exportáveis em PDF. <br> - Deve filtrar por período. <br> - Incluir gráficos com resumo estatístico.                                                                                                                                                                                |
| REQ-004 | **Registrar Empréstimo de Material** campos: <br>  - `*#Usuário +`: seleção a partir do cadastro de usuários. <br>  - `*#Material +`: seleção a partir do cadastro de materiais. <br>  - `*Data do Empréstimo`: máscara `dd/mm/aaaa`, não aceitar datas futuras. <br>  - `*Data Prevista de Devolução`: máscara `dd/mm/aaaa`, deve ser maior que a data de empréstimo. | Alta       | LRE-001-004 | - Permitir seleção de usuário e material previamente cadastrados. <br> - Validar obrigatoriedade de todos os campos. <br> - Não permitir empréstimo de materiais com status "Em Utilização" ou "Danificado". <br> - Registrar data e hora da operação. <br> - Registrar usuário responsável pela operação. |
| REQ-005 | **Dashboard Principal (Tela Inicial do Sistema)** — Tela inicial exibida após o login, com interface organizada em **abas**. A **aba principal padrão** será a de **Empréstimo Rápido**, por ser a funcionalidade mais utilizada. A estrutura proposta é: <br><br> **Aba 1 — Empréstimo Rápido (padrão):** <br>  - Interface simplificada para registro de empréstimos. <br>  - Os campos, validações e lógica seguem exatamente o definido no **REQ-004**. <br>  - Incluir **cards informativos dinâmicos**: <br>    • Total de empréstimos em andamento <br>    • Lista resumida (últimos 5), com nome do material, usuário e data prevista de devolução <br><br> **Aba 2 — Visão Geral:** <br>  - Total de materiais cadastrados <br>  - Total de empréstimos ativos <br>  - Número de usuários ativos <br>  - Avisos ou alertas <br><br> **Aba 3 — Atalhos Rápidos:** <br>  - Acesso direto a funcionalidades principais: Manutenir Usuários, Manutenir Materiais, Relatórios, Achados e Perdidos | Alta       | LRE-001-005 | - A aba "Empréstimo Rápido" deve ser carregada automaticamente após o login. <br> - Deve respeitar totalmente o REQ-004 quanto aos campos e regras de empréstimo. <br> - Cards informativos devem ser atualizados em tempo real. <br> - Lista de empréstimos deve conter: nome do material, nome do usuário e data prevista de devolução. <br> - Botão \[Registrar Empréstimo] deve gravar os dados conforme REQ-004 e limpar o formulário. <br> - Abas adicionais devem estar funcionais e acessíveis. <br> - Tela responsiva e compatível com navegadores modernos. |
| REQ-006 | **Manutenir Ocorrências de Achados e Perdidos** — campos: <br>  - `*Descrição`: campo texto. <br>  - `*Data do Registro`: máscara `dd/mm/aaaa`. <br>  - `&Status`: opções — Encontrado, Entregue, Descartado.                                                                                                                                                            | Média      | LRE-002-001 | - Permitir registrar novas ocorrências. <br> - Permitir alteração de status. <br> - Validar obrigatoriedade dos campos. <br> - Impedir exclusão de registros com status "Entregue" ou "Descartado".                                                                                                        |




---

> ✅ **Dica**: mantenha as descrições claras, verificáveis e com foco em impacto/funcionalidade.

---
