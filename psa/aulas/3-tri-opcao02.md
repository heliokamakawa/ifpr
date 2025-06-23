# Implementação em Equipe - Projeto de Software

## Objetivo
Desenvolver uma solução técnica para resolver o problema de **duplicação de dados** em um sistema distribuído, utilizando **dois microsserviços** que se comunicam através de **mensageria** (por exemplo, RabbitMQ, Kafka, ou outras soluções de mensageria à escolha da equipe). O desafio é garantir que os dados sejam tratados de forma eficiente e sem duplicação entre os serviços.

## Descrição da Tarefa

### 1. **Problema**
Você precisará resolver o problema de duplicação de dados em um cenário realista, onde dois microsserviços precisam se comunicar para compartilhar informações. A transição de mensagens entre esses microsserviços precisa ser feita de forma que a duplicação de dados seja evitada e os dados sejam consistentes entre os dois serviços.

### 2. **Tecnologias e Ferramentas**
As equipes têm **liberdade total** para escolher as tecnologias que desejam utilizar, desde que a solução funcione adequadamente. Algumas opções incluem, mas não se limitam a:
- **Mensageria**: RabbitMQ, Kafka, SQS, etc.
- **Microsserviços**: Pode-se usar qualquer framework de microsserviços, como Spring Boot, Node.js, Flask, etc.
- **Banco de Dados**: Pode ser qualquer tipo de banco de dados, como SQL ou NoSQL, dependendo da necessidade do projeto.

### 3. **Critérios de Sucesso**
A solução deve estar funcionando **adequadamente**, garantindo que os dados sejam enviados entre os microsserviços sem duplicação. O critério principal para avaliação é que o sistema consiga resolver o problema de duplicação de dados de forma eficiente e sem falhas.

### 4. **Escopo e Integração**
- A solução será composta por **dois microsserviços** independentes que se comunicam via mensageria.
- Cada microsserviço deve ser capaz de enviar e receber mensagens, garantindo que os dados transferidos não sejam duplicados.
- A comunicação entre os microsserviços deve ser robusta, garantindo que a duplicação seja evitada em casos de retransmissão de mensagens ou falhas temporárias.

### 5. **Desafio de Mercado**
O foco será a **transição de mensagens** entre microsserviços, o que é um problema comum no mercado. A solução deve garantir que, mesmo com falhas ou retransmissões de mensagens, os dados não sejam duplicados.

## Expectativa
A implementação não precisa ser perfeita, mas deve resolver o problema de duplicação de dados de forma simples e eficiente, sem depender de soluções complexas ou difíceis de implementar. A experiência com a mensageria e a arquitetura de microsserviços será o principal aprendizado.

