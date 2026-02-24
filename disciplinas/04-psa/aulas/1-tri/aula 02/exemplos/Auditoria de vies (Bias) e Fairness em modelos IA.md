# Projeto Prático: Auditoria de Viés (Bias) e Fairness em Modelos de IA  
Tema: Qualidade de Software para Sistemas de IA (Responsible AI / SE4AI)

Este projeto é um guia passo a passo para equipes realizarem um experimento replicável de **detecção e mitigação de viés algorítmico** em um modelo de Machine Learning.

Referência conceitual complementar usada neste projeto:  
🔗 **AI Bias Audit: 7 Steps to Detect Algorithmic Bias** — Optiblack Insights  
https://optiblack.com/insights/ai-bias-audit-7-steps-to-detect-algorithmic-bias

Este texto serve como **checklist conceitual** e sequência recomendada de tarefas para orientar a auditoria de modelos de IA.

---

## 1) O que vocês vão “testar” exatamente

Vocês não estão testando “unit tests”.  
Vocês estão testando um atributo de qualidade não funcional do sistema de IA:

- O modelo decide de forma **desigual entre grupos**?
- Essa desigualdade pode ser medida?
- Pode ser reduzida? Qual o custo em performance?

Os 7 passos para auditar viés, conforme explicados no artigo de apoio, são exatamente o que orienta o procedimento:  
1) Entender os dados,  
2) Avaliar o modelo,  
3) Medir fairness,  
4) Testar vieses combinados,  
5) Verificar impacto no mundo real,  
6) Documentar e relatar,  
7) Propor melhorias.  
(*ver link: Optiblack AI Bias Audit*)

---

## 2) Pré-requisitos mínimos do experimento

Para treinar e auditar um modelo, vocês precisam de:

1. Um dataset tabular (CSV) com:
   - Colunas de atributos (features)
   - Uma coluna alvo (label) binária (0/1)
   - Pelo menos uma coluna sensível (para auditoria de fairness)
2. Um modelo de classificação simples (baseline)
3. Métricas de desempenho (ex.: F1)
4. Métricas de fairness (ex.: Disparate Impact, Equal Opportunity)
5. Uma técnica de mitigação (pré, in ou pós-processamento)
6. Um relatório de auditoria (protocolo + resultados + análise crítica)

Este guia segue a sequência lógica recomendada de etapas descritas no texto de apoio, ajustadas para a disciplina.

---

## 3) Escolha do dataset: use dados prontos

Escolham um dataset clássico e público:

### Caminho A — Adult Income
- Prevê renda
- Atributo sensível: sexo (e possivelmente raça)

### Caminho B — German Credit
- Prevê risco de crédito
- Atributo sensível: idade ou sexo

### Caminho C — COMPAS
- Prevê risco de reincidência
- Atributo sensível: raça

### Caminho D — Evasão escolar
- Prevê evasão
- Atributo sensível: renda, gênero ou tipo de escola

A escolha deve incluir um atributo sensível para que a auditoria de fairness esteja bem definida — conforme passo 1 do processo de auditoria indicado no texto de referência.

---

## 4) Definição do recorte experimental

Escolham um recorte claro baseado neste checklist do artigo de apoio:

### Recorte 1 — Auditoria simples (rápido)
- Treinar modelo
- Medir fairness (2 métricas)
- Aplicar mitigação
- Medir novamente

### Recorte 2 — Comparação de modelos
- Testar 2–3 modelos
- Medir fairness e performance
- Comparar trade-off

### Recorte 3 — Comparar técnicas de mitigação
- Testar 2 mitigadores
- Analisar impacto na justiça e performance

### Recorte 4 — Interseccionalidade
- Avaliar fairness sob mais de um atributo sensível

Estes são alinhados com os 7 passos de auditoria: medir, comparar e propor melhorias.

---

## 5) Preparação dos dados

Antes de treinar, vocês devem:

1. Garantir que o label é binário
2. Separar atributos (X) e alvo (y)
3. Tratar valores ausentes
4. Codificar categorias
5. Separar treino/teste
6. Definir grupo sensível

Esse procedimento corresponde aos primeiros passos de auditoria — conhecer e preparar os dados adequadamente para avaliação de fairness.

---

## 6) Treino do baseline (modelo simples)

Treinem um modelo de classificação simples (por exemplo, Logistic Regression ou Random Forest).  
Após o treino, avaliem performance no conjunto de teste:

- F1-score  
- Precision  
- Recall  

Isso corresponde ao passo “examinar o modelo de IA” no artigo de apoio.

---

## 7) Auditoria de fairness

Aqui vocês vão medir se há vieses no modelo.  
Recomendam-se pelo menos duas métricas:

- Disparate Impact  
- Statistical Parity Difference  
- Equal Opportunity Difference  

A ideia segue o passo “medir fairness” e “testar vieses combinados” do texto de apoio.

Registrem os resultados em tabela e expliquem o significado de cada métrica no contexto do problema.

---

## 8) Mitigação do viés

Após medir a desigualdade, testem uma técnica de mitigação:

- Pré-processamento
- In-processamento
- Pós-processamento

Reavaliem as métricas de fairness e performance.

Isto corresponde ao passo de “propor melhorias” indicado no texto de apoio e mostra a aplicação prática de engenharia de qualidade de software em IA.

---

## 9) Comparação e análise

Elaborem uma tabela comparando antes/depois:

- Performance (F1, precision, recall)
- Métricas de fairness

Discussão esperada:

- O viés diminuiu?
- Qual o custo em performance?
- Qual técnica de mitigação é mais adequada?

Esta etapa encerra a auditoria e segue os passos finais do checklist de auditoria: medir, comparar e relatar.

---

## 10) Protocolo experimental (obrigatório)

O documento protocol.md deve incluir:

1. Problema e objetivo
2. Dataset e justificativa
3. Atributo sensível e definição de grupos
4. Modelo(s) e justificativa
5. Métricas de performance
6. Métricas de fairness
7. Técnica de mitigação escolhida
8. Execução (treino/teste)
9. Resultados e tabela comparativa
10. Discussão crítica e vulnerabilidades

A ordem corresponde diretamente aos passos de auditoria descritos no texto de apoio.

---

## 11) Entrega mínima do projeto

- Dataset documentado
- Baseline treinado
- Métricas de performance
- Métricas de fairness
- Mitigação testada
- Comparação antes/depois
- Protocolo completo
- Repositório organizado

---

## 12) Observação sobre o texto de apoio

O artigo “AI Bias Audit: 7 Steps to Detect Algorithmic Bias” não é científico peer-review, mas é **atual e útil metodologicamente**, pois apresenta um checklist de tarefas que orientam o desenvolvimento do projeto. Ele funciona como uma sequência de etapas práticas que podem ser conectadas com as métricas e decisões de engenharia de qualidade de software em IA.

🔗 Link de referência:  
https://optiblack.com/insights/ai-bias-audit-7-steps-to-detect-algorithmic-bias

---

## Resultado esperado

Ao final, espera-se que cada grupo seja capaz de:

- Formular um protocolo replicável
- Auditar um modelo de IA de forma objetiva
- Interpretar métricas de fairness
- Comparar trade-offs entre justiça e desempenho
- Relatar conclusões sólidas com base em dados

Esse é um exercício de **engenharia de qualidade aplicada a sistemas de IA** — moderno, replicável e relevante.

