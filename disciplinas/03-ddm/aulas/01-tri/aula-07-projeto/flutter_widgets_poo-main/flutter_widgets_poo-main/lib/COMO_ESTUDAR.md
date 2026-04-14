# Como Estudar Este Projeto

## Objetivo deste guia

Este arquivo existe para ajudar voce a aproveitar melhor o projeto como material de estudo.

A ideia nao e apenas abrir arquivos e ler por cima.  
O objetivo e estudar com uma sequencia que faca sentido, entendendo como os conceitos evoluem e como eles aparecem no Flutter.

---

## 1. Como este projeto deve ser estudado

Este projeto foi organizado para servir como:

- exemplo;
- apoio de aula;
- treino;
- revisao;
- consulta.

Por isso, o melhor caminho nao e tentar estudar tudo ao mesmo tempo.

O ideal e seguir por blocos.

---

## 2. Ordem de estudo recomendada

### Etapa 1 - Base de POO

Comece pela pasta `lib/poo`.

Ordem recomendada:

1. `aula01.dart` + `aula01.md`
2. `aula02.dart` + `aula02.md`
3. `aula03.dart` + `aula03.md`
4. `aula04.dart` + `aula04.md`

### O que estudar aqui

- classe;
- objeto;
- atributo;
- construtor;
- `required`;
- `final`;
- instancia anonima;
- composicao.

### Por que isso vem primeiro

Porque Flutter usa exatamente essa base.

Se voce entende objetos, construtores, parametros e instancias anonimas, fica muito mais facil entender widgets.

---

### Etapa 2 - Entrada e organizacao do app

Depois, passe para:

1. `lib/main.dart` + `lib/main.md`
2. `lib/configuracoes/my_app.dart` + `lib/configuracoes/my_app.md`
3. `lib/configuracoes/rotas.dart` + `lib/configuracoes/rotas.md`

### O que estudar aqui

- funcao `main()`;
- `runApp()`;
- widget principal;
- configuracao do app;
- `MaterialApp`;
- rotas;
- `Map`;
- `static`.

### Pergunta-chave desta etapa

"Como a aplicacao comeca e como ela e organizada?"

---

### Etapa 3 - Estrutura de telas

Depois, avance para:

1. `lib/widgets/principal.dart` + `lib/widgets/principal.md`
2. `lib/widgets/my_home_page.dart` + `lib/widgets/my_home_page.md`

### O que estudar aqui

- `StatelessWidget`;
- `StatefulWidget`;
- `State`;
- `setState()`;
- `body`, `child`, `children`;
- widgets estruturais;
- organizacao de interface.

### Pergunta-chave desta etapa

"Como os widgets sao montados e como a tela muda?"

---

### Etapa 4 - Atividades

Depois de estudar a base, use:

- `lib/atividade/01-atividade_poo.md`
- `lib/atividade/02-poo_widget.md`

### O que fazer aqui

- praticar criacao de objetos;
- treinar leitura de instancia anonima;
- pensar em telas;
- estruturar o projeto individual.

---

### Etapa 5 - Repertorio e consulta

Quando estiver montando telas, use a pasta:

- `lib/dicas_hardcore`

### O que fazer aqui

Consultar ideias de:

- pagina principal;
- formularios;
- listas;
- filtros;
- dashboards;
- configuracoes;
- ideias de telas;
- uso correto da IA.

Essa pasta funciona como repertorio de apoio.

---

## 3. Como estudar cada arquivo

Uma forma boa de estudar cada arquivo e seguir esta ordem:

1. ler o codigo;
2. tentar explicar com suas palavras o que esta acontecendo;
3. ler o `.md` correspondente;
4. voltar ao codigo;
5. identificar no codigo aquilo que o `.md` explicou.

### Regra pratica

Nao leia o `.md` como se ele substituisse o codigo.  
Ele existe para ajudar voce a entender melhor o codigo.

---

## 4. Como saber se voce realmente estudou

Voce provavelmente entendeu quando consegue:

- apontar o que e classe;
- apontar o que e objeto;
- identificar construtor;
- diferenciar parametro nomeado de posicional;
- explicar por que um widget foi escolhido;
- dizer quando usar `StatelessWidget` ou `StatefulWidget`;
- ler uma instancia anonima sem se perder;
- identificar widgets estruturais.

Se voce ainda depende de copiar sem entender, entao ainda precisa treinar mais.

---

## 5. Como treinar de verdade

Treinar de verdade nao e apenas reler.

Treinar de verdade e:

- reescrever pequenos trechos;
- montar objetos sozinho;
- trocar nomes de classes e atributos;
- criar uma tela parecida sem copiar exatamente;
- explicar em voz alta o que o codigo esta fazendo;
- comparar duas opcoes de widget e justificar a escolha.

---

## 6. Como usar a IA sem se sabotar

Use a IA para:

- entender conceito;
- comparar opcoes;
- pedir sugestoes de widgets;
- revisar uma tela;
- ampliar repertorio.

Nao use a IA para:

- gerar tudo pronto;
- substituir seu treino;
- responder por voce no code review.

Se quiser aprofundar esse ponto, leia:

- `lib/dicas_hardcore/01-como_usar_ia.md`

---

## 7. O que fazer se estiver com dificuldade

Se estiver com dificuldade:

- volte uma etapa;
- reduza o problema;
- releia o codigo com o `.md` do lado;
- use as atividades para praticar;
- use a pasta de dicas como apoio;
- peca explicacao antes de pedir resposta.

Em geral, quando um aluno sente muita dificuldade em Flutter, o problema costuma estar em alguma base anterior:

- leitura de parametros;
- construtor;
- instancia anonima;
- composicao;
- organizacao de widgets.

---

## 8. O que fazer se voce ja tem facilidade

Se voce ja tem mais facilidade, nao pare no minimo.

Use o projeto para:

- melhorar organizacao;
- ampliar repertorio de widgets;
- testar mais de uma abordagem;
- criar telas mais coerentes com o dominio;
- justificar melhor suas escolhas tecnicas.

Dominio nao e fazer rapido.  
Dominio e fazer entendendo.

---

## 9. Resumo final

Este projeto foi pensado para ser estudado em camadas.

O melhor caminho e:

1. entender POO;
2. entender como o app comeca;
3. entender como os widgets sao organizados;
4. praticar;
5. consultar repertorio quando precisar.

Se voce conseguir ler bem o formato mais dificil, o restante realmente fica mais facil.
