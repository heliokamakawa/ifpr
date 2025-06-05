# 🧩 Fase 2 — Entendendo o Domínio: De Campos a Conceitos

## 🎯 Objetivo
Aprofundar a percepção de que o desenvolvimento de software exige análise, organização e entendimento do domínio. Os alunos devem identificar padrões, agrupar campos logicamente e compreender o impacto dessas decisões na modelagem orientada a objetos.

---

## 🚩 Prompt aprimorado

```
Desenvolva um sistema para cadastro de alunos em uma escola de esportes.  
O sistema deve permitir o registro de informações por meio de um **formulário organizado em três grupos principais**:
 1. **Dados da Pessoa**
 2. **Endereço**
 3. **Responsável**
O layout da interface deve apresentar os campos agrupados de forma clara, com título para cada grupo, separação visual adequada (cards, abas ou colunas, por exemplo) e identificação dos campos obrigatórios com um asterisco (*) ou outro recurso visual.
 O formulário deve conter os seguintes campos: (* indica obrigatório)
Dados da Pessoa
- Nome completo*  
- Sobrenome*  
- Data de nascimento*  
- CPF*  
- Gênero (opcional)  
- Telefone*  
- E-mail (opcional)  

Endereço
Todos os campos deste grupo são obrigatórios:  
- Rua  
- Número  
- Bairro  
- Cidade  
- Estado  
- CEP  

Responsável
Este grupo deve ser exibido **apenas se a pessoa cadastrada for menor de idade** (definir uma lógica condicional).  
Todos os campos abaixo são obrigatórios quando exibidos:
- Nome completo  
- Grau de parentesco  
- Telefone  
- CPF  

Informações escolares
Agrupe os seguintes campos com título "Informações escolares":
- Modalidade esportiva matriculada*  
- Turma*  
- Status* (ativo/inativo)  
- Data da matrícula*  
- Plano* (mensal, trimestral ou anual)

um campo booleano se o cadastro é ativo (no qual o valor padrão deve ser ativo)  


💡 Requisitos funcionais implícitos
- O sistema deve **validar os campos obrigatórios** antes de permitir o envio.
- O campo “Responsável” deve **aparecer ou desaparecer dinamicamente** conforme a data de nascimento indicar menoridade.
- Os grupos devem ser **visualmente bem separados** para facilitar o entendimento.
- Todos os dados devem ser armazenados de forma estruturada, permitindo futura expansão.
```
---

## 🎓 O que o aluno desenvolve aqui?

- Capacidade de **ler criticamente um enunciado estruturado**.
- Noção de **análise de requisitos básicos**.
- Pensamento em **organização de dados e modularidade visual**.
- Introdução à **componentização futura** com base em grupos lógicos.
- Percepção de como **campos viram atributos, grupos viram classes e regras viram métodos.**

---
