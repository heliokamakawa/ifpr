# Projeto — App Flutter com 10 Telas

## Contexto

Tudo que foi treinado nas aulas anteriores — composição de objetos, instâncias
anônimas, parâmetros nomeados, funções anônimas — é exatamente o que Flutter
usa para construir interfaces. Este projeto é a aplicação direta desse conhecimento.

---

## Objetivo

Desenvolver um app Flutter individual com **10 telas navegáveis**, escolhendo
livremente o domínio (sistema de academia, clínica, biblioteca, pet shop, etc.).

---

## Estrutura Sugerida

Não obrigatória — é uma referência para quem não sabe por onde começar.

```
Tela 1   → Dashboard / Menu principal com acesso às demais telas
Telas 2–4 → Formulários (cadastro, edição)
Telas 5–7 → Listas (listagem de itens do domínio)
Telas 8–9 → Detalhes (exibição de um item selecionado)
Tela 10  → Livre (sobre, configurações, relatório, ou o que fizer sentido)
```

A navegação deve partir do **dashboard** — botões, cards ou menu lateral
direcionam para cada seção.

---

## Regras

- O app é **individual** — cada aluno entrega o seu próprio
- A equipe existe para **apoio e organização**, não para dividir o trabalho
- **Não existe entrega em atraso** — o professor não valida o que não foi
  apresentado dentro das aulas
- Ninguém vai embora e ninguém fica sem fazer nada — as aulas são de trabalho
- Mesmo após a entrega e o code review, as aulas devem ser usadas para
  **refinar e melhorar** as telas

---

## Cronograma de Entregas

| Data  | Entrega mínima | Observação |
|-------|----------------|------------|
| 23/03 | 4 telas funcionando | Navegação entre elas já deve funcionar |
| 30/03 | + 3 telas (total 7) | Manter as anteriores funcionando |
| 06/04 | + 3 telas (total 10) | App completo — code review |

> As equipes podem se adiantar e trazer as **10 telas já na primeira aula**
> para iniciar o code review progressivo com antecedência.

---

## O que conta como tela válida

Uma tela válida é um `Scaffold` completo com:

- `AppBar` com título identificável
- Conteúdo coerente com o domínio escolhido
- Navegação funcional (entrar e voltar)

Tela em branco, tela copiada sem adaptação ou tela que não abre **não conta**.

---

## Code Review

Quando a equipe atingir a cota da data, o professor faz o code review
de cada membro individualmente.

**Como funciona:**
1. O professor escolhe um widget surpresa na hora
2. O aluno implementa ao vivo uma tela com:
   - `Scaffold` com `AppBar`
   - Formulário com ao menos **1 campo com validação**
   - Botão que exibe o que foi digitado
   - O **widget surpresa** escolhido pelo professor

**Resultado:**
- Aprovado → segue refinando o app
- Precisa ajustar → professor indica o que melhorar, aluno corrige e tenta de novo na mesma aula ou na próxima
- Não tentou / entregou em branco → não validado

---
