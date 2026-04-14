# 01 - Como Usar a IA

> Este arquivo vem primeiro de proposito.

## Objetivo

Usar IA para aprender melhor, pensar melhor e escolher melhor.

Nao usar IA para "entregar codigo pronto" sem entender, porque isso enfraquece:

- o treino;
- a autonomia;
- a capacidade de explicar o que foi feito;
- a autoria no code review.

## Regra pratica

Use IA para:

- pedir explicacao de conceitos;
- comparar widgets;
- perguntar qual widget faz mais sentido em cada tela;
- pedir ideias de organizacao;
- pedir ajuda para revisar escolhas;
- pedir ajuda para entender erros;
- pedir ajuda para ampliar repertorio de telas e widgets.

Evite usar IA para:

- gerar a tela inteira sem estudo;
- copiar projeto pronto;
- pedir tudo resolvido;
- colar resposta sem conseguir explicar.

## Tabela rapida

| Use para | Exemplo de pedido |
|---|---|
| Entender conceito | Peça explicacao de um conceito com linguagem simples e direta |
| Escolher widget | Pergunte qual widget faz mais sentido para uma situacao especifica |
| Planejar tela | Peça opcoes de organizacao para uma tela do seu dominio |
| Revisar ideia | Peça avaliacao de uma tela que voce ja montou |
| Melhorar uma tela | Peça sugestoes para deixar a tela mais clara, organizada e coerente |
| Corrigir entendimento | Peça explicacao do motivo de uma escolha tecnica |

## Bons usos

### 1. Pedir explicacao

Bom quando voce nao quer resposta pronta, mas quer entender melhor.

Exemplos de pedidos:

- explique a diferenca entre `StatelessWidget` e `StatefulWidget` de forma simples;
- explique o que e `Map` em Dart usando a ideia de rotas;
- explique quando faz sentido usar `Column` e quando faz sentido usar `Row`.

### 2. Pedir comparacao

Bom quando voce ja sabe o objetivo da tela, mas ainda nao sabe qual widget combina mais com ele.

Exemplos de pedidos:

- para uma pagina principal, o que faz mais sentido: menu lateral, abas ou botoes em cards?
- para uma lista de cadastros, o que fica melhor: `ListTile`, `Card` ou os dois juntos?
- para configuracoes, quando usar `SwitchListTile` e quando usar `CheckboxListTile`?

### 3. Pedir opcoes de widgets

Bom quando voce quer ampliar repertorio.

Exemplos de pedidos:

- quais widgets posso usar em um formulario de cadastro de cliente?
- quais widgets ficam interessantes em uma tela principal de sistema escolar?
- quais widgets ajudam em uma tela de dashboard simples?

Aqui, o ideal e pedir:

- nomes de widgets;
- objetivo de cada um;
- quando faz sentido usar;
- comparacao entre opcoes;
- sugestoes de combinacao.

Sem pedir geracao de codigo.

### 4. Pedir avaliacao de uma tela que ja existe

Bom quando voce ja comecou e quer melhorar.

Exemplos de pedidos:

- minha tela de lista esta muito simples; o que posso melhorar sem fugir do basico, mantendo coerencia com uma lista de cadastro?
- minha pagina principal esta funcional, mas ainda sem cara de sistema; que tipos de widget eu poderia considerar?
- meu formulario esta organizado, mas muito seco; o que posso melhorar sem complicar demais?

Aqui, o ideal e pedir:

- avaliacao da organizacao;
- sugestoes de melhoria visual e estrutural;
- indicacao de widgets mais adequados;
- justificativa das escolhas;
- pontos fortes e pontos fracos da tela.

Sem pedir para a IA montar a tela pronta.

### 5. Pedir ajuda para montar a linha de raciocinio

Bom quando voce esta perdido, mas quer continuar pensando.

Exemplos de pedidos:

- tenho um app de clinica e preciso chegar em 10 telas; como posso organizar essas telas por blocos?
- para um CRUD de cliente, que telas fazem sentido alem do formulario?
- qual seria uma sequencia logica de telas para um sistema de academia?

## Usos ruins

### 1. Pedir tudo pronto

Isso parece mais rapido, mas atrapalha o treino.

Exemplos de pedidos ruins:

- crie meu app completo;
- gere minhas 10 telas;
- faca tudo para mim.

### 2. Pedir sem contexto

Sem contexto, a resposta tende a ficar generica e pouco util.

Exemplos de pedidos ruins:

- faz uma tela ai;
- me passa qualquer widget;
- me da um formulario pronto.

### 3. Copiar sem entender

Mesmo que a resposta pareca boa, isso nao resolve o principal.

Se voce nao souber explicar:

- por que escolheu aquele widget;
- por que aquele parametro foi usado;
- por que aquela estrutura faz sentido;
- por que a navegacao funciona;

entao isso vai aparecer no code review.

## Forma boa de pedir ajuda

Uma forma pratica de usar IA e organizar o pedido em cinco partes:

- contexto;
- objetivo;
- o que ja foi feito;
- duvida principal;
- tipo de ajuda que voce quer.

### Modelo

- Contexto: qual e o dominio do app
- Objetivo: qual tela ou problema voce quer resolver
- O que ja fiz: o que ja foi montado
- Minha duvida: onde esta a dificuldade
- Quero: explicacao, comparacao, lista de opcoes ou revisao

### Exemplo de estrutura

- Contexto: app de clinica
- Objetivo: melhorar a pagina principal
- O que ja fiz: ja tenho `Scaffold` e `AppBar`
- Minha duvida: nao sei como organizar melhor os acessos
- Quero: sugestoes de widgets e justificativa, sem gerar a tela inteira

## O que costuma ajudar mais

Os pedidos costumam ficar melhores quando voce pede:

- explicacao curta e direta;
- comparacao entre duas ou tres opcoes;
- justificativa da escolha;
- linguagem simples;
- foco no seu contexto real.

## Resumo final

A melhor forma de usar IA nesta disciplina e como apoio de raciocinio.

Ela pode ajudar voce a:

- entender;
- comparar;
- decidir;
- revisar;
- ampliar repertorio.

Mas o treino de montar, ler e explicar o codigo continua precisando ser seu.
