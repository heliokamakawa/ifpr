# Roteiro de Validação — Como Validar o Protótipo

> Este roteiro orienta a execução prática da validação. Leia junto com `01-orientacoes-gerais.md`.

---

## Antes de começar

Tenha em mãos:

- [ ] A história de usuário escrita pelo colega
- [ ] Os critérios de aceite (Dado / Quando / Então) da história
- [ ] O protótipo correspondente
- [ ] As anotações do levantamento da equipe (respostas das personas, JAD)

Se algum desses itens estiver faltando, a validação não tem como ser feita com rigor.

---

## Passo a passo

### 1. Leia a história completa antes de abrir o protótipo

Entenda o que foi descrito: quem é o ator, qual é o objetivo, qual é o valor, quais são as regras e restrições.

Anote mentalmente ou no papel: o que você espera ver no protótipo a partir dessa história?

---

### 2. Percorra o protótipo pelo fluxo principal

Siga o caminho que um usuário real percorreria no cenário de fluxo principal.

Verifique:

- os campos necessários para a ação estão presentes?
- a sequência de telas ou estados faz sentido para o objetivo da história?
- o resultado esperado ao final do fluxo está representado?

Registre: **confirmado**, **ausente** ou **diferente do esperado**.

---

### 3. Percorra cada critério de aceite

Para cada cenário (Dado / Quando / Então):

1. Construa o contexto descrito no **Dado** — imagine o sistema naquele estado
2. Execute a ação descrita no **Quando** — navegue pelo protótipo como se fosse o usuário
3. Verifique se o resultado descrito no **Então** aparece na tela

| Cenário | O que o critério diz | O que o protótipo mostra | Resultado |
|---------|----------------------|--------------------------|-----------|
| Fluxo principal | ... | ... | ✅ / ❌ / ⚠️ |
| Bloqueio / erro | ... | ... | ✅ / ❌ / ⚠️ |
| Alternativo | ... | ... | ✅ / ❌ / ⚠️ |
| Exceção (se houver) | ... | ... | ✅ / ❌ / ⚠️ |

Legenda:
- ✅ representado corretamente
- ❌ ausente ou incorreto
- ⚠️ presente mas ambíguo — não é possível confirmar sem ajuste

---

### 4. Verifique coerência com o levantamento

Para cada regra que aparece na história, cheque se ela tem base no levantamento.

Perguntas úteis:

- essa regra foi confirmada por alguma persona ou no JAD?
- ela está corretamente representada no protótipo — ou foi simplificada demais?
- o protótipo introduz algum elemento que não veio do levantamento?

Se algo no protótipo contradiz o que foi levantado, registre com a referência exata (persona, rodada, fala).

---

### 5. Classifique cada problema encontrado

Para cada falha identificada, classifique:

| Tipo | Descrição | O que fazer |
|------|-----------|-------------|
| **Falha na história** | A história não descreveu bem — o protótipo seguiu a história, mas a história estava incompleta ou imprecisa | Reescrever a parte afetada da história |
| **Falha no protótipo** | A história estava correta, mas o protótipo não a representou adequadamente | Ajustar o protótipo |
| **Falha no entendimento** | A dupla interpretou diferente partes da mesma história | Realinhar o entendimento e corrigir o que for necessário |
| **Lacuna no levantamento** | A validação revelou uma dúvida que o levantamento não respondeu | Registrar como ponto em aberto — não inventar resposta |

---

### 6. Registre o resultado da validação

Para cada história validada, produza um registro com:

- o que estava correto
- o que foi corrigido
- o que gerou dúvida ou ruído
- o que ficou em aberto (e por quê não foi possível resolver)

Esse registro é parte da entrega.

---

## Sinais de que a validação está sendo feita errado

| Sinal | Problema |
|-------|----------|
| "O protótipo ficou bom, aprovado" sem percorrer cenários | Validação não foi feita — foi uma impressão |
| Todos os critérios marcados como ✅ sem nenhum ajuste | Suspeito — ou a história era perfeita (raro) ou a validação foi superficial |
| Nenhum registro escrito | Sem evidência de que a validação aconteceu |
| Ajustes feitos no protótipo sem registrar o que mudou e por quê | Perda de rastreabilidade |
| A dupla concordou em tudo sem questionar | A troca entre pares existe para criar fricção produtiva, não para validar sem crítica |

---

## O que fazer quando a validação encontra muita coisa errada

Não é sinal de fracasso — é sinal de que a validação funcionou.

Priorize:

1. Corrija primeiro o que afeta o fluxo principal
2. Depois, corrija o que afeta os bloqueios e regras críticas
3. Por último, ajuste ambiguidades e casos alternativos

Se o volume de problemas for grande demais para resolver em uma sessão, registre o que foi corrigido e o que ficou pendente. Clareza sobre o que ainda está aberto é mais honesta do que fingir que está completo.
