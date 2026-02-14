# Projeto Prático — Auditoria de Viés em Sistemas de IA  
Disciplina: Projeto de Software Avançado  
Tema: Qualidade de Software para Sistemas Inteligentes (Fairness & Responsible AI)

Este projeto orienta a implementação de uma auditoria prática de viés (bias) em um modelo de Machine Learning.  
O foco é avaliar um atributo de qualidade não funcional: **fairness algorítmica**.

A execução será guiada por três referências principais:

1. AI Fairness 360 (AIF360) — Toolkit oficial  
   https://ai-fairness-360.org/

2. Documentação “Getting Started” do AIF360  
   https://aif360.readthedocs.io/en/latest/Getting%20Started.html

3. Tutorial conceitual (Justiça Algorítmica – DIO)  
   https://www.dio.me/articles/justica-algoritmica-como-detectar-e-mitigar-vies-em-modelos-de-ia-usando-python

Esses três materiais são suficientes para estruturar um experimento completo.

---

## Objetivo do Projeto

Treinar um modelo de classificação utilizando um dataset público e:

1. Medir desempenho (performance tradicional)
2. Medir fairness (viés estatístico entre grupos)
3. Aplicar técnica de mitigação
4. Comparar resultados antes e depois

O resultado final deve permitir responder:

- O modelo apresenta viés?
- Esse viés pode ser reduzido?
- Qual o impacto na performance?

---

## Caminho Geral do Projeto

A seguir está o caminho recomendado para execução.

---

## Etapa 1 — Escolha do Dataset

Escolher um dataset público que contenha:

- Variável alvo binária (0/1)
- Pelo menos um atributo sensível (ex.: sexo, raça, idade)

Datasets recomendados (já disponíveis no AIF360):

- Adult Income
- German Credit
- COMPAS

Critério de escolha:
O dataset precisa permitir comparação entre grupos.

Sem atributo sensível definido, não é possível realizar auditoria de fairness.

---

## Etapa 2 — Preparação dos Dados

Após escolher o dataset:

1. Identificar claramente:
   - Qual é a variável alvo
   - Qual é o atributo sensível
   - Quem é o grupo privilegiado
   - Quem é o grupo não privilegiado

2. Separar dados em:
   - Conjunto de treino
   - Conjunto de teste

3. Verificar:
   - Desbalanceamento de classes
   - Quantidade de registros por grupo sensível

Registrar essas decisões no protocolo.

---

## Etapa 3 — Treinamento do Modelo Baseline

Escolher um modelo simples de classificação. Recomenda-se:

- Logistic Regression
- Random Forest

Objetivo nesta etapa:

- Treinar o modelo
- Avaliar performance no conjunto de teste

Métricas obrigatórias:
- F1-score
- Precision
- Recall

Apenas accuracy não é suficiente.

Registrar os resultados como baseline.

---

## Etapa 4 — Auditoria de Fairness

Utilizando o AIF360:

1. Definir grupos:
   - Privilegiado
   - Não privilegiado

2. Calcular ao menos duas métricas de fairness, como:
   - Statistical Parity Difference
   - Disparate Impact
   - Equal Opportunity Difference

3. Registrar valores obtidos

4. Interpretar:
   - Existe disparidade relevante?
   - O modelo favorece algum grupo?

Importante: explicar o significado das métricas no contexto do problema escolhido.

---

## Etapa 5 — Mitigação de Viés

Escolher uma técnica de mitigação disponível no AIF360, por exemplo:

- Reweighing (pré-processamento)
- Pós-processamento com ajuste de decisões

Após aplicar mitigação:

1. Reavaliar performance
2. Reavaliar fairness
3. Comparar antes e depois

Construir tabela comparativa contendo:

- Métricas de performance
- Métricas de fairness

---

## Etapa 6 — Análise do Trade-off

Responder explicitamente:

- O viés diminuiu?
- A performance piorou?
- Quanto piorou?
- O trade-off é aceitável no contexto escolhido?

Aqui está a parte mais importante do projeto.

---

## Estrutura do Protocolo Experimental

Cada grupo deverá entregar um documento contendo:

1. Problema escolhido
2. Dataset e justificativa
3. Definição de grupos sensíveis
4. Modelo utilizado
5. Métricas de performance
6. Métricas de fairness
7. Técnica de mitigação escolhida
8. Resultados (tabelas comparativas)
9. Discussão crítica
10. Ameaças à validade

---

## Critérios de Qualidade do Projeto

O projeto não deve ser apenas execução técnica.

Espera-se que o grupo demonstre:

- Compreensão das métricas
- Interpretação correta dos resultados
- Capacidade de justificar decisões técnicas
- Discussão consciente de limitações

---

## Resultado Esperado

Ao final do projeto, o grupo deve ser capaz de:

- Auditar um modelo de IA
- Identificar viés estatístico
- Aplicar mitigação
- Analisar impacto em performance
- Produzir relatório replicável

Este projeto conecta:

- Machine Learning
- Engenharia de Qualidade
- Avaliação de atributos não funcionais
- Responsible AI

Trata-se de um experimento técnico replicável, atual e aplicável.
