# Exemplo 02 - Registro de Agendamento

> Exemplo de dificuldade intermediária. Aqui, a história precisa sustentar um fluxo mais importante e já carregar regra de negócio real.

---

## Situação didática

Este exemplo parte de um fluxo central de um sistema de clínica:

- agendamento de atendimento
- ação da recepção
- necessidade de respeitar disponibilidade e situação do paciente

Ele já exige mais cuidado porque:

- o fluxo envolve regra, não apenas consulta
- o protótipo precisa mostrar decisão do sistema
- a história precisa evitar simplificação perigosa

---

## História fraca

- **Como** recepcionista
- **Quero** agendar consultas para os pacientes
- **Para** atender mais rápido

Problemas:

- objetivo ainda amplo
- valor genérico
- não aparece o que condiciona o agendamento
- a história pode gerar um protótipo que ignora disponibilidade e validações

---

## História melhorada

- **Como** recepcionista da clínica
- **Quero** registrar o agendamento de um atendimento para um paciente com cadastro regular e horário disponível
- **Para** confirmar a consulta com data e profissional definidos

---

## O que esta história organiza

Ela obriga a equipe a explicitar:

- quem realiza a ação
- que o horário precisa estar disponível
- que nem todo paciente está automaticamente apto
- que o resultado importante não é só "salvar", mas concluir o atendimento com data e profissional definidos

---

## Regra que não pode sumir

Mesmo que a história continue enxuta, o grupo não pode esquecer:

- disponibilidade do horário
- situação regular do paciente
- confirmação de data e profissional

Se essas regras não aparecem na história ou na conversa que a acompanha, o protótipo tende a ficar enganoso.

---

## O que deve aparecer no protótipo

No mínimo:

- identificação do paciente
- seleção do profissional
- seleção de data e horário
- indicação de disponibilidade
- bloqueio ou alerta quando o agendamento não puder ser concluído
- ação de confirmar o agendamento

---

## Validação inicial possível

### Cenários sugeridos

#### 1. Fluxo principal de agendamento

- **Dado que** o paciente está com cadastro regular e existe horário disponível
- **Quando** a recepcionista registrar o agendamento
- **Então** o sistema deve concluir a operação e informar a data, o horário e o profissional escolhidos

#### 2. Horário já ocupado

- **Dado que** o horário escolhido deixou de estar disponível
- **Quando** a recepcionista tentar confirmar o agendamento
- **Então** o sistema deve bloquear a operação e informar que aquele horário não pode mais ser usado

#### 3. Paciente com cadastro irregular

- **Dado que** o paciente possui pendência cadastral
- **Quando** a recepcionista tentar registrar o agendamento
- **Então** o sistema deve sinalizar a irregularidade e impedir a confirmação até que a situação seja resolvida

#### 4. Alteração de profissional durante o processo

- **Dado que** a recepcionista já iniciou o agendamento
- **Quando** ela trocar o profissional selecionado
- **Então** o sistema deve atualizar os horários compatíveis com essa nova escolha antes da confirmação

### Perguntas para o cruzamento

- o colega entendeu que o fluxo precisa validar disponibilidade e situação do paciente?
- o protótipo deixa visível a confirmação do agendamento?
- os cenários cobrem o fluxo principal e os bloqueios mais relevantes?
- a história levou o colega a imaginar o fluxo certo ou ele precisou inventar partes importantes?

---

## O que aprender com este exemplo

Ele mostra a passagem de história simples para história com regra real.

Aqui já não basta dizer "quero agendar".

A história precisa sustentar decisão, validação e resultado relevante.

E as validações precisam mostrar pelo menos:

- o caso normal
- o caso bloqueado
- uma atualização de contexto que muda a decisão do sistema
