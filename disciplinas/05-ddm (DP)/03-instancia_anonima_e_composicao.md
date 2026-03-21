# Aula 03 - Instancia anonima e composicao

## Objetivo da aula

Mostrar duas ideias que ajudam muito a entender Flutter:

- objetos podem ser criados e usados diretamente;
- objetos podem conter outros objetos.

## Arquivos do projeto relacionados

- `lib/poo/aula03.dart`
- `lib/poo/aula03.md`
- `lib/poo/aula04.dart`
- `lib/poo/aula04.md`

## Ideia central

Esta aula faz a ponte mais forte entre POO e widgets.

Quando o aluno entende:

- instancia anonima;
- composicao;
- aninhamento de objetos;

ele ja fica muito mais preparado para ler interfaces Flutter.

## Conceitos abordados

### 1. Instancia anonima

Exemplo:

```dart
Estado(id: id, nome: nome, sigla: sigla).nome
```

Pontos para destacar:

- o objeto continua existindo;
- ele apenas nao foi guardado em uma variavel antes;
- esse padrao e muito comum quando o uso e imediato.

### 2. Uso imediato do objeto

Compare:

```dart
var estado = Estado(id: id, nome: nome, sigla: sigla);
print(estado.nome);
```

com:

```dart
print(Estado(id: id, nome: nome, sigla: sigla).nome);
```

As duas formas criam objeto.
O que muda e a necessidade ou nao de armazenar a referencia.

### 3. Composicao

Exemplo:

```dart
class Cidade {
  final int id;
  final String nome;
  final Estado estado;

  Cidade({required this.id, required this.nome, required this.estado});
}
```

Pontos para destacar:

- `Cidade` tem um `Estado`;
- isso representa relacao entre objetos;
- composicao costuma ser mais correta do que heranca em muitos casos reais.

### 4. Instancias anonimas aninhadas

Exemplo:

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

Esse trecho e didaticamente excelente porque antecipa a leitura de estruturas como:

```dart
Scaffold(
  appBar: AppBar(
    title: Text('Principal'),
  ),
  body: Column(
    children: [
      ElevatedButton(
        onPressed: () {},
        child: Text('Abrir'),
      ),
    ],
  ),
)
```

## O que vale enfatizar em sala

- instancia anonima nao significa "sem objeto";
- composicao significa "tem um", nao "e um";
- a arvore de widgets do Flutter reutiliza exatamente esse tipo de leitura aninhada.

## Perguntas formativas uteis

- O objeto deixou de existir por nao estar em variavel?
- Onde ha instancia anonima nesse trecho?
- `Cidade` e um `Estado` ou tem um `Estado`?
- Como essa leitura ajuda a entender widgets aninhados?

## Referencias oficiais

- Dart: Constructors  
  https://dart.dev/language/constructors

- Dart: Classes  
  https://dart.dev/language/classes

- Dart: Object-oriented programming  
  https://dart.dev/language#object-oriented-programming

## Resultado esperado da aula

Ao fim desta aula, o aluno deve conseguir ler estruturas aninhadas com menos medo e mais clareza, percebendo que Flutter faz uso intensivo desse mesmo modelo.
