# DataHoops: Aplicativo de Scout Eletrônico para Análise de Arremessos no Basquete

**Acadêmico(a):** Rubens Matheus Batista da Silva  
**Professor(a) Orientador(a):** Hélio Kamakawa

## 1. Descrição Geral do Projeto a ser Desenvolvido

O DataHoops é um aplicativo de scout eletrônico focado em análise de arremessos no basquete, utilizando **event-based tracking** e **positional data** para registrar e analisar estatísticas ofensivas em tempo real. A ferramenta será responsável por coletar dados sobre pontos, tipos de arremessos, e localização dos mesmos na quadra, gerando relatórios automáticos sobre a eficiência de arremessos dos jogadores. O objetivo é proporcionar uma análise detalhada e precisa das ações ofensivas no jogo de basquete, com base em parâmetros como distância, localização na quadra e tipo de finalização (arremessos, infiltrações, bandejas).

## 2. Objetivos do Trabalho

### Objetivo Geral:
Desenvolvimento de um aplicativo de scout eletrônico focado em análise de arremessos no basquete.

### Objetivos Específicos:
- Implementar a coleta de dados de arremessos com base em diferentes categorias: pontos, tipo de arremesso, e localização na quadra.
- Aplicar metodologias de **event-based tracking** e **positional data** para mapear os arremessos no contexto do jogo.
- Desenvolver relatórios automáticos de eficiência por zona, distância e tipo de finalização.
- Validar o aplicativo através de testes práticos em jogos reais, com jogadores de diferentes níveis de habilidade.
- Integrar as tecnologias **Flutter**, **Dart**, e **SQLite** para garantir a performance e a usabilidade do aplicativo.

## 3. Justificativa para o Desenvolvimento do Trabalho

### Justificativa Contextual:
O basquete, como esporte dinâmico, depende de decisões rápidas e da análise de dados para otimizar a performance dos jogadores. O uso de tecnologias para coletar dados em tempo real tem sido cada vez mais presente em esportes profissionais, mas a implementação desse tipo de ferramenta em nível amador ainda é incipiente. O DataHoops visa preencher essa lacuna, proporcionando um meio acessível e eficiente para treinos e competições de basquete em diversos níveis.

### Justificativa Acadêmica:
Este trabalho envolve conhecimento técnico na coleta de dados esportivos, programação para desenvolvimento de aplicativos móveis, análise estatística e interface de usuário. O projeto se insere na interdisciplinaridade entre tecnologia, esporte e análise de dados, e será uma aplicação prática dos conceitos de **event-based tracking** e **positional data**. Além disso, o desenvolvimento do DataHoops permite uma abordagem realista, voltada para a utilização no mercado de esportes amadores e semi-profissionais, possibilitando uma implementação escalável e acessível para clubes e academias de basquete.

## 4. Enunciado do Problema e da(s) Hipótese(s)

## Problema
A análise de arremessos no basquete, especialmente em níveis amadores e semi-profissionais, não é feita pela dificuldade em coletar muitos dados distintos em tempo real de um jogo muito rápido e com diversas jogadas. Existe uma lacuna neste contexto para uma ferramenta acessível e eficiente que permita o acompanhamento em tempo real da eficiência de arremessos e suas variações durante as partidas.

## Hipótese 01
O desenvolvimento de um aplicativo de scout eletrônico será capaz de proporcionar uma interface simples e intuitiva que permita a coleta de dados complexos, mesmo com muitas jogadas rápidas em tempo real.

### Como Testar
Para testar a eficácia da interface do aplicativo e sua capacidade de lidar com a complexidade da coleta de dados durante as partidas, serão seguidos os seguintes passos:

1. **Testes de Usabilidade**: Realizar testes com jogadores amadores e técnicos de basquete durante um jogo real para validar a eficácia da interface. O foco será verificar a intuitividade da coleta de dados (por exemplo, a rapidez e precisão na marcação de arremessos e a análise em tempo real).
   
2. **Projetos Semelhantes**: A análise de ferramentas como **Hudl** (para esportes coletivos) e **ShotTracker** (focada em basquete) pode oferecer insights sobre as melhores práticas e os desafios enfrentados ao tentar desenvolver um sistema de coleta de dados eficaz. Além disso, sistemas de análise como o **Synergy Sports** e **NBA Stats** utilizam metodologias avançadas de coleta de dados em tempo real e podem servir como base para comparar a eficiência de implementação em um sistema mais simples e acessível.

3. **Artigos Correlatos**:
   - **"Real-Time Event Detection in Sports"** (Journal of Sports Engineering and Technology) – Discute tecnologias de rastreamento e coleta de dados em tempo real.
   - **"User-centered design of mobile applications for data collection in sports"** (International Journal of Human-Computer Interaction) – Artigo sobre o design de interfaces para coleta de dados durante eventos esportivos.

## Hipótese 02
O aplicativo será capaz de proporcionar insights valiosos sobre a eficiência ofensiva dos jogadores, melhorando a tomada de decisões durante os treinos e jogos.

### Como Testar
Para testar a eficácia do aplicativo na melhoria da eficiência ofensiva e nas tomadas de decisão, serão seguidos os seguintes passos:

1. **Fase 1**: Teste inicial de usabilidade com o próprio programador, usando gravações de jogos e feedback dos usuários para identificar pontos de melhoria na visualização e análise dos dados.
   
2. **Fase 2**: Testes com jogadores amadores e técnicos, utilizando o aplicativo para coletar dados em um ambiente de quadra real. A análise se concentrará na aplicabilidade dos relatórios gerados para melhorar as estratégias ofensivas e identificar padrões de acerto e erro nos arremessos.
   
3. **Fase 3**: Teste com jogadores da seleção local e veteranos, que terão a tarefa de analisar os relatórios gerados pelo aplicativo e implementar mudanças em suas estratégias ofensivas. Será avaliada a capacidade do aplicativo de melhorar o desempenho ofensivo dos jogadores durante as partidas.

4. **Projetos Semelhantes**: O uso de ferramentas como **ShotTracker** e **Hudl** em equipes profissionais pode fornecer dados valiosos sobre a eficácia dos insights para a tomada de decisões. A ferramenta **Krossover**, que oferece análise estatística em esportes coletivos, também serve como exemplo de como o feedback estatístico pode influenciar o desempenho dos jogadores.

5. **Artigos Correlatos**:
   - **"The Impact of Performance Analytics on Decision-Making in Sports"** (Journal of Sports Analytics) – Examina como a análise de dados pode influenciar decisões estratégicas no basquete.
   - **"Using data-driven approaches to enhance basketball performance"** (Journal of Quantitative Analysis in Sports) – Estudo sobre como a análise de dados melhora o desempenho de equipes de basquete.


## 5. Metodologia de Desenvolvimento do Trabalho

### Metodologia de Desenvolvimento Ágil (Scrum):
A metodologia ágil será adotada para garantir entregas contínuas e iterativas. O desenvolvimento será organizado em **sprints**, cada um focado em uma parte específica do aplicativo (coleta de dados, geração de relatórios, interface gráfica, etc.).

### Tecnologias Utilizadas:
- **Flutter/Dart** para a construção da interface e lógica do aplicativo.
- **SQLite** para o armazenamento de dados localmente no dispositivo.
- **Firebase Analytics** (opcional) para tracking de eventos e métricas de uso do app em tempo real.

### Referências de Cases e Artigos:
- Utilização de frameworks como **NBA Stats** e **FIBA LiveStats** para análise de dados de arremessos no basquete.
- Artigos sobre **event-based tracking** no contexto esportivo e sua aplicabilidade no desenvolvimento de aplicativos para esportes coletivos.

## 6. Metodologia de Análise e Avaliação dos Resultados a Serem Obtidos

A avaliação dos resultados será dividida em três fases principais:

### Fase 1 (Percepção):
O próprio desenvolvedor testará a usabilidade inicial do app, verificando a fluidez da interface e a adequação das funcionalidades com a coleta manual de dados.

### Fase 2 (Estruturação):
Teste com jogadores amadores, avaliando a precisão da coleta de dados, a confiabilidade dos relatórios e a eficiência do processo de análise.

### Fase 3 (Teste de Aceitação):
Teste final com jogadores experientes, coletando feedback sobre a aplicabilidade do aplicativo em jogos reais e a utilidade dos relatórios gerados.

## 7. Cronograma

| Etapa                     | Mês 1 | Mês 2 | Mês 3 | Mês 4 |
|---------------------------|-------|-------|-------|-------|
| Levantamento de Requisitos | X     |       |       |       |
| Desenvolvimento do Frontend| X     | X     |       |       |
| Implementação do Backend   | X     | X     |       |       |
| Testes e Validações       |       | X     | X     |       |
| Documentação e Ajustes     |       |       |       | X     |

## 8. Disponibilidade Semanal para o Desenvolvimento do Projeto

O aluno dedicará cerca de **15 horas semanais** para o desenvolvimento do aplicativo, com a seguinte divisão:

- **5 horas** para programação e desenvolvimento.
- **5 horas** para testes e validação.
- **5 horas** para estudo de artigos e aprimoramento contínuo do conhecimento técnico.

## 9. Informações Complementares

O projeto será desenvolvido com foco na praticidade e no desempenho do aplicativo, buscando sempre otimizar a interface e a experiência do usuário. O desenvolvimento será totalmente voltado para a coleta e análise de dados de arremessos, sem a necessidade de infraestrutura avançada, tornando o aplicativo acessível para clubes e academias de basquete em diversos níveis.

## 10. Referências Bibliográficas

- **NBA Stats**, **FIBA LiveStats**, **Synergy Sports** – Referências para coleta de dados de arremessos.
- Artigos sobre **event-based tracking** em esportes coletivos, como no basquete.
- **Flutter Documentation** para o desenvolvimento do front-end.
- **SQLite Documentation** para o armazenamento local de dados.
