# Estrutura, Cuidados e Referências de Estudo

> Este arquivo mostra como montar uma história de usuário útil para esta disciplina, quais erros evitar e onde estudar com segurança.

---

## Estrutura mínima da história

Cada história deve conter pelo menos:

- `Como [perfil]`
- `Quero [objetivo]`
- `Para [valor]`

Exemplo genérico:

- **Como** atendente da clínica
- **Quero** registrar um agendamento
- **Para** confirmar um atendimento com data, horário e profissional definidos

---

## O que uma história boa precisa mostrar

Mesmo sendo curta, a história precisa deixar claro:

- quem é o ator principal
- qual fluxo está sendo tratado
- qual resultado importa
- qual regra relevante não pode ser esquecida
- qual restrição, exceção ou cuidado aparece nesse caso

Regra prática:

se a história não ajuda outra pessoa a imaginar o fluxo, ela ainda está fraca.

---

## O que uma história não deve ser

Uma história de usuário não deve virar:

- título vago de funcionalidade
- cópia literal de tela
- lista longa de campos sem fluxo
- mini documento técnico
- resumo do sistema inteiro

Exemplos ruins:

- `Como usuário, quero usar o sistema.`
- `Como sistema, quero gerenciar tudo.`
- `Como atendente, quero uma tela com campo A, B, C, D, E, F e botão azul.`

---

## Regras para escrever melhor

### 1. Comece por um fluxo relevante

Escolha algo que a equipe realmente levantou e que tenha valor claro no caso.

Fluxos normalmente adequados:

- consulta de horários
- agendamento
- cancelamento
- reagendamento
- confirmação de atendimento
- registro de retorno

Fluxos que exigem mais cuidado:

- encaixes prioritários
- exceções por autorização especial
- permissões administrativas mais raras

Esses últimos só devem virar história se a equipe realmente tiver base no levantamento.

### 2. Não esconda a regra importante

A história não precisa listar tudo, mas não pode apagar o que muda o fluxo.

Se a regra altera a decisão do sistema, ela precisa aparecer:

- horário disponível ou indisponível
- cadastro regular ou irregular
- prioridade autorizada ou não autorizada
- regra geral e exceção

### 3. O valor precisa ser real

Valor não é frase vazia.

Evite:

- `Para melhorar o sistema`
- `Para ficar mais fácil`

Prefira:

- `Para verificar se existe um horário compatível antes de prosseguir`
- `Para confirmar o atendimento com data e profissional definidos`
- `Para aplicar corretamente a prioridade prevista para esse caso`

### 4. Não confunda história com protótipo

A história organiza o sentido funcional.

O protótipo vai mostrar:

- campos
- botões
- mensagens
- estados
- ordem de interação

Se a história já nascer tentando desenhar tudo, ela fica pesada e perde clareza.

### 5. Toda história precisa sustentar validação

Se você não consegue escrever um `Dado / Quando / Então` simples para a história, ela provavelmente ainda está vaga.

Em linha com a lógica de Cohn, com os Three C's e com a ideia de confirmação defendida pela Agile Alliance, a validação aqui não deve ser lida como lista infinita de testes, mas como prova de que a história realmente sustenta conversa, decisão e resultado observável.

### 6. Quantas validações escrever nesta etapa

Para esta atividade, a quantidade mais adequada costuma ser:

- **3 validações** para histórias mais simples
- **4 validações** para histórias com regra importante, bloqueio ou exceção

Uma boa distribuição costuma ser:

- 1 cenário de fluxo principal
- 1 cenário de bloqueio, erro ou ausência de resultado
- 1 cenário alternativo relevante
- 1 cenário de exceção ou decisão mais delicada, quando houver

### 7. Como não ser sucinto demais

Uma validação ruim é curta, mas vazia.

Exemplo ruim:

- `Dado que há um problema`
- `Quando o usuário tenta`
- `Então o sistema avisa`

Isso não ajuda a dupla porque não deixa claro:

- qual é o contexto real
- o que exatamente foi tentado
- qual decisão o sistema precisa tomar
- qual resultado esperado confirma que a regra foi respeitada

Uma validação boa precisa nomear, com clareza:

- o contexto
- a ação
- o resultado esperado
- a regra que faz esse resultado ser importante

### 8. Como não entrar em loop infinito

Validação não é listar todas as microvariações possíveis da interface.

Nesta atividade, não é necessário abrir cenário separado para:

- cada clique pequeno sem impacto funcional
- cor de botão
- alinhamento visual
- comportamento cosmético que não muda a decisão do sistema
- combinações infinitas de campos quando o resultado lógico é o mesmo

Regra prática para parar:

pare quando a dupla já tiver conseguido cobrir:

- o fluxo principal
- os desvios mais relevantes
- o bloqueio mais importante
- a exceção que realmente muda a regra, se existir

Se um novo cenário não traz decisão nova nem risco novo, ele provavelmente está repetindo o que já foi validado.

### 9. Relação entre validação e protótipo

As validações devem ajudar a responder se o protótipo:

- mostra o fluxo principal
- evidencia o bloqueio quando ele existe
- diferencia a exceção da regra geral
- deixa visível o resultado esperado

Se a validação não consegue "apontar" para algo verificável no protótipo, ela ainda está abstrata demais.

---

## Limites e cuidados

### História curta não é história vaga

Boa história curta:

- recorta bem o fluxo
- deixa claro ator, objetivo e valor
- segura uma conversa objetiva

História vaga:

- parece limpa, mas não orienta nada
- esconde regra relevante
- depende do autor original para ser entendida

### Não escreva a partir da memória solta

A história precisa nascer do que foi levantado em:

- rodadas assíncronas
- sessão síncrona
- JAD
- anotações e consolidações da própria equipe

### Não invente regra para completar o texto

Se uma parte do fluxo ainda está aberta:

- registre a lacuna
- escreva a história no limite do que a equipe sabe
- sinalize o que precisa ser validado

Inventar regra para "fechar bonito" piora o trabalho.

### Não transforme exceção em regra geral

Se a equipe descobriu uma exceção:

- deixe claro que é exceção
- não reescreva a história como se ela valesse para todo mundo

### Não use validação para compensar história mal escrita

Se a história está vaga, as validações tendem a ficar vagas também.

Nesse caso, o melhor caminho não é multiplicar cenários.

É voltar e melhorar a história.

---

## Checklist rápido para revisar a história

Antes de passar a história ao colega, confira:

- o ator está claro?
- o objetivo está claro?
- o valor está claro e não está vazio?
- o fluxo é relevante para o projeto?
- a história tem base no levantamento?
- a regra importante aparece?
- a história conseguiria orientar um protótipo?
- eu consigo escrever ao menos 3 cenários de validação úteis?

Se duas ou mais respostas forem `não`, a história precisa de revisão.

---

## Referências-base da disciplina

Estas são as referências do plano de ensino ou já coerentes com a disciplina. Nem todas são gratuitas, mas devem ter prioridade como base conceitual.

### PRESSMAN, Roger S.; MAXIM, Bruce

*Engenharia de Software: Uma Abordagem Profissional.*

Uso nesta atividade:

- retomar a passagem de levantamento para especificação
- reforçar refinamento, validação e prototipação

Link de consulta bibliográfica:

- [Google Play - Pressman e Maxim](https://play.google.com/store/books/details/Engenharia_de_software_9_ed?id=FSE3EAAAQBAJ)

### SOMMERVILLE, Ian

*Engenharia de Software.*

Uso nesta atividade:

- reforçar qualidade, consistência e validação de requisitos

Link de consulta bibliográfica:

- [Pearson - Sommerville, Software Engineering](https://www.pearson.com/en-us/subject-catalog/p/software-engineering/P200000003258)

### DENNIS, Alan; WIXOM, Barbara H.; ROTH, Roberta M.

*Análise e Design de Sistemas.*

Uso nesta atividade:

- apoiar a tradução do levantamento em artefatos de análise e representação

Link de consulta bibliográfica:

- [Google Books - Dennis, Wixom e Roth](https://books.google.com/books/about/Systems_Analysis_and_Design.html?id=_HvwygAACAAJ)

### COHN, Mike

*User Stories Applied: For Agile Software Development.*

Uso nesta atividade:

- compreender a lógica da história de usuário
- diferenciar história, conversa e critério de aceite

Link de consulta bibliográfica:

- [Google Books - Mike Cohn](https://books.google.com/books/about/User_Stories_Applied.html?id=SvIwuX4SVigC)

---

## Materiais complementares gratuitos e confiáveis

Os links abaixo são acessíveis, gratuitos e bons para estudo rápido antes ou durante a atividade.

### Agile Alliance - What are User Stories?

Ajuda a entender o que uma história é, e também o que ela não é.

- [https://agilealliance.org/glossary/user-stories/](https://agilealliance.org/glossary/user-stories/)

### Agile Alliance - User Story Template

Explica o formato `As a / I want / So that` sem tratar o modelo como fórmula mágica.

- [https://agilealliance.org/glossary/user-story-template/](https://agilealliance.org/glossary/user-story-template/)

### Agile Alliance - INVEST

Checklist clássico para revisar a qualidade da história.

- [https://agilealliance.org/glossary/invest/](https://agilealliance.org/glossary/invest/)

### Agile Alliance - The Three C's

Bom para lembrar que história não é só o cartão: é card, conversation e confirmation.

- [https://agilealliance.org/glossary/three-cs/](https://agilealliance.org/glossary/three-cs/)

### Agile Alliance - Given / When / Then

Referência direta e simples para validação inicial.

- [https://agilealliance.org/glossary/given-when-then/](https://agilealliance.org/glossary/given-when-then/)

### Agile Alliance - Story Mapping

Ajuda quando a equipe está tentando colocar "o sistema inteiro" dentro de uma única história.

- [https://agilealliance.org/glossary/story-mapping/](https://agilealliance.org/glossary/story-mapping/)

### Interaction Design Foundation - What are Prototypes?

Boa leitura curta para alinhar o papel do protótipo como instrumento de exploração.

- [https://www.interaction-design.org/literature/topics/prototyping](https://www.interaction-design.org/literature/topics/prototyping)

### Interaction Design Foundation - 5 Common Low-Fidelity Prototypes and Their Best Practices

Boa referência para definir como prototipar rápido sem gastar tempo demais.

- [https://www.interaction-design.org/literature/article/prototyping-learn-eight-common-methods-and-best-practices](https://www.interaction-design.org/literature/article/prototyping-learn-eight-common-methods-and-best-practices)

### Lucassen et al. - Improving agile requirements: the Quality User Story framework and tool

Artigo acadêmico aberto e muito útil para quem quiser aprofundar qualidade de histórias.

- [Springer Open Access](https://link.springer.com/article/10.1007/s00766-016-0250-x)

---

## Sequência recomendada de estudo

Se o tempo estiver curto, estudar nesta ordem:

1. o próprio levantamento da equipe
2. `01-orientacoes-gerais.md`
3. Agile Alliance - User Story Template
4. Agile Alliance - INVEST
5. Agile Alliance - Given / When / Then
6. Cohn
7. Pressman e Sommerville

---

## Em resumo

Nesta atividade, a melhor referência continua sendo o próprio caso vivido pela equipe.

Os textos ajudam a melhorar critério.

Mas a história só fica boa quando a equipe consegue conectar:

- o que foi levantado
- o que foi escrito
- o que o colega entendeu
- o que o protótipo revelou
