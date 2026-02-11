# Cronograma
08/04 - Levantamento e Análise de requisitos - Técnicas (entender, analisar e escrever certo); Desenvolvimento do ES.  
15/04 - Diagrama de caso de uso geral. Desenvolvimento do ES.   
22/04 - Diagrama de classe.    
29/04 - Desenvolvimento do ES.   
06/05 - Desenvolvimento do ES.  
13/05 - Entrega documento.  
20/05 - Retomada conteúdo.  
27/05 - Recuperação - avaliação dissetativa.  

# Diário de aula
- Feedback.

# Organização Prática de Requisitos com Foco em Rastreabilidade

## 🎯 Objetivo
Organizar e refinar requisitos de forma prática e incremental, garantindo rastreabilidade, clareza e foco no que realmente é necessário.

### ✅ Decomposição Funcional (Refinamento Incremental)
- Organização em fases.
- Macro para o micro com clareza - uma prática essencial em levantamento e análise de requisitos.
- Como? Quebra de requisitos em subníveis com detalhamento progressivo.

## 🧩 Estrutura das Fases

### 🔹 **Fase 1 – Rastreabilidade**
- Código identificador de requisitos.
- Conexão entre requisitos principais e específicos.

→ LRP000 - Levantamento de Requisitos Principal e a sequência numérica  
→ LRE000 - Levantamento de Requisitos Específico e a sequência numérica 

### 🔹 **Fase 2 – Identificação do Requisito Principal**
Identificar o(s) principal(is) requisito(s).  

[LRP001] Realizar a gestão de reserva de quadras esportivas de beach tennis e futebol society.


### 🔹 **Fase 3 – Especificação**
```
[LRP001] Realizar a gestão de reserva de quadras esportivas de beach tennis e futebol society.  
   [LRE001] Realizar a gestão de reserva de quadras de beach.  
   [LRE002] Realizar a gestão de reserva de quadras de futebol society.  
```

### 🔹 **Fase 4 – Identificação dos Atores**
```
[LRP001] Realizar a gestão de reserva de quadras esportivas de beach tennis e futebol society.   
   [LRE001] Permitir que o cliente realize a gestão de reserva de quadras de beach.  
   [LRE002] Permitir que o cliente realize a gestão de reserva de quadras de futebol society.  
   [LRE003] Permitir que o administrador realize a gestão de todas as reservas de quadras de beach.  
   [LRE004] Permitir que o administrador realize a gestão de todas as reservas de quadras de futebol society.
```

### 🔹 **Fase 5 – Complementação Funcional**
```
[LRP001] Realizar a gestão de reserva de quadras esportivas de beach tennis e futebol society.   
   [LRE001] Permitir que o cliente realize a gestão de reserva de quadras de beach.  
   [LRE002] Permitir que o cliente realize a gestão de reserva de quadras de futebol society.  
   [LRE003] Permitir que o administrador realize a gestão de todas as reservas de quadras de beach.  
   [LRE004] Permitir que o administrador realize a gestão de todas as reservas de quadras de futebol society.  
   [LRE005] Definir calendário para facilitar a visualização da disponibilidade das quadras.  
   [LRE006] Definir um sistema de reserva inteligente em que um jogador possa definir um dia de jogo e o sistema realizar o convite para dar quórum.
```

### 🔹 **Fase 6 – Funcionalidades Fora do Escopo Inicial**
```
[LRP001] Realizar a gestão de reserva de quadras esportivas de beach tennis e futebol society.   
   [LRE001] Permitir que o cliente realize a gestão de reserva de quadras de beach.  
   [LRE002] Permitir que o cliente realize a gestão de reserva de quadras de futebol society.  
   [LRE003] Permitir que o administrador realize a gestão de todas as reservas de quadras de beach.  
   [LRE004] Permitir que o administrador realize a gestão de todas as reservas de quadras de futebol society.  
   [LRE005] Definir calendário para facilitar a visualização da disponibilidade das quadras.**  
   [LRE006] Definir um sistema de reserva inteligente em que um jogador possa definir um dia de jogo e o sistema realizar o convite para dar quórum.   
[LRE007] Definir um controle de venda de refrigerantes.
```

### 🔹 **Fase 7 – Validação e Verificação**
---

### Resultado final
```
[LRP001] Realizar a gestão de reserva de quadras esportivas de beach tennis e futebol society.  
	[LRE001] Permitir que o cliente realize a gestão de reserva de quadras de beach.  
	[LRE002] Permitir que o cliente realize a gestão de reserva de quadras de futebol society.  
	[LRE003] Permitir que o administrador realize a gestão de todas as reserva de quadras de beach.  
	[LRE004] Permitir que o administrador realize a gestão de todas as reserva de quadras de futebol society.  
	[LRE005] Definir calendário para facilitar a visualização da disponibilidade das quadras.  
	[LRE006] Definir um sistema de reserva inteligente em que um jogar possa definir um dia de jogo e o sistema realizar o convite para dar quórum.  
[LRE007] Definir um controle de venda de refrigerantes.
```

## 📚 Fundamentos Teóricos Aplicados 
### ✅ Engajamento e Validação com Stakeholders
- Detalhar quem faz o quê (cliente, administrador) - simular papéis de usuários reais ajuda a validar requisitos com clareza.

### ✅ Separação de Escopo
- Inclusão explícita de funcionalidades não correlatas ao objetivo principal.

### ✅ Análise de Papéis (Stakeholders)
- Definição clara de clientes e administradores.

### ✅ Modularidade e Organização
- Agrupar os requisitos por fases e hierarquia melhora a modularidade, facilitando a análise de impacto e a evolução futura.
- Estrutura clara, hierárquica e didática.

### ✅ Qualidade dos Requisitos (SMART)
Ao refinar e detalhar, você aproxima os requisitos das boas práticas de qualidade:
- Específico: define quem faz o quê
- Mensurável: funcionalidades podem ser testadas
- Alcançável / Realista: não são utopias
- Temporal: implícito no calendário ou lembretes
- Rastreável: claramente mapeado do geral ao específico

### ✅ Análise de Completeness
- Ir da ideia inicial até requisitos complementares e fora do escopo, você conduz uma análise de completude.
---

## 📘 Parte 1 – Referências Clássicas e Acadêmicas

### 🔸 **Engenharia de Requisitos**
- **SOMMERVILLE, Ian** – *Engenharia de Software*, 9ª ed.
  - Cap. 4: Engenharia de Requisitos (p. 85–122)
  - Cap. 5: Modelos de Requisitos (p. 123–150)
  
- **MACHADO, Felipe Nery** – *Análise e Gestão de Requisitos de Software*
  - Cap. 2: Levantamento e análise de requisitos (p. 31–70)
  - Cap. 5: Qualidade e rastreabilidade dos requisitos (p. 121–135)

- **PFLEEGER, Shari** – *Engenharia de Software: Teoria e Prática*, 2ª ed.
  - Cap. 4: Comunicação com o cliente (p. 95–120)
  - Cap. 6: Rastreabilidade e mudanças (p. 147–165)

### 🔸 **Especificação e Modelagem**
- **BEZERRA, Eduardo** – *Princípios de Análise e Projeto de Sistemas com UML*
  - Cap. 3: Análise de requisitos (p. 45–78)
  - Cap. 4: Casos de uso e diagramas (p. 79–110)

- **DENNIS, Alan et al.** – *Análise e Projeto de Sistemas*, 5ª ed.
  - Cap. 3: Requisitos e metodologias (p. 70–102)
  - Cap. 4: Técnicas de levantamento (p. 103–130)

### 🔸 **Suporte e Estratégia**
- **SCHACH, Stephen R.** – *Engenharia de Software*, 7ª ed.
  - Cap. 5: Engenharia de requisitos (p. 98–132)

- **TONSIG, Sérgio Luiz** – *Engenharia de Software: Análise e Projeto de Sistemas*, 2ª ed.
  - Cap. 4: Levantamento e especificação (p. 87–105)

- **SBROCCO, José Henrique** – *Metodologias Ágeis: Engenharia de Software sob Medida*
  - Cap. 3: Priorização e foco nos requisitos essenciais (p. 51–72)

---

## 🌐 Parte 2 – Materiais Complementares

### 🔹 **Guia BABOK (Business Analysis Body of Knowledge)** – IIBA
- Capítulo 10: Requirements Life Cycle Management
- Disponível em: https://www.iiba.org/babok-guide/

### 🔹 **Guia PMBOK – Project Management Institute
