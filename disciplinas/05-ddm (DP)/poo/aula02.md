# Material de estudo: `aula02.dart`

## Objetivo da aula

Esta aula apresenta uma versao mais idiomatica da mesma ideia da aula01.

Didaticamente, ela serve para mostrar como Dart resolve melhor os problemas vistos antes, usando:

- construtor;
- parametros nomeados;
- `required`;
- `final`;
- tratamento mais claro de `null`.

## Lugar na progressao didatica

Depois de ver um objeto sendo criado vazio e preenchido aos poucos, agora o aluno passa para uma modelagem melhor.

Esta aula responde a pergunta deixada pela aula01:

"como garantir que o objeto ja nasca completo?".

---

## Codigo central

```dart
var estado = Estado(
  id: id,
  nome: nome,
  sigla: sigla,
);
```

e a classe:

```dart
class Estado{
  final int id;
  final String nome;
  final String sigla;
  Estado({required this.id, required this.nome, required this.sigla});
}
```

---

## 1. O que mudou em relacao a aula01

Na aula01:

- o objeto era criado vazio;
- os atributos eram preenchidos depois;
- os campos aceitavam `null`.

Na aula02:

- o objeto ja nasce completo;
- o construtor exige os dados;
- os atributos sao `final`;
- os tipos deixam de ser nullable.

### Retomada estrategica

Aqui a revisao nao e apenas "agora esta certo".

Ela precisa mostrar por que a nova forma e melhor:

- mais segura;
- mais clara;
- mais alinhada com a linguagem;
- mais proxima do que depois aparece em Flutter.

---

## 2. O papel do construtor

O construtor aparece assim:

```dart
Estado({required this.id, required this.nome, required this.sigla});
```

### O que ele ensina

- o objeto recebe os dados na criacao;
- os parametros sao nomeados;
- `required` obriga o preenchimento;
- `this.id` liga o parametro ao atributo da classe.

### Ponto didatico

Aqui o aluno ve que construtor nao e apenas "uma formalidade".
Ele organiza a criacao do objeto e evita que ele exista incompleto.

---

## 3. O papel do `final`

Os atributos ficaram assim:

```dart
final int id;
final String nome;
final String sigla;
```

### Leitura didatica

`final` mostra que, depois da criacao, os valores nao devem mudar.

Isso fortalece a modelagem porque:

- o objeto fica mais previsivel;
- ha menos risco de alteracao acidental;
- o modelo fica mais confiavel.

---

## 4. Parametros nomeados e `required`

Na criacao do objeto aparece:

```dart
Estado(
  id: id,
  nome: nome,
  sigla: sigla,
);
```

### O que isso ensina

- os parametros sao identificados pelo nome;
- a leitura fica mais clara;
- `required` faz o compilador exigir todos os dados.

### Ponte com Flutter

Este e um ponto muito importante porque a mesma ideia aparece depois em widgets:

- `Text('ola')`
- `Padding(padding: ..., child: ...)`
- `MyHomePage(title: '...')`

---

## 5. O tratamento de `null` em `ler()`

Na funcao `ler()`, o retorno de `stdin.readLineSync()` pode ser `null`.

Por isso, o codigo trata esse caso de forma explicita:

```dart
if(resultado == null){
  print('valor nulo, encerrando o programa...');
  exit(0);
}
```

### Ponto didatico

Isso reforca null safety de forma pratica:

- o valor pode ser nulo;
- o programa precisa decidir o que fazer;
- depois desse tratamento, o retorno pode ser usado com mais seguranca.

---

## 6. O que vale destacar em sala

- O construtor faz o objeto nascer completo.
- `required` exige os dados na criacao.
- `final` protege os valores depois da criacao.
- Os parametros nomeados melhoram a leitura.
- O tratamento de `null` torna o codigo mais seguro.
- Esta aula ja aproxima bastante a sintaxe do que aparece em Flutter.

---

## 7. Resumo final

`aula02.dart` marca a passagem do "funciona" para o "funciona bem".

Ela mostra que uma boa modelagem em Dart passa por:

- construtor;
- obrigatoriedade dos dados;
- imutabilidade;
- leitura clara.

Didaticamente, esta aula e essencial porque prepara o aluno para reconhecer essas mesmas ideias dentro dos widgets do Flutter.
