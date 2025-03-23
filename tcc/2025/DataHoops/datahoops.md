# 📊 DataHoops – Aplicativo de Scout Eletrônico para Análise de Arremessos

## 📌 Estatísticas Coletadas (Apenas Ofensivas)
O DataHoops será um scout eletrônico de **event-based tracking** com **positional data**, focado em estatísticas ofensivas. Isso significa que os dados serão coletados por **observação direta em tempo real**, categorizados por **pontos, tipo de arremesso e localização na quadra**, gerando relatórios automáticos para análise de eficiência dos arremessos.

---

## 📊 Modelos e Padrões Utilizados no Scout Eletrônico
No basquete, algumas metodologias são amplamente utilizadas para padronizar a coleta de dados. O DataHoops seguirá um modelo focado na **eficiência de arremessos**, adotando metodologias reconhecidas como **NBA Stats, FIBA LiveStats e Synergy Sports**. Abaixo, detalhamos as técnicas aplicadas no app:

### 📌 Estatísticas Tradicionais (Box Score) – ✅ Aplicado Parcialmente
O Box Score é um dos métodos mais comuns de scout esportivo, registrando métricas gerais do jogo como pontos, assistências e rebotes.
- ✅ O DataHoops coletará dados de **pontos** e **arremessos certos/errados**, fundamentais para a análise de aproveitamento dos jogadores.
- ❌ Não coletará estatísticas gerais como assistências, rebotes, tocos e turnovers, pois seu foco está na **eficiência ofensiva**.

### 📌 Event-Based Tracking – ✅ Aplicado
Essa técnica registra eventos específicos da partida, como arremessos, roubos de bola e turnovers.
- ✅ O DataHoops será baseado nesse modelo, coletando eventos relacionados a **arremessos certos e errados**, categorizados por **distância, localização na quadra e tipo de finalização** (arremesso, infiltração ou bandeja para 2 pontos).
- ❌ Não registrará eventos defensivos, como roubos de bola ou bloqueios.

### 📌 Positional Data (Tracking Espacial) – ✅ Aplicado
O rastreamento da posição na quadra é essencial para entender o desempenho dos jogadores em diferentes regiões de arremesso.
- ✅ O DataHoops registrará a localização dos arremessos com base em **três distâncias** (curta, média e longa) e **três posições** (zona morta, lateral e central).
- ✅ Diferenciará arremessos de 2 pontos em **arremesso, infiltração e bandeja**.
- ❌ Não utilizará sensores de movimento ou inteligência artificial para rastreamento automático, sendo baseado na coleta manual dos dados por observação.

### 📌 Play-by-Play (PBP) – ❌ Não Aplicado
O Play-by-Play detalha sequências completas das jogadas (exemplo: "Jogador A passou para B, que arremessou da lateral e marcou 3 pontos").
- ❌ O DataHoops não registrará sequências de jogadas, focando apenas nos **eventos individuais de arremesso**.

---

## 📊 Relatórios Automáticos do DataHoops
O DataHoops fornecerá relatórios detalhados sobre o desempenho ofensivo dos jogadores, permitindo uma análise aprofundada da eficiência dos arremessos.

### 📌 Eficiência de Arremessos
- ✅ **Eficiência por zona** – Percentual de acertos em cada região da quadra (zona morta, lateral, central).
- ✅ **Eficiência por distância** – Comparação do aproveitamento em curta, média e longa distância.
- ✅ **Eficiência por tipo de finalização** – Percentual de acerto de arremessos, infiltrações e bandejas em 2 pontos.
- ✅ **Eficiência por pontos** – Aproveitamento de 2 pontos e 3 pontos separadamente.
- ✅ **Eficiência por situação** – Identificação das melhores condições de arremesso do jogador (exemplo: melhor aproveitamento em curta distância pela lateral).

### 📌 Tendências e Preferências
- ✅ **Preferência de arremesso** – Identificação da zona e distância mais utilizadas pelo jogador.
- ✅ **Tendência de pontuação** – Percentual de arremessos tentados de 2 e 3 pontos para entender se o jogador prioriza bolas longas ou infiltrações.
- ✅ **Mapa de calor simplificado** – Distribuição visual dos arremessos para rápida identificação das áreas de maior e menor aproveitamento.

### 📌 Comparação de Desempenho
- ✅ **Evolução da eficiência** – Gráficos mostrando a melhora (ou piora) do desempenho ao longo do tempo.
- ✅ **Comparação entre partidas** – Relatório que destaca diferenças no aproveitamento entre jogos, ajudando a identificar padrões positivos e negativos.
- ✅ **Média geral do jogador** – Estatísticas acumuladas de todos os jogos registrados no aplicativo.

Com esses relatórios, o DataHoops proporcionará insights valiosos para aprimorar a tomada de decisão e otimizar o desempenho dos jogadores.

---

## 🛠 Tecnologias Utilizadas no DataHoops
O desenvolvimento do DataHoops será baseado em tecnologias modernas e eficientes para garantir alto desempenho, usabilidade e confiabilidade na coleta e análise de dados.

### 📌 1. Flutter (Framework de Desenvolvimento)
- ✅ Utilizado para criar a **interface gráfica** do app de forma responsiva e multiplataforma (Android e iOS).
- ✅ Baseado em **Dart**, permitindo animações fluidas e alto desempenho.
- ✅ Compatível com **Material Design 3** para uma experiência de usuário moderna e intuitiva.

### 📌 2. Dart (Linguagem de Programação)
- ✅ Linguagem oficial do **Flutter**, utilizada para desenvolver toda a lógica do aplicativo.
- ✅ Suporte a **programação assíncrona** para um app rápido e sem travamentos.
- ✅ Permite estruturação limpa e escalável do código.

### 📌 3. SQLite (Banco de Dados Local)
- ✅ Banco de dados embutido para armazenar **estatísticas de arremessos** sem necessidade de internet.
- ✅ Uso de **queries otimizadas** para
