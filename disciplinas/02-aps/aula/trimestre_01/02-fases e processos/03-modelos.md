# Modelos de Desenvolvimento de Software

> Compilação rigorosa dos principais modelos de desenvolvimento de software, com fontes primárias verificadas, análise da adoção na indústria e contexto histórico.

---

## Índice

- [O que é um Modelo de Desenvolvimento?](#o-que-é-um-modelo-de-desenvolvimento)
- [Distinções Importantes](#distinções-importantes)
- [Modelos de Desenvolvimento](#modelos-de-desenvolvimento)
- [O que NÃO é um Modelo de Desenvolvimento](#o-que-não-é-um-modelo-de-desenvolvimento)
- [Combinações Comuns na Indústria](#combinações-comuns-na-indústria)
- [Adoção na Indústria Hoje](#adoção-na-indústria-hoje)
- [Fontes](#fontes)

---

## O que é um Modelo de Desenvolvimento?

Um **modelo de desenvolvimento de software** (SDLC Model — *Software Development Life Cycle Model*) é uma representação abstrata do processo de desenvolvimento. Define as **fases do processo** e a **ordem em que são executadas**.

> Não confundir com *metodologias*, *frameworks* ou *filosofias* de desenvolvimento.

---

## Distinções Importantes

| Conceito | O que é | Exemplos |
|---|---|---|
| **Modelo de Desenvolvimento** | Estrutura do processo — como o software é construído e entregue | Waterfall, Incremental, Espiral |
| **Framework Ágil** | Estrutura de organização do trabalho da equipa | Scrum, SAFe |
| **Método** | Conjunto de princípios e práticas de gestão de fluxo, sem iterações fixas | Kanban |
| **Metodologia** | Conjunto de práticas técnicas específicas | XP (Extreme Programming) |
| **Mentalidade (Mindset)** | Conjunto de valores e princípios orientadores | Ágil (Manifesto Ágil, 2001) |
| **Cultura/Prática** | Integração de processos e equipas | DevOps |

> **Ágil não é um modelo de desenvolvimento.** É uma mentalidade formalizada no [Manifesto Ágil (2001)](https://agilemanifesto.org/), que define 4 valores e 12 princípios, sem prescrever nenhum processo concreto.

---

## Modelos de Desenvolvimento

### 1. Waterfall (Cascata)

| Campo | Detalhe |
|---|---|
| **Ano** | 1970 |
| **Autor** | Winston W. Royce — *IEEE WESCON* |
| **Característica Principal** | Fases lineares e sequenciais — cada fase só inicia após a anterior estar concluída |

**Vantagens**
- Simples de entender e gerir
- Boa documentação em cada fase
- Alta previsibilidade de prazo e custo
- Ideal para requisitos estáveis e bem definidos

**Desvantagens**
- Extremamente inflexível a mudanças
- Testes ocorrem apenas no final do processo
- Erros descobertos tarde são custosos de corrigir
- Pouco envolvimento do cliente durante o desenvolvimento

**Motivação de Criação**
> Os sistemas da época eram monolíticos e os requisitos raramente mudavam após a especificação — havia necessidade de uma estrutura formal para projetos grandes com contratos fixos.

> *Curiosidade histórica:* Royce nunca usou o termo "waterfall" no seu artigo, e ele próprio o descreveu como arriscado e propenso ao fracasso, propondo melhorias iterativas.

---

### 2. Incremental

| Campo | Detalhe |
|---|---|
| **Ano** | Anos 1960–70 |
| **Autor** | Baseado em práticas de engenharia de software |
| **Característica Principal** | Entrega em partes funcionais progressivas — cada incremento adiciona funcionalidade ao anterior |

**Vantagens**
- Entrega antecipada de valor ao cliente
- Mais fácil de testar e gerir por partes
- Feedback mais cedo no processo
- Reduz risco de falha total do projeto

**Desvantagens**
- Requer bom planeamento dos incrementos desde o início
- Pode gerar problemas de integração entre módulos
- Necessita arquitetura bem definida à partida

**Motivação de Criação**
> Superar o Waterfall permitindo entregas parciais e obter feedback do cliente antes de o produto estar completamente finalizado.

---

### 3. Iterativo

| Campo | Detalhe |
|---|---|
| **Ano** | Anos 1970–80 |
| **Autor** | Evolução de práticas industriais de engenharia |
| **Característica Principal** | Desenvolvimento em ciclos repetidos de refinamento — cada iteração melhora a versão anterior |

**Vantagens**
- Deteta falhas de design cedo no processo
- Permite ajustar requisitos ao longo do desenvolvimento
- Produto final mais robusto e alinhado com necessidades reais
- Boa gestão de riscos através da validação por ciclos

**Desvantagens**
- Pode ser difícil de gerir sem disciplina
- Custo e prazo menos previsíveis que modelos sequenciais
- Risco de expansão indefinida do âmbito (*scope creep*)

**Motivação de Criação**
> Necessidade de lidar com requisitos incompletos ou que evoluem durante o desenvolvimento, sem reiniciar o processo do zero.

---

### 4. Espiral

| Campo | Detalhe |
|---|---|
| **Ano** | 1986 |
| **Autor** | Barry Boehm — *"A Spiral Model of Software Development and Enhancement"* |
| **Característica Principal** | Iterativo com análise de risco em cada ciclo — cada volta da espiral representa uma fase completa com 4 etapas: planeamento, análise de risco, desenvolvimento e avaliação |

**Vantagens**
- Excelente gestão de riscos em cada iteração
- Altamente flexível a mudanças de requisitos
- Adequado a projetos de grande complexidade e longa duração
- Envolvimento contínuo do cliente

**Desvantagens**
- Caro e complexo de implementar
- Requer especialistas em análise de risco
- Pode prolongar-se indefinidamente sem gestão rigorosa
- Inadequado para projetos simples e de baixo risco

**Motivação de Criação**
> Resposta às limitações do Waterfall em projetos onde os requisitos eram incertos e o custo do fracasso era muito elevado (ex: aeroespacial, defesa). A NASA utilizou este modelo no desenvolvimento do software do Space Shuttle.

---

### 5. RAD (Rapid Application Development)

| Campo | Detalhe |
|---|---|
| **Ano** | Anos 1980–91 |
| **Autor** | James Martin |
| **Característica Principal** | Desenvolvimento rápido com forte participação do utilizador, reutilização de componentes e prototipagem contínua |

**Vantagens**
- Alta velocidade de entrega
- Maior satisfação do utilizador por envolvimento contínuo
- Menor taxa de rejeição em produção
- Flexível a mudanças de requisitos

**Desvantagens**
- Pode gerar sobrecustos e atrasos em projetos grandes
- Depende fortemente da disponibilidade e participação do cliente
- Difícil de escalar para equipas grandes
- Pode comprometer a qualidade técnica pela velocidade

**Motivação de Criação**
> Resposta aos processos sequenciais do Waterfall — o utilizador produz melhor feedback com um sistema real funcional do que apenas com documentação.

---

### 6. Prototipagem

| Campo | Detalhe |
|---|---|
| **Ano** | Anos 1970–80 |
| **Autor** | Evolução de práticas de engenharia de software |
| **Característica Principal** | Criação de um protótipo funcional para validar requisitos antes do desenvolvimento completo do sistema final |

**Vantagens**
- Clarifica requisitos desde o início do projeto
- Reduz mal-entendidos entre equipa e cliente
- Aumenta satisfação do utilizador final
- Permite experimentar soluções com baixo custo

**Desvantagens**
- O protótipo pode tornar-se o produto final sem rigor de engenharia
- Consome tempo e dinheiro se iterado em excesso
- Clientes podem confundir protótipo com produto final
- Pode criar expectativas irrealistas

**Motivação de Criação**
> Criado para superar as limitações do Waterfall em projetos onde os requisitos não são bem conhecidos à partida, permitindo uma fase exploratória estruturada.

---

### 7. RUP (Rational Unified Process)

| Campo | Detalhe |
|---|---|
| **Ano** | 1999 |
| **Autor** | Ivar Jacobson, Grady Booch e James Rumbaugh — *Rational Software Corporation* |
| **Característica Principal** | Iterativo, orientado a objetos e baseado em UML. Divide o projeto em 4 fases: **Inception → Elaboration → Construction → Transition** |

**Vantagens**
- Flexível e altamente adaptável ao contexto do projeto
- Forte suporte a documentação e rastreabilidade
- Integração nativa com UML como linguagem de modelação
- Adequado a projetos grandes e organizações complexas

**Desvantagens**
- Pesado e difícil de adoptar sem formação especializada
- Pode ser excessivo para projetos pequenos ou startups
- Curva de aprendizagem elevada
- Requer investimento significativo em ferramentas e formação

**Motivação de Criação**
> Necessidade de um framework iterativo rigoroso que incorporasse as melhores práticas da engenharia orientada a objetos, com UML como linguagem padrão de modelação para projetos de grande escala.

---

## O que NÃO é um Modelo de Desenvolvimento

| Nome | O que realmente é |
|---|---|
| **Ágil** | Mentalidade/filosofia — conjunto de valores e princípios (Manifesto Ágil, 2001) |
| **Scrum** | Framework ágil de gestão de trabalho em equipa |
| **Kanban** | Método de gestão de fluxo de trabalho (anterior ao Agile — Toyota, anos 1950; aplicado a software por David J. Anderson, 2007) |
| **XP (Extreme Programming)** | Metodologia ágil com práticas técnicas específicas (TDD, pair programming) |
| **DevOps** | Cultura e prática de integração entre desenvolvimento e operações |
| **SAFe / LeSS** | Frameworks de escala para aplicar Agile em grandes organizações |
| **V-Model** | Modelo de verificação e validação — extensão do Waterfall focado em testes |

---

## Combinações Comuns na Indústria

É comum e válido combinar modelos e frameworks — eles operam em camadas diferentes:

```
┌─────────────────────────────────────────────┐
│           MODELO DE DESENVOLVIMENTO         │
│         (ex: Incremental, Espiral)          │
│  Define COMO o produto é estruturado        │
│  e entregue ao longo do tempo               │
├─────────────────────────────────────────────┤
│           FRAMEWORK DE TRABALHO             │
│              (ex: Scrum)                    │
│  Define COMO a equipa se organiza           │
│  e executa o trabalho                       │
├─────────────────────────────────────────────┤
│         CULTURA / PRÁTICA                   │
│              (ex: DevOps)                   │
│  Define COMO desenvolvimento e operações    │
│  colaboram e entregam continuamente         │
└─────────────────────────────────────────────┘
```

**Exemplo prático:** É perfeitamente válido aplicar **Scrum** dentro de um **modelo Incremental** — cada sprint do Scrum corresponde a um incremento funcional entregue ao cliente.

---

## Adoção na Indústria Hoje

Com base em múltiplas fontes verificadas (2023–2024):

| Fonte | Dado |
|---|---|
| **17th State of Agile Report** (Digital.ai) | 71% das organizações usam Agile no SDLC; 42% usam modelo híbrido |
| **State of Agile Report** (16ª edição) | 87% das organizações com Agile usam Scrum |
| **PMI Pulse of the Profession 2024** | 55% usam abordagem híbrida; 53% usam Agile; 52% usam preditivo |
| **Statista / GitLab 2022** | ~47% usam DevOps ou DevSecOps |
| **StarAgile / Scrum.org** | Scrum: 87%; Kanban: 56%; ScrumBan: 27% |

### Combinação mais utilizada na indústria:

```
Scrum (framework) + DevOps (prática) + Modelo Incremental (estrutura)
```

> Waterfall e modelos sequenciais persistem em contextos específicos: governo, defesa, aeronáutica, saúde e projetos com requisitos fixos por contrato ou regulação.

---

## Fontes

| Fonte | Tipo |
|---|---|
| Royce, W.W. (1970). *Managing the Development of Large Software Systems*. IEEE WESCON | Artigo académico primário |
| Boehm, B. (1986). *A Spiral Model of Software Development and Enhancement*. IEEE | Artigo académico primário |
| Jacobson, I., Booch, G., Rumbaugh, J. (1999). *The Unified Software Development Process*. Addison-Wesley | Livro de referência |
| [Agile Manifesto (2001)](https://agilemanifesto.org/) | Documento primário |
| [17th Annual State of Agile Report — Digital.ai](https://digital.ai/resource-center/analyst-reports/state-of-agile-report/) | Relatório anual da indústria |
| [PMI Pulse of the Profession 2024](https://www.pmi.org/learning/library/pulse-of-profession) | Relatório da indústria |
| [Scrum.org — Why Scrum is the Most Popular Agile Framework](https://www.scrum.org) | Organização de referência |
| [Wikipedia — Spiral Model](https://en.wikipedia.org/wiki/Spiral_model) | Referência enciclopédica |
| [Wikipedia — Rational Unified Process](https://en.wikipedia.org/wiki/Rational_unified_process) | Referência enciclopédica |
| [Visual Paradigm — Software Process Models](https://www.visual-paradigm.com/guide/software-development-process/what-is-a-software-process-model/) | Referência técnica |

---

<div align="center">

*Compilado com rigor académico e verificação de fontes primárias.*

*Última actualização: Março 2026*

</div>
