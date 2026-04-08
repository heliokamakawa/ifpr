# Exemplo 03 - Reagendamento com Prioridade

> Exemplo de dificuldade mais alta. O foco aqui é mostrar que história de usuário precisa lidar com regra geral e exceção sem confundir uma com a outra.

---

## Situação didática

Este exemplo trabalha um caso mais exigente:

- reagendamento de atendimento
- agenda regular já ocupada
- existência de prioridade para retorno com autorização médica

Ele é um bom exemplo avançado porque:

- nasceu de regra geral e exceção
- exige leitura cuidadosa da decisão de negócio
- mostra que nem toda história pode ser escrita como fluxo "padrão"

---

## História fraca

- **Como** paciente
- **Quero** reagendar minha consulta
- **Para** ser atendido depois

Problemas:

- o ator está amplo demais
- não aparece a diferença entre regra geral e exceção
- apaga um ponto importante do caso
- pode gerar um protótipo incorreto, que libera encaixe para qualquer situação

---

## História melhorada

- **Como** recepcionista da clínica
- **Quero** reagendar o retorno de um paciente com autorização médica para encaixe prioritário, mesmo sem horário regular livre
- **Para** garantir continuidade do tratamento quando a regra de prioridade se aplicar

---

## O que esta história organiza

Ela não descreve "qualquer reagendamento".

Ela recorta:

- um ator operacional claro
- uma regra específica
- uma exceção institucional
- um motivo funcional para a ação

Esse tipo de história costuma aparecer quando a equipe já tem entendimento mais consolidado.

---

## Cuidado principal

Esta história só faz sentido quando a equipe realmente tem base para ela.

Se a equipe não confirmou a exceção no levantamento, não deve inventá-la só porque o exemplo existe.

A função deste exemplo é mostrar como escrever quando o grupo já sabe que:

- a regra geral existe
- a exceção também existe
- é preciso deixar claro qual das duas está sendo tratada

---

## O que deve aparecer no protótipo

No mínimo:

- identificação do paciente
- identificação do atendimento original
- indicação de ausência de horário regular
- campo ou estado que mostre a autorização médica
- mensagem ou ação de encaixe prioritário
- confirmação do reagendamento

O protótipo precisa mostrar a decisão do sistema.

Se ele só tiver um botão `reagendar`, a história não foi bem representada.

---

## Validação inicial possível

### Cenários sugeridos

#### 1. Fluxo principal com prioridade válida

- **Dado que** o paciente precisa de retorno, não há horário regular livre e existe autorização médica para prioridade
- **Quando** a recepcionista solicitar o reagendamento
- **Então** o sistema deve permitir o encaixe prioritário conforme a regra prevista para esse caso

#### 2. Tentativa de encaixe sem autorização

- **Dado que** não existe horário regular livre e o paciente não possui autorização médica para prioridade
- **Quando** a recepcionista tentar confirmar o encaixe
- **Então** o sistema deve bloquear a ação e orientar a busca por um horário regular disponível

#### 3. Existência de horário regular livre

- **Dado que** há horário regular disponível para o retorno
- **Quando** a recepcionista iniciar o reagendamento
- **Então** o sistema deve priorizar a oferta do horário regular antes de aplicar a regra de encaixe prioritário

#### 4. Autorização incompatível com o tipo de atendimento

- **Dado que** existe autorização médica, mas ela não se aplica ao atendimento que está sendo reagendado
- **Quando** a recepcionista tentar usar a prioridade
- **Então** o sistema deve impedir o encaixe e informar que a autorização não cobre esse caso

### Perguntas para o cruzamento

- o colega percebeu que se trata de exceção e não de regra geral?
- o protótipo diferencia o encaixe prioritário do reagendamento comum?
- os cenários mostram tanto a aplicação da exceção quanto os limites dela?
- a história está clara o suficiente para orientar a decisão sem depender do autor?

---

## O que aprender com este exemplo

Ele mostra que histórias de usuário não servem apenas para fluxos básicos.

Quando bem escritas, elas também ajudam a organizar:

- regras gerais
- exceções
- restrições mais delicadas

E, na validação, isso exige mais do que um único caso feliz.

É preciso testar:

- quando a exceção vale
- quando ela não vale
- quando a regra geral deve continuar prevalecendo
