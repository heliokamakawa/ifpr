# Análise e Projeto de Sistemas — Levantamento de Requisitos

## Retomada
- SDCL
- Modelos
- Manifesto Ágil 
  - Metodologia, Framework e Método
- Diário de Aula

## Objetivo
04/03/2026 Levantamento de Dados
- Quadro comparativo das técnicas 
- Boas práticas e cuidados no processo

11/03/2026
- Plano de Levantamento de Requisitos

18/03/2026
- Estudo de caso prático - Biblioteca;
- Visita Biblioteca (21h10 às 22h)
---

## Visão Geral do Cronograma

| Data | Aula | Atividade Principal |
|------|------|----------------------|
| Aula atual | Aula 1 | Pesquisa de técnicas de levantamento de requisitos |
| Próxima semana | Aula 2 | Organização e estruturação do plano de levantamento |
| 18/03 | Aula 3 | Prática — Entrevista na biblioteca *(ou análise de licitação)* |

---

## 📖 Aula 1 — Pesquisa de Técnicas de Levantamento de Requisitos

### Objetivo
Conhecer e comparar as principais técnicas utilizadas no levantamento de requisitos, compreendendo quando e como aplicar cada uma.

### O que os alunos devem pesquisar

Para cada técnica abaixo, levantar:
- **Definição:** O que é e como funciona
- **Quando usar:** Em quais contextos é mais indicada
- **Vantagens e limitações**
- **Como se aplica na prática** (exemplo concreto)

### Técnicas a pesquisar

#### 1. Entrevista
- Entrevista estruturada, semi-estruturada e não estruturada
- Como elaborar um roteiro de perguntas
- Diferença entre perguntas abertas e fechadas
- Boas práticas: escuta ativa, anotações, registro

#### 2. Questionário
- Quando é mais vantajoso que a entrevista
- Tipos de perguntas (múltipla escolha, escala Likert, aberta)
- Cuidados na elaboração para evitar vieses

#### 3. Observação
- Observação passiva vs. participativa
- Como registrar o que foi observado (formulários, gravações, notas)
- Risco de interferência no comportamento do observado

#### 4. Análise de Documentos
- Quais documentos podem ser analisados (manuais, formulários, relatórios, regulamentos)
- Como extrair requisitos a partir de documentos existentes
- Uso de licitações e editais como fonte de requisitos

#### 5. Brainstorming
- Dinâmica e regras básicas
- Papel do facilitador
- Como consolidar e filtrar as ideias geradas

#### 6. JAD — Joint Application Development
- O que é uma sessão JAD
- Participantes: facilitador, usuários, analistas, observadores
- Diferença para a entrevista tradicional

#### 7. Prototipagem
- Protótipo de baixa vs. alta fidelidade
- Como usar protótipos para elicitar requisitos
- Ferramentas comuns (Figma, draw.io, papel)

#### 8. Estudo Etnográfico
- O que é e de onde vem
- Como se aplica em análise de sistemas
- Diferença para a observação comum

---

### Entregável da Aula 1

> Cada aluno (ou grupo) deve produzir um **quadro comparativo** das técnicas pesquisadas, contendo: nome da técnica, descrição resumida, quando usar, vantagens e limitações.

Formato sugerido:

| Técnica | Descrição | Quando Usar | Vantagens | Limitações |
|---------|-----------|-------------|-----------|------------|
| Entrevista | ... | ... | ... | ... |
| Questionário | ... | ... | ... | ... |
| ... | | | | |

---

## 🛠️ Aula 2 — Organização e Estruturação do Plano de Levantamento

### Objetivo
Com base nas técnicas estudadas, planejar como será conduzido o levantamento de requisitos para o sistema de biblioteca, organizando um plano de trabalho completo.

### Contexto do Estudo de Caso

A turma irá analisar o sistema de gerenciamento de uma **biblioteca universitária**. O sistema atual é parcialmente manual e possui os seguintes problemas conhecidos:
- Controle de empréstimos feito em planilhas
- Dificuldade em localizar a disponibilidade de títulos
- Atrasos frequentes na devolução sem notificação automática
- Falta de relatórios gerenciais para a direção

### O que os alunos devem estruturar

#### 1. Identificação dos Stakeholders
- Quem são os envolvidos no sistema?  
  Exemplos: bibliotecários, alunos, professores, coordenação, TI
- Qual o interesse/papel de cada um?
- Quem tem maior poder de decisão sobre os requisitos?

#### 2. Seleção e Justificativa das Técnicas
- Quais técnicas serão aplicadas para este caso?
- Por que essas técnicas são as mais adequadas?
- Em qual ordem serão aplicadas?

#### 3. Roteiro de Entrevista *(principal técnica a ser usada em 18/03)*
Os alunos devem elaborar um roteiro com:

- **Apresentação:** Como se apresentar e explicar o objetivo
- **Aquecimento:** Perguntas iniciais sobre a rotina do entrevistado
- **Núcleo:** Perguntas sobre processos, problemas, necessidades e expectativas
- **Encerramento:** Espaço para o entrevistado acrescentar algo e agradecimento

> **Dica:** As perguntas do núcleo devem cobrir: *O que é feito hoje? Quais são os maiores problemas? O que melhoraria o trabalho? Quais informações são mais importantes?*

#### 4. Checklist de Documentos a Solicitar
Liste documentos que podem ser solicitados antes ou durante a visita:
- [ ] Regulamento de empréstimos
- [ ] Formulários utilizados atualmente
- [ ] Relatórios gerados (se houver)
- [ ] Fluxogramas ou descrições de processos
- [ ] Outros: _______________

#### 5. Plano de Observação *(se aplicável)*
- O que observar durante a visita
- Como registrar (formulário, anotação, fotos)

---

### Entregável da Aula 2

> Um **Plano de Levantamento de Requisitos** estruturado, contendo: stakeholders identificados, técnicas selecionadas com justificativa, roteiro de entrevista completo e checklist de documentos.

---

## Aula 3 — Prática de Levantamento (18/03)

### Cenário A — Entrevista na Biblioteca *(se a greve tiver encerrado)*

- Aplicar o roteiro elaborado na Aula 2
- Registrar as respostas fielmente
- Anotar observações do ambiente e dos processos
- Solicitar os documentos do checklist

**Após a visita:**
- Consolidar as informações coletadas
- Identificar requisitos funcionais e não funcionais levantados
- Registrar dúvidas e pontos que precisam de esclarecimento

---

### Cenário B — Análise de Licitação *(se a greve continuar)*

Será fornecida uma **licitação pública de sistema de biblioteca**. Os alunos devem:

1. **Ler e interpretar** o documento
2. **Extrair requisitos** explícitos e implícitos
3. **Classificar os requisitos** em:
   - Funcionais (o que o sistema deve fazer)
   - Não funcionais (desempenho, segurança, usabilidade, etc.)
4. **Identificar lacunas:** O que o documento não deixa claro? Quais perguntas ainda precisariam ser feitas a um stakeholder?
5. **Comparar** com o roteiro de entrevista: as perguntas elaboradas seriam suficientes para cobrir os requisitos da licitação?

> O Cenário B é igualmente válido do ponto de vista profissional — na prática, analistas frequentemente trabalham a partir de editais, contratos e documentos como ponto de partida para o levantamento.

---

## Referências Sugeridas para Pesquisa

- PRESSMAN, Roger S. *Engenharia de Software: Uma Abordagem Profissional*
- SOMMERVILLE, Ian. *Engenharia de Software*
- VAZQUEZ, Carlos Eduardo; SIMÕES, Guilherme Siqueira. *Engenharia de Requisitos*
- IEEE Std 830 — Recommended Practice for Software Requirements Specifications
- Artigos e materiais disponíveis no Google Acadêmico sobre "elicitação de requisitos"

---

> **Observação ao professor:** Este plano pode ser adaptado conforme o andamento da greve e o desempenho da turma nas aulas anteriores. O Cenário B (licitação) foi previsto justamente para garantir que a prática ocorra independentemente de fatores externos.
