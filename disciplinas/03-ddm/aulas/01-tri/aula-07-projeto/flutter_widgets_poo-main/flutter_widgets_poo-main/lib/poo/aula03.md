# Material de estudo: `aula03.dart`

## Objetivo da aula

Esta aula apresenta a ideia de instancia anonima.

Didaticamente, ela e muito importante porque faz a ponte mais direta entre POO e Flutter.

Aqui o aluno aprende que:

- nem todo objeto precisa ser guardado em variavel;
- um objeto pode ser criado e usado no mesmo lugar;
- isso e muito comum em Dart;
- isso e extremamente comum em Flutter.

## Lugar na progressao didatica

Depois de aprender a criar um objeto corretamente, agora o aluno passa a discutir como usar esse objeto.

A pergunta central deixa de ser:

"como criar um objeto completo?".

e passa a ser:

"eu realmente preciso guardar esse objeto em uma variavel?".

---

## Codigo central

```dart
print('nome: ${Estado(
  id: id,
  nome: nome,
  sigla: sigla,
).nome}');
```

---

## 1. O que e uma instancia anonima

Instancia anonima e um objeto criado e usado diretamente, sem ser armazenado antes em uma variavel.

### Comparacao

Forma com variavel:

```dart
var estado = Estado(id: id, nome: nome, sigla: sigla);
print(estado.nome);
```

Forma anonima:

```dart
print(Estado(id: id, nome: nome, sigla: sigla).nome);
```

### Leitura didatica

Nas duas formas existe criacao de objeto.

A diferenca e:

- em uma forma o objeto e guardado;
- na outra ele e usado diretamente.

---

## 2. Quando isso faz sentido

Essa forma faz sentido quando:

- o objeto sera usado uma unica vez;
- nao ha necessidade de reaproveitar a referencia;
- o foco e a expressao imediata do valor.

### Ponto didatico

Esta aula ajuda muito a combater a ideia de que "sempre preciso criar uma variavel".

Nem sempre isso e necessario.

---

## 3. Por que isso e tao importante para Flutter

Em Flutter, quase todos os widgets sao criados dessa forma:

```dart
Text('ola')
Icon(Icons.home)
Padding(padding: ..., child: ...)
```

### Leitura didatica

Ou seja, antes mesmo de entrar em Flutter mais a fundo, o aluno ja consegue entender:

- widget tambem e objeto;
- objeto pode ser criado de forma anonima;
- esse padrao aparece o tempo todo na interface.

---

## 4. O acesso imediato a atributo

No codigo, o objeto e criado e logo em seguida o atributo `nome` e acessado:

```dart
Estado(id: id, nome: nome, sigla: sigla).nome
```

### O que isso mostra

- primeiro o objeto e criado;
- depois o operador `.` acessa um membro desse objeto;
- tudo acontece dentro da mesma expressao.

Essa leitura e muito importante para desenvolver fluencia.

---

## 5. Retomada estrategica de POO

Aqui a retomada acontece por outro angulo:

- aula01: objeto criado e preenchido manualmente;
- aula02: objeto criado corretamente com construtor;
- aula03: objeto criado corretamente, mas usado sem variavel.

Ou seja, o aluno nao aprende apenas a criar objetos.  
Ele aprende diferentes formas de uso de objetos.

---

## 6. O que vale destacar em sala

- Instancia anonima nao significa ausencia de objeto.
- O objeto existe, mesmo sem receber nome em variavel.
- Essa forma faz sentido quando o uso e imediato.
- Em Flutter, esse padrao aparece o tempo todo.
- Esta aula e uma ponte direta para entender widgets.

---

## 7. Resumo final

`aula03.dart` e uma aula pequena, mas muito poderosa.

Ela mostra que o aluno esta avancando de uma visao mais escolar de POO para uma leitura mais fluente e mais proxima do uso real da linguagem.

Didaticamente, esta aula e uma das pontes mais importantes entre objetos em Dart e widgets em Flutter.
