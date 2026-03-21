# Material de estudo: `aula04.dart`

## Objetivo da aula

Esta aula apresenta composicao entre objetos.

Didaticamente, ela e muito importante porque mostra que um objeto pode conter outro como parte de sua estrutura.

Aqui o aluno aprende:

- que classes podem se relacionar;
- que um objeto pode ter outro objeto como atributo;
- que composicao costuma fazer mais sentido do que heranca em muitos casos;
- que essa ideia tambem aparece fortemente em Flutter.

## Lugar na progressao didatica

Depois de ver criacao correta de objetos e instancias anonimas, agora o aluno passa para relacoes entre objetos.

A pergunta central deixa de ser:

"como criar um objeto?".

e passa a ser:

"como modelar objetos que dependem de outros objetos?".

---

## Codigo central

```dart
Cidade(
  id: idCidade,
  nome: nomeCidade,
  estado: Estado(
    id: id,
    nome: nome,
    sigla: sigla,
  ),
)
```

---

## 1. O que e composicao

Composicao acontece quando um objeto contem outro como parte dele.

No exemplo:

- `Cidade` tem um atributo `estado`;
- esse atributo e do tipo `Estado`.

### Leitura didatica

Podemos resumir assim:

- `Cidade` tem um `Estado`;
- isso representa uma relacao coerente com o mundo real.

---

## 2. Por que nao usar heranca aqui

Este e um ponto conceitual muito importante.

Se usarmos heranca, a leitura seria:

- `Cidade` e um `Estado`

Isso nao faz sentido.

Com composicao, a leitura correta fica:

- `Cidade` tem um `Estado`

### Ponto didatico

Essa comparacao e excelente para fortalecer pensamento tecnico, porque ajuda o aluno a escolher melhor entre:

- heranca;
- composicao.

---

## 3. Instancias anonimas aninhadas

No codigo, aparece uma instancia anonima dentro de outra:

```dart
Cidade(
  id: idCidade,
  nome: nomeCidade,
  estado: Estado(
    id: id,
    nome: nome,
    sigla: sigla,
  ),
)
```

### O que isso ensina

- `Estado(...)` e criado anonimamente;
- esse objeto e passado como valor para `estado`;
- `Cidade(...)` tambem e criada na mesma expressao.

### Ponte com Flutter

Esta aula conversa muito com Flutter porque a arvore de widgets funciona de forma parecida:

- um widget contem outro;
- um widget recebe outro como parametro;
- as instancias ficam aninhadas.

---

## 4. O `print` e o `toString()`

No final, o codigo imprime o objeto `Cidade`.

Sem sobrescrever `toString()`, o Dart mostra:

```dart
Instance of 'Cidade'
```

### O que isso ensina

- toda classe herda comportamento de `Object`;
- `toString()` pode ser redefinido;
- isso melhora bastante a leitura do objeto.

### Ponto didatico

Este e um bom gancho para a aula seguinte ou para extensao do exercicio.

---

## 5. Retomada estrategica de POO

Aqui a sequencia fica bem clara:

- aula01: criacao manual e fragil;
- aula02: criacao correta com construtor;
- aula03: instancia anonima;
- aula04: composicao e aninhamento de objetos.

Ou seja, a dificuldade cresce de forma progressiva.

---

## 6. O que vale destacar em sala

- `Cidade` contem um `Estado`.
- Isso e composicao.
- Heranca nao faria sentido nesse caso.
- O codigo usa instancias anonimas aninhadas.
- Esta forma aproxima muito o aluno da estrutura de widgets em Flutter.
- `toString()` aparece como proximo passo natural.

---

## 7. Resumo final

`aula04.dart` e uma aula-chave porque leva o aluno de objetos isolados para objetos relacionados.

Ela mostra que modelar bem nao e apenas criar classes, mas tambem representar corretamente as relacoes entre elas.

Didaticamente, esta aula prepara muito bem o aluno para entender interfaces compostas por varios widgets aninhados.
