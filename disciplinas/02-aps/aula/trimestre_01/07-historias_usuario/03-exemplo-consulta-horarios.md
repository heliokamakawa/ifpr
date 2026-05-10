# Exemplo 01 - Consulta de Horários sem Login

> Exemplo de dificuldade inicial. O foco aqui é mostrar como uma história simples continua precisando de recorte, valor e critério.

---

## Situação didática

Este exemplo parte de um fluxo básico e relevante:

- consulta de horários de atendimento
- sem login
- com objetivo claro para o usuário

Ele é um bom primeiro exemplo porque:

- tem valor direto para o caso
- é fácil de imaginar em tela
- obriga a equipe a não escrever algo genérico demais

---

## História fraca

- **Como** usuário
- **Quero** consultar horários para usar o sistema
- **Para** usar o sistema

Problemas:

- ator muito amplo
- objetivo pouco preciso
- valor vago
- não deixa claro o que significa "consultar"

---

## História melhorada

- **Como** paciente da clínica
- **Quero** consultar horários disponíveis sem fazer login
- **Para** verificar se encontro um atendimento compatível antes de iniciar meu cadastro

---

## O que esta história organiza

Ela ajuda a ordenar pelo menos estes pontos:

- o ator não precisa estar autenticado
- o fluxo principal é consulta
- o valor está ligado à disponibilidade de horários
- o foco do protótipo não é "qualquer tela de busca", mas uma tela que devolva resultado útil ao paciente

---

## O que deve aparecer no protótipo

No mínimo:

- filtro por data ou especialidade
- lista de horários encontrados
- indicação visível de disponibilidade
- dados mínimos para diferenciar os atendimentos

Pode aparecer:

- nome do profissional
- turno
- mensagem de "nenhum horário encontrado"

Não precisa aparecer agora:

- acabamento visual refinado
- tela de login
- detalhes técnicos de banco de dados

---

## Validação inicial possível

### Cenários sugeridos

#### 1. Fluxo principal de consulta

- **Dado que** o paciente ainda não fez login
- **Quando** ele consultar os horários de uma especialidade
- **Então** o sistema deve exibir os horários disponíveis para que ele decida se vale prosseguir com o cadastro

#### 2. Filtro sem resultado

- **Dado que** o paciente consulta uma combinação de data e especialidade sem horários cadastrados
- **Quando** ele executar a busca
- **Então** o sistema deve informar que não há horários disponíveis para aquele recorte

#### 3. Consulta com mais de um resultado possível

- **Dado que** existem horários disponíveis para a especialidade pesquisada
- **Quando** o paciente fizer a consulta
- **Então** o sistema deve listar os horários encontrados com informações suficientes para diferenciá-los

#### 4. Tentativa de seguir sem ter escolhido nenhum horário

- **Dado que** o paciente apenas consultou horários, mas não selecionou nenhum resultado
- **Quando** ele tentar avançar para a próxima etapa
- **Então** o sistema deve exigir a escolha de um horário antes de prosseguir

### O que validar no cruzamento

- o colega entendeu que a consulta é sem login?
- o protótipo mostra disponibilidade de horário ou apenas uma grade genérica?
- os cenários cobrem tanto o fluxo principal quanto pelo menos um caso alternativo?
- a história sustenta a tela sem depender de explicação oral extra?

---

## O que aprender com este exemplo

Ele mostra que até um fluxo aparentemente simples pode falhar se a história:

- ficar vaga
- não deixar o valor claro
- não orientar o protótipo

Também mostra que validar não é só confirmar o caso feliz.

Mesmo em um fluxo simples, vale testar:

- resultado encontrado
- resultado não encontrado
- escolha possível
- avanço indevido
