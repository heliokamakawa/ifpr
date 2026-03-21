# Aula 02 - Construtores, `required`, `final` e null safety

## Objetivo da aula

Mostrar como Dart permite modelar objetos de forma mais segura e mais proxima do uso real em Flutter.

## Arquivos do projeto relacionados

- `lib/poo/aula02.dart`
- `lib/poo/aula02.md`

## Ideia central

Se a aula anterior mostrou o problema do objeto incompleto, esta aula mostra a melhoria:

- o objeto ja nasce com os dados;
- o construtor organiza a criacao;
- `required` obriga o preenchimento;
- `final` protege os valores;
- null safety deixa o modelo mais consistente.

## Conceitos abordados

### 1. Construtor com parametros nomeados

Exemplo:

```dart
Estado({required this.id, required this.nome, required this.sigla});
```

Pontos para destacar:

- o construtor recebe os dados na criacao;
- os parametros sao nomeados;
- a leitura fica mais clara do que em parametros posicionais longos.

### 2. `required`

`required` indica que aquele parametro precisa ser informado.

Isso e pedagogicamente muito valioso porque:

- evita objetos incompletos;
- obriga o compilador a ajudar;
- aproxima o aluno do estilo usado em widgets Flutter.

### 3. `final`

Exemplo:

```dart
final int id;
final String nome;
final String sigla;
```

Pontos para destacar:

- o valor e definido uma vez;
- o objeto fica mais previsivel;
- reduz risco de alteracao acidental.

### 4. Null safety

Ao tratar o retorno de `stdin.readLineSync()`, o aluno enxerga que:

- alguns valores podem ser nulos;
- o codigo precisa lidar com isso explicitamente;
- depois do tratamento, o uso fica mais seguro.

## Ponte didatica com Flutter

Esta aula ja prepara o aluno para ler construtores como:

```dart
const MyHomePage({super.key, required this.title});
```

ou parametros nomeados em widgets como:

```dart
Padding(
  padding: const EdgeInsets.all(8),
  child: Text('Ola'),
)
```

## O que vale enfatizar em sala

- o construtor nao e detalhe; ele organiza a criacao do objeto;
- `required` nao existe para complicar, mas para evitar esquecimentos;
- `final` melhora confiabilidade;
- Flutter usa esse mesmo estilo o tempo inteiro.

## Perguntas formativas uteis

- O que esta sendo exigido na criacao do objeto?
- O que muda entre criar vazio e criar com construtor?
- Por que `final` faz sentido aqui?
- Em que ponto o null safety aparece de forma pratica?

## Referencias oficiais

- Dart: Constructors  
  https://dart.dev/language/constructors

- Dart: Classes  
  https://dart.dev/language/classes

- Dart: Null safety  
  https://dart.dev/null-safety

- Dart: Variables  
  https://dart.dev/language/variables

## Resultado esperado da aula

Ao fim desta aula, o aluno deve conseguir explicar por que esta forma:

```dart
Estado(id: id, nome: nome, sigla: sigla)
```

e melhor do que criar o objeto vazio e preencher depois.
