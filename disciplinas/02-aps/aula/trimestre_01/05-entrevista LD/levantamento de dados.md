# Retomada e Acompanhamento do Levantamento de Requisitos
**Aula:** 18/03/2026

> Esta aula tem papel de retomada: apresenta o panorama da Atividade 01, orienta o refinamento na Atividade 02 e prepara as equipes para a sessão síncrona (Atividade 03). O conteúdo sobre entrevista e levantamento foi ensinado nas aulas anteriores — este momento existe para acompanhar como ele está sendo colocado em prática.

---

# Resultados — Atividade 01: Questionário Assíncrono

---

## Objetivo/Entrega para hoje
- Refinamento do Levantamento (até as 22h40)
    - Formato ".md";
    - Questionário; 
    - Observações/considerações para Lu;
- Planejamento e preparo para Atividade 03 (entrevista síncrona)
    - Formato ".md";
    - Questionário, estratégia; 
    - Observações/considerações para Lu;

---

## Panorama Geral

| Equipe | Entrega | Destaque |
|---|---|---|
| ApexSoftware | ✅ | Boa cobertura e organização por categorias |
| Live Tech | ✅ | Bom potencial, algumas perguntas muito certeiras |
| Matrix | ✅ | Estrutura limpa, solicitação de documentos assertiva |
| Soft and Ware | ✅ | Melhor planejamento metodológico da turma |
| NorthStar Systems | ✅ | Maior profundidade e uso inteligente de checklists |
| VIPER | ❌ | — |
| APSystems | ❌ | — |
| LUMIO | ❌ | — |

**5 de 8 equipes entregaram.** Isso é um bom começo — mais da metade da turma se engajou desde o início, e a qualidade de quem entregou mostra que a turma tem capacidade.

---

## O Que Foi Muito Bem

### Soft and Ware — planejamento exemplar
A equipe entregou mais do que um questionário: entregou um **plano de levantamento**. Definiram escopo, estratégia, stakeholders, priorizaram perguntas em três níveis (Essencial / Importante / Relevante) e até dividiram papéis para a entrevista. Isso é exatamente o que se espera de uma equipe de APS.

### NorthStar Systems — profundidade e especificidade
O questionário mais completo da turma. Usaram checklists para não deixar nada em aberto, pediram documentos específicos com o que buscavam em cada um, e cobriram temas que as outras equipes esqueceram (controle de exemplares individualmente, histórico de empréstimos por livro, notificações ao usuário). Perguntas cirúrgicas sobre multas: valor, forma de cálculo, bloqueio automático.

### Matrix — clareza e objetividade
Perguntas diretas, organizadas por bloco, sem ruído. Solicitaram documentos de forma inteligente, explicando o que queriam entender com cada um. Uma das equipes com melhor relação entre número de perguntas e cobertura real de requisitos.

### ApexSoftware — cobertura abrangente
Cobriram os processos principais do ponta a ponta: rotina, acervo, cadastro, empréstimo, devolução, reservas, relatórios e dificuldades do sistema atual. Boa organização por categorias. Base sólida para o levantamento assíncrono.

### Live Tech — perguntas que pegam o que importa
Dentro de um questionário mais longo e disperso, há perguntas muito boas: diferenciação de regras por tipo de usuário, penalidades por dano ou perda de livro, logs de registro. São exatamente os tipos de detalhe que fazem diferença na hora de levantar requisitos médios e difíceis.

---

## O Que Pode Melhorar

### Foco e especificidade nas perguntas
Algumas equipes fizeram perguntas amplas demais — o tipo que recebe uma resposta vaga porque a pergunta não aponta para lugar nenhum. "Como funciona o sistema?" não é uma pergunta de levantamento; "quantos livros um professor pode emprestar simultaneamente?" é. **Perguntas específicas geram respostas aproveitáveis.**

### Solicitação de documentos
Pedir "todos os regulamentos" é genérico demais. NorthStar e Matrix mostraram como fazer: identificar o documento e dizer o que se quer extrair dele. Isso aumenta a chance de receber o material certo e de verdade.

### Redundância entre perguntas
Várias equipes perguntaram a mesma coisa com palavras diferentes dentro do mesmo questionário. Isso ocupa espaço sem acrescentar cobertura. **Revisão antes de enviar evita ruído e melhora a qualidade geral.**

---

## Para as Equipes que Não Entregaram

A atividade 01 ficou para trás — mas o projeto continua, e o que importa agora é entrar na próxima fase sem acumular mais distância.

A atividade 02 é o levantamento assíncrono com as personas: é aqui que os requisitos são descobertos, e é aqui que a pontuação começa a ser construída de verdade. **Dá para recuperar o ritmo — mas exige que a equipe tome a frente agora.**

O caminho não é refazer o que ficou para trás: é entrar na atividade 02 com as melhores perguntas possíveis. Olhar o que as outras equipes fizeram na atividade 01, identificar o que cobriram, e construir perguntas que vão além.

---

## Atividade 02 — Hoje: Refinamento do Levantamento

### O que é essa atividade

A atividade 02 não é uma segunda atividade 01. É uma **segunda entrevista** — e em levantamento de requisitos, a segunda entrevista é onde o trabalho real começa.

> *"Requirements elicitation is an iterative process. The first elicitation pass collects general information; subsequent passes refine and elaborate the requirements."*
> — Sommerville, *Software Engineering*, 10ª ed.

Na primeira rodada a equipe mapeou o terreno. Agora é hora de entrar nele. O objetivo não é fazer mais perguntas — é fazer **perguntas melhores**, rastreadas diretamente no que foi respondido antes.

### Para quem entregou a atividade 01

O material que vocês têm é um ponto de partida, não uma conclusão. Antes de formular qualquer nova pergunta, releiam as respostas recebidas com uma lente analítica:

- O que ficou vago ou sem número concreto?
- Duas fontes disseram coisas diferentes sobre o mesmo tema?
- Uma resposta abriu um novo tema que não estava no questionário original?
- Alguma regra foi citada de forma genérica, sem especificar perfis ou exceções?

Cada resposta "sim" a essas perguntas é uma oportunidade de refinamento real.


---

### Técnicas para o refinamento

#### 1. Parta da resposta, não da pergunta
A técnica mais eficaz é simples: leia a resposta anterior e pergunte o que ela não respondeu.

> *"Listening to answers and following up with probing questions is more valuable than a pre-defined list."*
> — Wiegers & Beatty, *Software Requirements*, 3ª ed.

Se a persona disse "o prazo é 7 dias", a pergunta de refinamento não é "qual o prazo?" — é "esse prazo muda para professor? E para o diretor?"

#### 2. Perguntas de exceção e borda
Regras gerais escondem requisitos difíceis. Os detalhes que fazem a diferença entre um sistema mediano e um sistema correto estão nos casos especiais.

Exemplos de perguntas de borda:
- "E se o usuário quiser renovar e houver reserva de outra pessoa?"
- "O que acontece se o livro for perdido, não apenas atrasado?"
- "Existe algum perfil de usuário com regras diferentes dos demais?"

#### 3. Triangule as fontes — contradição é dado, não ruído
Se Júlia disse uma coisa e Rosa disse outra sobre o mesmo tema, não escolha uma resposta para ignorar. **Contradição entre fontes é informação.** Significa que a regra não está clara, que há exceção não documentada, ou que uma das fontes está errada.

> *"Conflicts between stakeholders are often symptoms of real requirements that need to be made explicit."*
> — Robertson & Robertson, *Mastering the Requirements Process*, 3ª ed.

A pergunta certa, nesse caso, é para a fonte com mais autoridade sobre aquele tema — e identificar qual persona essa é faz parte do trabalho.

#### 4. Peça exemplos concretos
Respostas abstratas geram requisitos vagos. Respostas concretas geram requisitos implementáveis.

Em vez de "como funciona o bloqueio por multa?", pergunte: "se um aluno deve R$ 3,00 de multa e tenta pegar um livro, o que aparece na tela do atendente?"

#### 5. Explore o que não existe ainda
O sistema legado (BiblioFIP) tem 17 anos. Algumas coisas que deveriam existir não existem porque nunca foram implementadas. Perguntar sobre o que falta é tão importante quanto perguntar sobre o que funciona.

---

### Conheça quem você está perguntando

As três personas têm perfis completamente diferentes. Direcionar a pergunta errada para a persona errada desperdiça uma consulta.

| Persona | Perfil | Ponto forte | Cuidado |
|---|---|---|---|
| **Júlia** | Estagiária, 6 meses, 19 anos | Fluxo operacional do dia a dia — sabe a sequência de tudo | Chuta regras de negócio com convicção. Não admite que não sabe. |
| **Rosa** | Atendente sênior, 10 anos, 41 anos | Regras de negócio — prazos por perfil, limites, casos especiais | Sucinta e direta. Não elabora. Se não lembrar, diz que não lembra — não inventa. |
| **Ana** | Bibliotecária chefe, 22 anos, 54 anos | Autoridade máxima — sabe tudo com precisão, incluindo exceções e casos raros | Telegráfica. Quanto mais você perguntar a mesma coisa, menos ela responde. Limite de consultas baixíssimo. |

**Regra prática:** perguntas sobre *como fazer* → Júlia. Perguntas sobre *regras e exceções* → Rosa. Perguntas que ninguém soube responder direito → Ana (use com parcimônia).

---

### Nota sobre uso de inteligência artificial

Esta atividade deve ser construída pela equipe, de forma consciente e autoral. **O uso de IA para gerar perguntas, estruturar análise ou simular entendimento não é recomendado aqui.**

Não é uma questão de regra. É uma questão de aprendizado.

IA é uma ferramenta essencial para qualquer profissional de software — isso não está em discussão. Mas para usar bem qualquer ferramenta, é preciso ter a base do conhecimento que ela apoia. Analistas que usam IA sem entender levantamento de requisitos produzem documentos que parecem corretos mas não são. A diferença só aparece quando o sistema entra em produção e falta metade dos requisitos difíceis.

O que vocês estão construindo agora — a capacidade de ler uma resposta, identificar o que falta, formular a pergunta certa e direcioná-la para a fonte certa — é exatamente a base que vai fazer de vocês bons profissionais. **Essa base só se conquista com a prática sem atalho.**

O professor precisa conseguir enxergar como a equipe pensou, reviu e amadureceu o levantamento. A atividade deve refletir leitura, discussão e decisão dos alunos — não o output de uma ferramenta.

---

## Atividade 03 — O que vem a seguir: sessão interativa em tempo real

A atividade 03 é a etapa final do levantamento assíncrono: uma **sessão interativa de 70 minutos** em que cada equipe conversa diretamente com as personas por meio de um sistema online.

### Como funciona

- Cada equipe recebe acesso à plataforma com login e senha da equipe
- A sessão tem **70 minutos** contados a partir do primeiro envio — o tempo é autoritativo pelo servidor, não pelo relógio do aluno
- Não há limite de perguntas — a equipe gerencia o próprio tempo
- As personas respondem dentro da mesma janela de sessão

### As personas na sessão

A biblioteca não para durante a entrevista. As três estão trabalhando — cada uma no seu ambiente, separadas, sem combinar respostas entre si. A disponibilidade de cada uma reflete exatamente isso:

**Júlia** está no balcão de atendimento. Responde rápido — às vezes em segundos, raramente passa de 3 minutos — porque está acostumada a atender na hora. É atenciosa, tem boa vontade genuína e gosta de ajudar. Se puder, manda uma resposta longa e detalhada. 

**Rosa** está organizando o acervo. Não está no balcão, não está com o sistema aberto na frente. Quando vê a mensagem, para o que está fazendo, pensa, e responde — mas isso leva entre 5 e 8 minutos. Responde com o que sabe, sem rodeios, sem enfeitar. Quando não lembra de algo, diz que não lembra.

**Ana** é a bibliotecária chefe. A fila de demandas dela nunca acaba. Quando sua mensagem chega, ela provavelmente está no meio de outra coisa — relatório para a direção, problema com fornecedor, dúvida que só ela resolve. Responde entre 15 e 20 minutos depois, e quando responde, vai direto ao ponto: o mínimo necessário para resolver. Não tem paciência para a mesma pergunta duas vezes. 


### O que os delays mudam na estratégia

Com 70 minutos e personas com tempos tão diferentes, a ordem das perguntas importa tanto quanto o conteúdo delas.

Há uma regra importante: **enquanto uma pergunta estiver aguardando resposta, o chat fica bloqueado — não é possível enviar outra pergunta, nem para outra persona.** 

A ordem e a escolha de para quem perguntar não é só uma questão de qualidade — é uma questão de tempo. Uma pergunta mal direcionada não desperdiça só a consulta: desperdiça os minutos de espera que vêm junto com ela.


### Como chegar preparado

A equipe que entrar na atividade 03 com uma lista de hipóteses para confirmar vai infinitamente mais longe do que a que entrar sem planejamento. Antes da sessão:

1. Leiam as respostas da atividade 01 e 02 e identifiquem o que ainda está em aberto
2. Para cada lacuna, definam qual persona tem mais chance de responder bem
3. Ordenem as perguntas por persona e por prioridade
4. Definam quem na equipe monitora o tempo e quem digita as perguntas

A sessão é individual por equipe — outros alunos não veem as perguntas e respostas de outra equipe. O que cada equipe descobrir depende inteiramente do que cada equipe perguntou.
