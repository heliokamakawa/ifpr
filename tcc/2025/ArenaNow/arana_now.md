# Requisitos Detalhados para o Desenvolvimento

## 1. Cadastro e Gerenciamento de Usuários

### Cadastro de Usuários
**Campos necessários**:
- **Nome Completo**: Validação de caracteres alfabéticos.
- **E-mail**: Validação de formato de e-mail e verificação única.
- **Senha**: Validação de complexidade (mínimo de 8 caracteres, incluindo maiúsculas, minúsculas, números e caracteres especiais).
- **Telefone**: Validação de número de telefone (opcional).
- **Data de Nascimento**: Validação para garantir que o usuário tenha uma idade mínima (ex: 18 anos).
- **Foto de Perfil**: Upload de imagem (opcional).

**Validações**:
- E-mail único (não duplicado).
- Senha segura (mínimo de 8 caracteres).
- Confirmação de senha (no momento do cadastro).

**Associações**:
- **Grupos de Jogadores**: Cada usuário pode ser associado a múltiplos grupos de jogadores.
- **Histórico de Reservas**: Cada usuário pode ter várias reservas.

---

## 2. Cadastro e Gestão de Grupos de Jogadores

### Cadastro de Grupos
**Campos necessários**:
- **Nome do Grupo**: Nome do grupo (ex: "Time A", "Amigos do Futebol").
- **Descrição do Grupo**: Texto livre (opcional).
- **Lista de Membros**: Listagem de usuários associados ao grupo.
- **Capacidade Máxima de Membros**: Definir um limite de participantes por grupo (ex: até 10 jogadores).

**Validações**:
- Verificar se o nome do grupo é único dentro da plataforma.
- Limitação de membros (não permitir adicionar mais usuários do que a capacidade definida).

**Associações**:
- **Jogadores**: O grupo será composto por vários jogadores.
- **Reservas**: O grupo pode ser associado a múltiplas reservas de quadra.

---

## 3. Funcionalidade de Reservas

**Campos necessários**:
- **Data e Hora da Reserva**: Seleção de data e horário da quadra.
- **Tipo de Quadra**: Seleção entre as opções de quadra (ex: "Beach Tennis", "Futebol Society").
- **Organizador da Reserva**: Usuário responsável por organizar a reserva.
- **Participantes Confirmados**: Lista de usuários que confirmaram presença (inclusão automática após aceitação do convite).
- **Valor Total da Reserva**: Preço total da quadra baseado no tipo e duração.
- **Valor Individual**: Divisão do custo da reserva entre os participantes confirmados.
- **Status da Reserva**: Indicação se a reserva está pendente, confirmada ou cancelada.

**Validações**:
- Verificar disponibilidade de horário antes de confirmar a reserva.
- Garantir que o número mínimo de participantes seja atingido (ex: 4 pessoas para futebol society).
- Validar o pagamento de cada participante antes de consolidar a reserva.

**Associações**:
- **Usuários**: Cada reserva terá múltiplos usuários (participantes).
- **Grupos de Jogadores**: As reservas podem ser associadas a um grupo de jogadores.
- **Histórico de Pagamento**: Cada reserva pode ter múltiplos pagamentos.

**Pontos Críticos e Dificuldades**:
- Implementar a divisão de custos automática e lidar com casos de desistência de participantes.
- Garantir o cálculo correto do valor individual e a redistribuição em caso de desistências ou cancelamentos.
- Lidar com a sincronização entre os membros do grupo e garantir que todos aceitem os convites e confirmem presença.

---

## 4. Sistema de Pagamento Integrado

**Campos necessários**:
- **Método de Pagamento**: Cartão de crédito, Pix, boleto, etc.
- **Status do Pagamento**: "Pendente", "Confirmado", "Cancelado".
- **Valor Total**: Total da reserva.
- **Valor Individual**: Valor individual de cada participante.

**Validações**:
- Verificação de pagamento aprovado antes de consolidar a reserva.
- Notificar o organizador e os participantes em caso de falha no pagamento.

**Associações**:
- **Reserva**: Cada pagamento será associado a uma reserva específica.

**Pontos Críticos e Dificuldades**:
- Integrar com gateways de pagamento confiáveis (ex: Stripe, PayPal, Mercado Pago).
- Garantir a segurança das transações e dados bancários dos usuários.
- Implementar lógica para redistribuição de pagamentos em caso de desistência de participantes.

---

## 5. Sistema de Notificações

**Notificações Necessárias**:
- **Convite para o Grupo**: Enviar convites automáticos para os membros do grupo assim que o organizador realizar a pré-reserva.
- **Lembrete de Reserva**: Notificar os usuários sobre a data e hora da reserva (ex: 24 horas antes).
- **Status de Pagamento**: Notificar os participantes sobre o status do pagamento (ex: quando o pagamento for confirmado ou cancelado).
- **Cancelamento de Reserva**: Notificar os usuários caso o quórum não seja atingido e a reserva seja cancelada.
- **Confirmação de Reserva**: Enviar notificação final quando a reserva for consolidada após a confirmação do pagamento.

**Validações**:
- Garantir que as notificações sejam enviadas apenas quando as condições forem atendidas (ex: quando o pagamento for confirmado ou quando uma reserva for realmente consolidada).

---

## 6. Sistema de Avaliação e Feedback

**Campos necessários**:
- **Nota de Satisfação**: Escala de 1 a 5 para avaliar a experiência de reserva.
- **Comentário**: Texto livre para feedback.
- **Data da Avaliação**: Data e hora da avaliação.

**Validações**:
- Permitir avaliações apenas para reservas concluídas com sucesso.
- Limitar a quantidade de avaliações por usuário (uma por reserva).

**Associações**:
- **Reserva**: Cada avaliação estará associada a uma reserva específica.
- **Usuário**: O feedback será feito pelos usuários participantes da reserva.

---

## Pontos Críticos e Dificuldades

1. **Gestão de Conflitos no Quórum**: Lidar com a situação em que o número de participantes inicialmente planejado não é atingido, seja por desistências ou falta de pagamento. O sistema deve ser capaz de redistribuir os custos ou permitir que o organizador cubra a diferença.
2. **Integração com Sistemas de Pagamento**: A integração com sistemas de pagamento requererá atenção especial para garantir a segurança das transações e evitar falhas de pagamento que possam afetar a experiência do usuário.
3. **Notificações em Tempo Real**: Garantir que o sistema de notificações funcione de maneira eficiente, especialmente quando as condições de reserva mudam (ex: confirmação de pagamento, desistência de participantes).
4. **Sincronização entre Grupos e Reservas**: A associação entre grupos de jogadores e reservas deve ser feita de forma eficiente para garantir que todos os membros do grupo recebam os convites e confirmações de reserva de maneira oportuna.

