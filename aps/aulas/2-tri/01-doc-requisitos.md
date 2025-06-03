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

Sistema de identificação:

* **LRP###**: Requisitos principais (ex: LRP001)
* **LRE###**: Requisitos específicos (módulos do sistema, ex: LRE001)
* **LRE###-###**: Detalhamento dos requisitos específicos (ex: LRE001-001)

📌 Cada requisito deve apresentar:

* **Descrição fiel** do que foi dito/origem.
* **Complemento técnico**, se necessário, mantendo a declaração original + validação.
* **Origem** (ex: entrevista, observação, documento).

---

### 3.2 Requisitos Identificados

A tabela abaixo segue a estrutura do padrão IEEE 830.

| ID      | Descrição                                                                                   | Prioridade | Origem | Critérios de Aceitação                                    |
| ------- | ------------------------------------------------------------------------------------------- | ---------- | ------ | --------------------------------------------------------- |
| REQ-001 | Manutenir Materiais de Consumo — campos: *Nome*, *Status* (Disponível, Em Utilização, etc.) | Alta       | LRE001 | Permitir o cadastro e manutenção dos materiais de consumo |
| REQ-002 | Cadastro de Usuários com perfil de acesso diferenciado (Admin, Funcionário)                 | Alta       | LRE002 | Usuário só acessa funções permitidas por seu perfil       |
| REQ-003 | Emissão de relatórios de uso semanal/mensal                                                 | Média      | LRE003 | Relatórios exportáveis em PDF                             |

---

> ✅ **Dica**: mantenha as descrições claras, verificáveis e com foco em impacto/funcionalidade.

---
