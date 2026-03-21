# Projeto - App Flutter com 10 Telas

## Destaque para alunos de DP

Para os alunos de DP (dependencia), dois pontos sao essenciais:

- a atividade e individual;
- as datas podem ser marcadas na mesma semana, previamente agendada com o professor, conforme o horario e o dia em que o aluno consegue comparecer.

Essa organizacao considera a realidade de muitos alunos que estao conciliando:

- trabalho;
- DP desta disciplina;
- DP de outras disciplinas;
- rotina academica mais apertada.

O objetivo e manter a responsabilidade individual, mas com organizacao compativel com essa situacao.

## Contexto

Tudo que foi treinado nas aulas anteriores - composicao de objetos, instancias
anonimas, parametros nomeados, funcoes anonimas - e exatamente o que Flutter
usa para construir interfaces. Este projeto e a aplicacao direta desse conhecimento.

---

## Objetivo

Desenvolver um app Flutter individual com **10 telas navegaveis**, escolhendo
livremente o dominio (sistema de academia, clinica, biblioteca, pet shop, etc.).

---

## Estrutura Sugerida

Nao obrigatoria - e uma referencia para quem nao sabe por onde comecar.

```
Tela 1   -> Dashboard / Menu principal com acesso as demais telas
Telas 2-4 -> Formularios (cadastro, edicao)
Telas 5-7 -> Listas (listagem de itens do dominio)
Telas 8-9 -> Detalhes (exibicao de um item selecionado)
Tela 10  -> Livre (sobre, configuracoes, relatorio, ou o que fizer sentido)
```

A navegacao deve partir do **dashboard** - botoes, cards ou menu lateral
direcionam para cada secao.

---

## Regras

- O app e **individual** - cada aluno entrega o seu proprio
- A equipe existe para **apoio e organizacao**, nao para dividir o trabalho
- **Nao existe entrega em atraso** - o professor nao valida o que nao foi
  apresentado dentro das aulas
- Ninguem vai embora e ninguem fica sem fazer nada - as aulas sao de trabalho
- Mesmo apos a entrega e o code review, as aulas devem ser usadas para
  **refinar e melhorar** as telas

---

## Cronograma de Entregas

| Data  | Entrega minima | Observacao |
|-------|----------------|------------|
| 30/03 | 4 telas funcionando | Navegacao entre elas ja deve funcionar |
| 06/05 | + 3 telas (total 7) | Manter as anteriores funcionando |
| 13/05 | + 3 telas (total 10) | App completo - code review |

> As equipes podem se adiantar e trazer as **10 telas ja na primeira aula**
> para iniciar o code review progressivo com antecedencia.

---

## O que conta como tela valida

Uma tela valida e um `Scaffold` completo com:

- `AppBar` com titulo identificavel
- Conteudo coerente com o dominio escolhido
- Navegacao funcional (entrar e voltar)

Tela em branco, tela copiada sem adaptacao ou tela que nao abre **nao conta**.

---

## Code Review

Quando a equipe atingir a cota da data, o professor faz o code review
de cada membro individualmente.

**Como funciona:**
1. O professor escolhe um widget surpresa na hora
2. O aluno implementa ao vivo uma tela com:
   - `Scaffold` com `AppBar`
