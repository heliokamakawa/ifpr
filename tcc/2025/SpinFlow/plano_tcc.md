# 1. Descrição geral do projeto a ser desenvolvido

O SpinFlow é um aplicativo para a gestão de atividades de spinning, desenvolvido com o objetivo de melhorar a experiência da gestão. O aplicativo oferece funcionalidades que incluem o controle de presença, gerenciamento de manutenção, além de um sistema de gamificação e premiação, desafios de superação, missões, recomendações personalizadas e um sistema de pontos baseado em selos que pode ser trocado por prêmios. O projeto será desenvolvido para dispositivos móveis, utilizando a tecnologia Flutter para garantir uma experiência fluída e interativa para os usuários.

# 2. Objetivos do trabalho

## Objetivo Geral
Desenvolver um aplicativo para a gestão de atividades de spinning.

## Objetivos Específicos
1. Desenvolver um sistema de marcação de bikes para controle de presença, manutenção e preferências dos alunos.
2. Implementar desafios e missões gamificadas.
3. Criar um sistema de premiação baseado em selos, com pontuação que pode ser trocada por prêmios ou aulas particulares.
4. Integrar notificações automáticas de manutenção e acompanhamento de bikes.

# 3. Justificativa para o desenvolvimento do Trabalho

A crescente busca por métodos de engajamento e motivação nas academias demanda soluções inovadoras que incentivem a participação constante dos alunos nas atividades físicas. O SpinFlow é uma proposta que visa unir a prática de spinning com tecnologia, criando um ambiente dinâmico e interativo. Através da gamificação, do sistema de pontos e desafios, o aplicativo visa melhorar o engajamento de treino dos alunos. Este projeto busca uma solução prática para a gestão de aulas e acompanhamento contínuo de treinos e aulas.

# 4. Enunciado do problema e da(s) hipótese(s)

## Problema
A professora enfrenta dificuldades em gerenciar de forma eficiente a manutenção das bikes, frequência e acompanhamento dos alunos e a organização das aulas de spinning, além de não possuir um sistema integrado para a promoção de desafios e reconhecimento dos desempenhos individuais, o que poderia melhorar a experiência dos alunos.

## Hipóteses

### Hipótese 1: A implementação de um aplicativo de gestão de atividades de spinning auxilia na gestão das aulas, facilitando o controle de manutenção das bicicletas e a organização das turmas?
- **Testes práticos com a professora**: piloto onde a professora utiliza o aplicativo para agendar as aulas, registrar a manutenção das bicicletas e organizar as turmas. Avaliação da facilidade de uso e se o processo é mais eficiente do que o método atual (seja manual ou em outra plataforma).
- **Coleta de dados**: Acompanhar o tempo gasto pela professora em cada tarefa (ex: agendamento de aula, controle de manutenção) antes e depois da implementação do aplicativo.
- **Feedback da professora**: Aplicar uma pesquisa de satisfação para entender se o aplicativo realmente facilitou o controle e a organização das aulas e das bicicletas.

### Hipótese 2: O aplicativo permite à professora entender o andamento das aulas, coletando e sintetizando informações sobre o desempenho dos alunos, como frequência e engajamento.
- **Monitoramento de dados**: O aplicativo coleta dados de frequência, pontuação e participação dos alunos durante um período de aulas.
- **Relatórios automatizados**: Criar e testar relatórios automatizados no aplicativo, que permitem à professora visualizar rapidamente a evolução dos alunos, como frequência mensal, presença nos desafios ou metas alcançadas.
- **Avaliação da percepção da professora**: Entrevista ou pesquisa para avaliar se as informações do aplicativo são úteis e realmente ajudam a entender o desempenho das aulas e dos alunos.

### Hipótese 3: A gamificação, por meio de um sistema de pontos e premiações, tem o potencial de melhorar a experiência dos alunos nas aulas de spinning?
O que pode ser feito:
- **Desenvolvimento e implementação de gamificação**: Integrar a gamificação no aplicativo com um sistema de pontos, missões, badges e recompensas como selos e premiações, e aplicar isso nas aulas de spinning.
- **Formulário de percepção**: Questionário simples para os alunos, que será aplicado após um período de uso da gamificação. O questionário pode incluir perguntas sobre motivação, engajamento e satisfação com as recompensas.
- **Análise de resultados**: Comparar as respostas dos alunos antes e depois da implementação da gamificação para verificar se houve um aumento na motivação ou engajamento. Pode-se observar se os alunos com mais pontos ou selos se mostraram mais engajados.
- **Observação direta**: Acompanhar a participação dos alunos nas aulas durante o período de implementação do sistema gamificado, observando se o entusiasmo e a interação aumentaram.

### Ações gerais para todas as hipóteses:
- **Acompanhamento contínuo**: Durante a implementação, garantir que o aplicativo seja usado de maneira contínua nas aulas de spinning e que haja registros de feedback regularmente.
- **Comparação com métodos anteriores**: Sempre que possível, comparar os resultados das hipóteses com a situação anterior (antes da implementação do aplicativo), para ter uma base de comparação dos impactos.

# 5. Metodologia de desenvolvimento do Trabalho

O desenvolvimento será realizado utilizando metodologias ágeis, como o Scrum, para garantir a entrega incremental, interativa e o acompanhamento constante do progresso do projeto. As fases do desenvolvimento seguirão as seguintes etapas:

1. **Levantamento de requisitos**: Reuniões com a professora da academia para entender as necessidades dos alunos e os problemas a serem resolvidos.
2. **Planejamento**: Definição de funcionalidades, arquitetura do sistema e tecnologias a serem utilizadas.
3. **Desenvolvimento**: Programação do aplicativo utilizando Flutter para o front-end e Firebase ou SQLite para o banco de dados. Integração com APIs externas para envio de notificações (WhatsApp, e-mail) e gerenciamento de bikes.
4. **Testes e validações**: Realização de testes unitários, de integração e usabilidade com alunos e a professora.
5. **Documentação**: Elaboração da documentação do sistema, incluindo detalhes de funcionamento e código.
6. **Teste de Aceite**.

# 6. Metodologia de análise e avaliação dos resultados a serem obtidos

A avaliação do desempenho do aplicativo será feita com base em:

1. **Feedback dos usuários**: A professora e os alunos irão avaliar as funcionalidades do aplicativo, sugerindo melhorias.
2. **Métricas de engajamento**: A análise das interações dos alunos com os desafios, a participação nas aulas e o uso das funcionalidades de gamificação.
3. **Taxa de retenção**: Comparação da frequência dos alunos antes e depois da implementação do aplicativo.
4. **Análise do impacto nas aulas particulares**: Avaliação das aulas particulares.

# 7. Cronograma

| Etapa                                               | Duração  | Data de Início | Data de Término |
|-----------------------------------------------------|----------|-----------------|------------------|
| Levantamento de requisitos                          | 2 semanas| 01/03/2025      | 14/03/2025       |
| Planejamento e definição de funcionalidades         | 2 semanas| 15/03/2025      | 28/03/2025       |
| Desenvolvimento do aplicativo (Fase 1: Funcionalidades principais) |12 semanas| 29/03/2025      | 01/06/2025       |
| Desenvolvimento do aplicativo (Fase 2: Gamificação e Sistema de Premiação) |12 semanas| 02/07/2025      | 02/10/2025       |
| Testes e validação com usuários                     | 4 semanas| 03/10/2025      | 03/11/2025       |
| Documentação e ajustes finais                       | 4 semanas| 04/11/2025      | 04/12/2025       |
  | Banca de TCC                                      |         | 12/2025      |        |
| Entrega final e defesa do TCC                       | 1 semana | 12/12/2025      | 19/12/2025       |

# 8. Disponibilidade semanal para o desenvolvimento do projeto

A disponibilidade semanal será de 15 horas, distribuídas da seguinte maneira:
- **Segunda a Sexta**: 3 horas por dia para desenvolvimento e implementação de funcionalidades.
- **Sábado**: 3 horas para revisão e testes.

# 9. Informações complementares

O desenvolvimento será realizado de forma colaborativa, com reuniões semanais com a professora da academia para garantir que o aplicativo atenda às expectativas e necessidades dos alunos.

# 10. Referências bibliográficas

- Pressman, R. S. (2014). *Software Engineering: A Practitioner's Approach*. McGraw-Hill.
- Sommerville, I. (2011). *Software Engineering*. Pearson Education.
- Schach, S. R. (2011). *Object-Oriented Software Engineering: An Agile Unified Methodology*. McGraw-Hill.
- Alhassan, H. (2020). *The Role of Gamification in Student Engagement*. Journal of Educational Technology & Society.
- Afonso, R. (2019). *Flutter: Ferramenta para o Desenvolvimento de Aplicativos Móveis*. Editora Novatec.
