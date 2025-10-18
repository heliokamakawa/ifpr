# Controle de Vieses em Engenharia de Software

A qualidade metodológica de um artigo não está em “descrever o que foi feito” — está em demonstrar que o que se fez **gera evidências válidas, confiáveis e generalizáveis**, isto é, **livres (ou minimamente impactadas) por vieses**.

---

## O que é “viés” em Engenharia de Software

Em termos simples, **viés** é qualquer distorção sistemática que afeta a coleta, interpretação ou generalização dos resultados.  
Ele **não é apenas erro**, mas uma **tendência sistemática** que faz o resultado se afastar da realidade.

> **Runeson & Höst (2009):**  
> “O viés pode surgir em qualquer fase do estudo — concepção, coleta de dados, análise ou relato — e deve ser explicitado, juntamente com estratégias de mitigação.”

---

## Por que o controle de vieses define a validade

Detalhar e descrever como uma metodologia foi feita **não é suficiente** para torná-la boa ou válida.  
A **validade da metodologia** está na **ausência de viés** — um texto detalhado, porém enviesado, apenas disfarça um problema estrutural que geralmente favorece o resultado esperado.

A validade de um artigo (isto é, o quão confiáveis são suas conclusões) depende da **capacidade de isolar e mitigar vieses**.

---

## 🔬 Modelo clássico das quatro validades  
*(Runeson & Höst, 2009; Wohlin et al., 2012)*

| Tipo de validade | Questão central | Exemplo prático em ES | Risco de viés típico |
|------------------|-----------------|------------------------|----------------------|
| **Validade de construto** | A métrica realmente mede o que se propõe? | Usar “número de commits” como proxy de produtividade pode ser falho. | Escolha de métricas incorretas ou ambíguas. |
| **Validade interna** | Os resultados foram causados pelo que se mediu? | Uma melhoria no lead time pode ter vindo de um novo líder, não da ferramenta. | Fatores de confusão não controlados. |
| **Validade externa** | Pode-se generalizar o resultado? | Estudo feito em uma startup não se aplica a empresas reguladas. | Amostra pequena, contexto único. |
| **Validade de conclusão** | A relação observada é estatisticamente e logicamente sólida? | Correlação entre duas métricas sem testar significância. | Falta de análise estatística adequada. |

> Essas dimensões são **complementares** — negligenciar uma pode comprometer todas.

---

## Onde o viés aparece (por fase do estudo)

| Etapa do estudo | Principais fontes de viés | Como mitigar |
|-----------------|---------------------------|---------------|
| **Planejamento** | Escolha de hipótese guiada por expectativa; desenho inadequado | Revisão de literatura sistemática; protocolo prévio; registro público (ex: OSF) |
| **Coleta de dados** | Amostra por conveniência; instrumentos não validados; efeito Hawthorne | Critérios explícitos de inclusão/exclusão; piloto de instrumentos; coleta cega ou automática |
| **Análise** | Seleção de resultados que “confirmam” a hipótese; cherry-picking | Definir análise *a priori*; reportar todos os resultados; usar triangulação |
| **Interpretação** | Generalização indevida; causalidade sem base experimental | Discutir limites do contexto; evitar inferência causal em dados correlacionais |
| **Relato** | Publicação seletiva de resultados positivos; omissão de ameaças à validade | Transparência total; seção “Threats to Validity” obrigatória |

---

## Estratégias formais de mitigação (com base em literatura de ES)

### 🔹 Planejamento
- Protocolo prévio documentado (Kitchenham, 2007): define perguntas, métodos e critérios antes da coleta.  
- Triangulação teórica: cruzar conceitos de fontes diversas para evitar visão única.  
- Treinamento e padronização dos aplicadores (se houver entrevistas ou observações).  

### 🔹 Coleta de dados
- Amostragem sistemática (ou justificativa robusta para conveniência).  
- Instrumentos validados (pré-teste, consistência interna, revisão de especialistas).  
- Anonimização e neutralidade — evitar influência de hierarquias organizacionais no comportamento dos respondentes.  

### 🔹 Análise
- Triangulação de métodos (quantitativo + qualitativo; ex: métricas + entrevistas).  
- Validação cruzada de análises (dois avaliadores independentes em codificação qualitativa).  
- Análise de sensibilidade (testar impacto de remover casos extremos ou outliers).  

### 🔹 Interpretação
- Discutir alternativas explicativas: “outros fatores que poderiam gerar o mesmo resultado”.  
- Evitar extrapolações não sustentadas (principal falha em estudos de caso e mapeamentos).  

### 🔹 Relato e transparência
- Sempre incluir a seção **“Threats to Validity”** organizada nas quatro dimensões.  
  > 🔹 Revisores buscam explicitamente esse subtítulo em artigos de ES.  
- Fornecer repositório público com scripts, dados e protocolos (“replication package”).  
- Explicitar limitações, sem tentar disfarçá-las — transparência é sinal de maturidade científica.

---

## Como um avaliador pensa sobre viés

Um bom revisor de ES **não penaliza** o artigo por “ter viés” (todo estudo tem),  
mas sim por **não demonstrar consciência e controle sobre ele**.

> **Pensamento típico de avaliador:**  
> “O autor identificou onde o estudo poderia falhar, e mostrou como tentou reduzir isso?  
> Mesmo que o viés exista, está sob controle e reconhecido?”

Revisores valorizam **reflexões honestas sobre limitações e validade** —  
isso distingue um artigo **maduro e científico** de um **ingênuo e descritivo**.

---

## Guia de Avaliação de Vieses em Engenharia de Software

| Dimensão de Validade | Pergunta central do avaliador | Exemplos típicos de viés | Estratégias de mitigação esperadas | Indicador de maturidade metodológica |
|----------------------|--------------------------------|---------------------------|------------------------------------|--------------------------------------|
| **Validade de Construto** | “O que o autor está medindo representa o fenômeno real?” | Uso de métricas proxy sem validação (ex: nº de commits = produtividade); questionários sem teste piloto; variáveis mal definidas. | Definição operacional das métricas; validação cruzada; revisão de especialistas; pré-teste de instrumentos. | Métricas ou instrumentos validados e claramente justificados. |
| **Validade Interna** | “O resultado foi realmente causado pela variável estudada?” | Confusão entre fatores (ex: mudança de gestor, atualização de ferramenta, nova política de time). | Controle experimental, desenho quasi-experimental; triangulação; grupos de comparação. | Explicitação de fatores de confusão e estratégias de controle. |
| **Validade Externa** | “Esses resultados se aplicam a outros contextos?” | Amostra restrita a uma empresa; ausência de replicação; contexto atípico. | Justificativa da amostra; replicação multicontexto; discussão clara de limitações. | Discussão realista da generalização + convite à replicação. |
| **Validade de Conclusão** | “A inferência estatística e lógica é sólida?” | Uso incorreto de testes estatísticos; falta de verificação de pressupostos; interpretações causais indevidas. | Testes apropriados; análise de sensibilidade; reporte de p-valores e intervalos de confiança; transparência nos dados. | Coerência entre método analítico e objetivos. |
| **Validade Ética (em expansão)** | “O estudo respeita a integridade e confidencialidade dos dados e participantes?” | Falta de consentimento; anonimização ausente; uso de dados privados sem permissão. | Parecer de ética; anonimização rigorosa; políticas de privacidade documentadas. | Clareza sobre tratamento ético e sigilo dos dados. |

> **Uso prático:**  
> Como avaliador, pontue cada linha como *Adequado / Parcial / Fraco / Ausente* e registre uma nota explicativa.

---

## Guia para Descrever “Ameaças à Validade” no Artigo  
*(Visão de autor — como demonstrar controle de viés)*

**Objetivo:** Mostrar que o pesquisador entende onde o estudo pode falhar e como tentou minimizar cada limitação.

---

### Validade de Construto
**O que avaliar:**
- Se as métricas realmente representam os conceitos teóricos (ex: qualidade, produtividade, satisfação).  
- Se os instrumentos medem o que se propõem.  

**Como relatar:**
> “As métricas de produtividade utilizadas (commits e deploys) são proxies amplamente usadas na literatura (Forsgren et al., 2018; Google Cloud DORA, 2023). Ainda assim, reconhecemos que não capturam aspectos qualitativos de colaboração.”

**Boa prática:** citar fontes que validam o construto e reconhecer suas limitações.

---

### Validade Interna
**O que avaliar:**
- Se há fatores de confusão ou interferências externas.  
- Se as relações observadas são genuínas.  

**Como relatar:**
> “Como o estudo ocorreu durante uma reestruturação organizacional, reconhecemos que parte das melhorias pode estar associada a fatores humanos e não apenas à introdução da ferramenta.”

**Boa prática:** listar variáveis de confusão e como foram monitoradas.

---

### Validade Externa
**O que avaliar:**
- Se os resultados podem ser generalizados.  

**Como relatar:**
> “O estudo foi conduzido em uma única equipe de desenvolvimento de software financeiro; os resultados podem não refletir práticas de outras indústrias.”

**Boa prática:** não prometer generalização; sugerir replicações.

---

### Validade de Conclusão
**O que avaliar:**
- Se as inferências são consistentes com os dados.  

**Como relatar:**
> “As correlações encontradas indicam associação, mas não permitem afirmar causalidade. A análise estatística utilizou teste de Spearman com p < 0,05.”

**Boa prática:** evitar linguagem causal quando o estudo não é experimental.

---

### (Opcional) Validade Ética e de Reprodutibilidade
**O que avaliar:**
- Transparência, abertura de dados, anonimização e consentimento.  

**Como relatar:**
> “Os dados foram anonimizados e disponibilizados em repositório público (Zenodo DOI: xxx). O estudo foi aprovado pelo Comitê de Ética n° 2025-045.”

---

### Exemplo de fechamento da seção (modelo editorial)

> “Reconhecemos ameaças às validades de construto e externa, principalmente pela limitação da amostra e pela natureza das métricas.  
> Para mitigá-las, seguimos recomendações de Runeson & Höst (2009) e Wohlin et al. (2012), aplicando triangulação de dados e validação cruzada entre múltiplos revisores.  
> Apesar dessas limitações, acreditamos que os resultados oferecem evidências válidas e úteis para contextos semelhantes.”

---

## Recomendações adicionais
- A seção deve ser **honesta e explícita** — evitar frases genéricas (“podem haver limitações”).  
- Revisores valorizam **autocrítica técnica**: reconhecer limitação **aumenta credibilidade**.  
- Sempre incluir **referências metodológicas** na própria seção de validade.  
- Quando o artigo tiver dados públicos, adicionar o link do **replication package**.

---
