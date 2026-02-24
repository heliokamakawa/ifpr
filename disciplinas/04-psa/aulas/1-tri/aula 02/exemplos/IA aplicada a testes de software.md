# 📘 Projeto Prático: IA Aplicada a Testes de Software  
Baseado no artigo:  
**Escalante-Viteri & Mauricio (2025)**  
*Artificial Intelligence in Software Testing: A Systematic Review of a Decade of Evolution and Taxonomy*  
https://www.mdpi.com/1999-4893/18/11/717

---

## Utilizar o artigo como:

- **Base metodológica**
- **Fonte de taxonomia**
- **Guia para definição de protocolo**
- **Referência para recorte experimental**

O foco não é resumir o artigo.  
O foco é usar a base científica/consolidada do artigo para **construir um experimento prático real**.

---

## Como podemos fazer isso?

O artigo entrega três coisas fundamentais:

1. Taxonomia de problemas em Software Testing com IA  
2. Taxonomia de variáveis (features usadas pelos modelos)  
3. Taxonomia de métricas de avaliação  

Seu projeto pode usar essas três dimensões.

---

## A Estrutura do Projeto deverá definir claramente:

1. Um problema (baseado na taxonomia do artigo)
2. Um conjunto de variáveis (input do modelo)
3. Um ou mais algoritmos
4. Um conjunto de métricas
5. Um protocolo experimental explícito

---

# PASSO A PASSO

## PASSO 1 — Escolher o Problema (Taxonomia do Artigo)

Escolher UMA categoria do artigo:

- SDP → Software Defect Prediction  
- SDD → Software Defect Detection  
- TCM → Test Case Management  
- ATE → Automation & Execution  
- STC → Test Coverage  
- STE → Test Evaluation  

Exemplo de escolha válida:

> “Vamos trabalhar com Software Defect Prediction (SDP).”

---

## PASSO 2 — Definir o Recorte Experimental

Você NÃO vai replicar o artigo inteiro.  
Você vai escolher um recorte específico.

### Exemplos de recortes fortes:

### Caminho 1 — Comparar algoritmos em Defect Prediction

Problema: SDP  
Variáveis: SCM + CQM (métricas estruturais e complexidade)  
Algoritmos: Random Forest vs SVM vs MLP  
Métricas: F1, MCC, ROC-AUC  

Pergunta experimental:
> Qual algoritmo apresenta melhor desempenho para prever defeitos em projetos open-source?

---

### Caminho 2 — Avaliar impacto de variáveis

Problema: SDP  

Modelo A → apenas métricas estruturais  
Modelo B → métricas estruturais + histórico de commits  

Pergunta experimental:
> Variáveis históricas melhoram significativamente a previsão de defeitos?

---

### Caminho 3 — IA para geração de testes

Problema: TCM ou ATE  

Gerar testes com LLM  
Medir cobertura  
Comparar com testes manuais  

Pergunta experimental:
> Testes gerados por IA atingem cobertura equivalente à escrita manual?

---

### Caminho 4 — Test Case Prioritization

Problema: TCM  

Treinar modelo para priorizar testes  
Executar na ordem sugerida  
Medir detecção antecipada de falhas  

Pergunta:
> A priorização por IA reduz o tempo até detectar defeitos críticos?

---

# PASSO 3 — Definir Variáveis (Baseado no Artigo)

Escolher explicitamente as categorias descritas:

- SCM → Structural Code Metrics  
- CQM → Complexity Metrics  
- EHM → Evolutionary/Historical Metrics  
- STR → Representações textuais  
- DEM → Métricas dinâmicas  

⚠ Não usar variáveis aleatórias sem justificativa.

Cada variável deve ser:
- Justificada
- Descrita
- Extraída corretamente

---

# PASSO 4 — Escolher Algoritmos

Pode usar:

- Random Forest
- SVM
- MLP
- CNN (se fizer sentido)
- LLM (para geração de testes)

Justificar:
- Por que esse algoritmo?
- Classificação? Regressão?
- Qual problema ele resolve?

---

# PASSO 5 — Definir Métricas

Basear nas categorias do artigo:

### Clássicas:
- Accuracy
- Precision
- Recall
- F1

### Avançadas:
- MCC
- ROC-AUC
- Balanced Accuracy

### Específicas de Teste:
- Cobertura
- APFD
- Mutation Score

→ Não usar apenas Accuracy.

---

# PROTOCOLO EXPERIMENTAL (Obrigatório)

Cada grupo deve documentar:

## 1. Problema
Qual categoria do artigo foi escolhida?

## 2. Hipótese
O que vocês querem verificar?

## 3. Dataset
Qual projeto?  
Quantos arquivos?  
Qual período?

## 4. Variáveis
Quais categorias do artigo estão sendo usadas?

## 5. Algoritmo(s)
Configuração e parâmetros.

## 6. Métricas
Quais serão usadas e por quê?

## 7. Execução
Treino/teste?  
Cross-validation?  
Split?

## 8. Resultados
Tabela comparativa.

## 9. Discussão
- O que funcionou?
- O que não funcionou?
- Ameaças à validade?

---

# O QUE NÃO É ACEITO

- Rodar modelo pronto sem justificar
- Não definir hipótese
- Não relacionar com a taxonomia do artigo
- Não definir protocolo
- Fazer apenas implementação sem análise

---

# Resultado Esperado

O projeto final deve mostrar:

- Capacidade de ler e aprender rápido os termos técnicos (dominar e distinguir)
- Aplicar taxonomia na prática
- Conduzir experimento controlado (fundamentado e sem improviso)
- Avaliar qualidade de software com IA (critério e não achômetro)
- Discutir limitações

---

# Nível Esperado

Este é um projeto de **Projeto de Software Avançado**.  
Esperamos:

- Rigor metodológico 
- Justificativa técnica
- Código organizado
- Discussão crítica

---

Se necessário, o professor poderá validar o recorte experimental antes da implementação.

