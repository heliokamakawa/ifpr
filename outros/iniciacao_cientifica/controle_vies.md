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

## Modelo clássico das quatro validades  
*(Runeson & Höst, 2009; Wohlin et al., 2012)*

| Tipo de validade | Questão central | Exemplo prático em ES | Risco de viés típico |
|------------------|-----------------|------------------------|----------------------|
| **Validade de construto** | A métrica realmente mede o que se propõe? | Usar “número de commits” como proxy de produtividade pode ser falho. | Escolha de métricas incorretas ou ambíguas. |
| **Validade interna** | Os resultados foram causados pelo que se mediu? | Uma melhoria no lead time pode ter vindo de um novo líder, não da ferramenta. | Fatores de confusão não controlados. |
| **Validade externa** | Pode-se generalizar o resultado? | Estudo feito em uma startup não se aplica a empresas reguladas. | Amostra pequena, contexto único. |
| **Validade de conclusão** | A relação observada é estatisticamente e logicamente sólida? | Correlação entre duas métricas sem testar significância. | Falta de análise estatística adequada. |

> Essas dimensões são **complementares** — negligenciar uma pode comprometer todas.


## 1. Validade de Construto

| **Aspecto** | **Descrição e exemplos orientativos** |
|--------------|--------------------------------------|
| **Propósito da validade** | Avaliar se **o que está sendo medido realmente representa o conceito teórico** que o estudo afirma investigar. Em Engenharia de Software, significa verificar se métricas, instrumentos e critérios de observação **capturam o fenômeno real** sem distorções conceituais. |
| **Perguntas de reflexão (para orientar o aluno)** | • A métrica usada mede realmente o fenômeno estudado?<br>• O conceito foi operacionalizado de forma coerente com a teoria?<br>• O instrumento usado (questionário, script, log) foi validado?<br>• Se outro pesquisador aplicasse o mesmo método, interpretaria o mesmo fenômeno?<br>• Há referências que sustentam a adequação da métrica? |
| **Exemplos práticos (de diferentes tipos de pesquisa)** | 🔹 *Experimento:* usar “tempo de compilação” como indicador de produtividade — pode não refletir eficiência de desenvolvimento.<br>🔹 *Survey:* aplicar questionário sobre “satisfação com DevOps” sem testar a clareza das perguntas.<br>🔹 *Estudo de caso:* considerar “quantidade de reuniões” como evidência de colaboração, sem avaliar a qualidade dessas interações.<br>🔹 *Mapeamento sistemático:* classificar artigos como “ágil” apenas por conter a palavra “Scrum”. |
| **Risco de viés típico (descrição)** | Ocorre quando há **inconsistência entre o construto teórico e a medida empírica**. O pesquisador acredita medir um fenômeno, mas mede outro. |
| **Exemplo negativo e explicação do erro** | *Exemplo:* “Medi a produtividade dos desenvolvedores pelo número de commits por semana.”<br>❌ **Erro:** confunde *atividade* com *produtividade real*.<br>⚙️ **Por quê:** commits podem incluir correções triviais, refatorações ou testes — não refletem entrega de valor. |
| **Como corrigir / boa prática** | • Escolher métricas com **base teórica ou validação prévia** (ex: DORA Metrics, ISO/IEC 25010).<br>• Justificar por que a métrica representa o fenômeno.<br>• Fazer **pré-teste de instrumentos** (questionários, logs).<br>• Utilizar **triangulação de medidas** (quantitativas + qualitativas).<br>• Citar **fontes metodológicas** que reforcem a validade do construto. |

---

## 2. Validade Interna

| **Aspecto** | **Descrição e exemplos orientativos** |
|--------------|--------------------------------------|
| **Propósito da validade** | Avaliar se **as relações observadas são genuínas**, ou se foram influenciadas por fatores externos. Busca garantir que **as conclusões sobre causa e efeito** sejam sustentáveis. |
| **Perguntas de reflexão (para orientar o aluno)** | • Os resultados podem ter sido causados por outro fator não controlado?<br>• Houve mudanças no contexto (equipe, ferramenta, política) durante o estudo?<br>• A coleta e análise foram consistentes em todos os casos?<br>• As variáveis foram medidas no mesmo momento e condições?<br>• Há possibilidade de viés do pesquisador ou participante? |
| **Exemplos práticos (de diferentes tipos de pesquisa)** | 🔹 *Experimento:* aumento de produtividade coincidindo com a chegada de um novo líder técnico.<br>🔹 *Estudo de caso:* adoção de metodologia ágil junto com um bônus de desempenho — difícil separar efeitos.<br>🔹 *Survey:* respostas enviesadas por interesse do participante em agradar o pesquisador.<br>🔹 *Pesquisa-ação:* melhorias causadas por acompanhamento mais próximo, não pela intervenção em si. |
| **Risco de viés típico (descrição)** | Ocorre quando **fatores externos ou não controlados interferem nos resultados**, gerando falsas relações de causa e efeito. |
| **Exemplo negativo e explicação do erro** | *Exemplo:* “Após adotar integração contínua, o time passou a entregar mais rápido.”<br>❌ **Erro:** não houve controle sobre outros fatores (mudança de membros, aumento de experiência, novas metas).<br>⚙️ **Por quê:** não se pode atribuir o efeito exclusivamente à ferramenta. |
| **Como corrigir / boa prática** | • Definir variáveis de controle.<br>• Documentar o contexto de forma completa.<br>• Aplicar **triangulação de dados** (entrevistas, logs, observações).<br>• Usar **grupos de comparação** (quando possível).<br>• Relatar claramente fatores externos que possam ter influenciado. |

---

## 3. Validade Externa

| **Aspecto** | **Descrição e exemplos orientativos** |
|--------------|--------------------------------------|
| **Propósito da validade** | Avaliar se os resultados **podem ser generalizados** para outros contextos, organizações, tecnologias ou equipes. Trata-se da **transferibilidade dos achados**. |
| **Perguntas de reflexão (para orientar o aluno)** | • Os resultados seriam semelhantes em outro tipo de empresa, país ou tecnologia?<br>• A amostra representa a diversidade do contexto real?<br>• Houve replicação em mais de um ambiente?<br>• As condições do estudo são específicas demais?<br>• O estudo discute suas limitações de generalização? |
| **Exemplos práticos (de diferentes tipos de pesquisa)** | 🔹 *Estudo de caso:* resultados obtidos em uma startup aplicados indevidamente a empresas de grande porte.<br>🔹 *Survey:* coleta de respostas apenas de desenvolvedores web e generalização para toda a indústria.<br>🔹 *Mapeamento sistemático:* base de busca restrita a uma ou duas bases (ex: IEEE e Scopus), excluindo outras áreas. |
| **Risco de viés típico (descrição)** | Ocorre quando o pesquisador **extrapola indevidamente os resultados** para contextos que não compartilham as mesmas características. |
| **Exemplo negativo e explicação do erro** | *Exemplo:* “Os resultados indicam que qualquer empresa que adote DevOps terá ganhos semelhantes.”<br>❌ **Erro:** generalização sem considerar diferenças de tamanho, cultura e maturidade técnica.<br>⚙️ **Por quê:** estudo restrito a startups com forte autonomia de equipe. |
| **Como corrigir / boa prática** | • Discutir **limitações de generalização** explicitamente.<br>• Usar **amostras diversas ou replicações em múltiplos contextos**.<br>• Apresentar **descrição detalhada do ambiente** para permitir avaliação da transferibilidade.<br>• Evitar linguagem universalizante (“todas as empresas”, “sempre”, “em geral”). |

---

## 4. Validade de Conclusão

| **Aspecto** | **Descrição e exemplos orientativos** |
|--------------|--------------------------------------|
| **Propósito da validade** | Avaliar se **as inferências e relações entre variáveis** são estatística e logicamente sólidas. Trata-se de verificar se as conclusões são sustentadas pelos dados. |
| **Perguntas de reflexão (para orientar o aluno)** | • Os testes estatísticos usados são apropriados ao tipo de dado?<br>• Há correlação sem causalidade?<br>• Foram verificadas as suposições dos testes (normalidade, independência)?<br>• O tamanho da amostra é suficiente para dar confiança?<br>• Resultados negativos foram reportados? |
| **Exemplos práticos (de diferentes tipos de pesquisa)** | 🔹 *Experimento:* aplicação de ANOVA com amostra pequena, violando suposições estatísticas.<br>🔹 *Survey:* cálculo de médias sem verificar distribuição dos dados.<br>🔹 *Estudo de caso qualitativo:* afirmar conclusões gerais com base em uma única observação.<br>🔹 *Mapeamento sistemático:* contar artigos sem avaliar relevância e evidência. |
| **Risco de viés típico (descrição)** | Ocorre quando **as inferências não são sustentadas pelos dados**, seja por erro estatístico, análise superficial ou falta de triangulação. |
| **Exemplo negativo e explicação do erro** | *Exemplo:* “Houve correlação de 0,6 entre commits e bugs, logo aumentar commits reduz defeitos.”<br>❌ **Erro:** inferência causal indevida.<br>⚙️ **Por quê:** correlação não implica causalidade; outras variáveis podem interferir. |
| **Como corrigir / boa prática** | • Utilizar testes estatísticos adequados e reportar pressupostos.<br>• Informar **p-valores, intervalos de confiança e tamanho de efeito**.<br>• Incluir **análise de sensibilidade** (testar resultados sob diferentes condições).<br>• Em estudos qualitativos, aplicar **validação cruzada** e **triangulação**.<br>• Reportar resultados neutros ou negativos — eles também têm valor científico. |

---

## 🧠 Dica geral aos alunos

> Nenhum estudo é “sem viés”.  
> O que define qualidade é **reconhecer onde os vieses podem ocorrer** e **demonstrar como foram mitigados**.  
> Um bom pesquisador não esconde limitações — ele as explica, controla e aprende com elas.

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
