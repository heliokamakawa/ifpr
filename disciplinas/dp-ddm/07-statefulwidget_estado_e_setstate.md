# Aula 07 - `StatefulWidget`, estado e `setState()`

## Objetivo da aula

Explicar o que muda quando a interface precisa reagir a interacao do usuario.

## Arquivos do projeto relacionados

- `lib/widgets/my_home_page.dart`
- `lib/widgets/my_home_page.md`

## Ideia central

Depois de telas estaticas, entra a pergunta:

"o que fazer quando um valor muda e a tela precisa acompanhar?"

Esta aula existe para responder isso sem exagerar na complexidade.

## Conceitos abordados

### 1. `StatefulWidget`

Exemplo:

```dart
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
```

Pontos para destacar:

- o widget continua sendo uma classe;
- ele recebe dados de fora;
- ele precisa de uma classe de estado associada.

### 2. Classe de estado

Exemplo:

```dart
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
}
```

Pontos para destacar:

- `_counter` fica no estado porque muda;
- `title` fica no widget porque foi recebido na criacao;
- a separacao ajuda a organizar responsabilidade.

### 3. `createState()`

`createState()` liga o widget ao seu objeto de estado.

Didaticamente, isso reforca que:

- Flutter tambem trabalha com mais de uma classe para representar um mesmo componente;
- ha colaboracao entre objetos.

### 4. `setState()`

Exemplo:

```dart
void _incrementCounter() {
  setState(() {
    _counter++;
  });
}
```

Pontos para destacar:

- a mudanca de valor acontece dentro do callback;
- `setState()` avisa ao Flutter que a interface precisa ser atualizada;
- o aluno nao deve decorar apenas a sintaxe, mas o papel dela.

### 5. `build()` dependente do estado

Exemplo:

```dart
Text('$_counter')
```

Esse trecho mostra que o `build()` descreve a interface de acordo com o estado atual.

## O que vale enfatizar em sala

- nem toda tela precisa ser `StatefulWidget`;
- estado so entra quando o contexto exige;
- `setState()` nao e "magica"; ele sinaliza reconstrucao da interface;
- o aluno deve aprender a diferenciar "dado do widget" de "dado do estado".

## Perguntas formativas uteis

- O que muda nesta tela para exigir estado?
- `title` deveria ficar no widget ou no estado?
- `_counter` deveria ficar no widget ou no estado?
- O que aconteceria se o valor mudasse sem `setState()`?

## Referencias oficiais

- Flutter API: `StatefulWidget`  
  https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html

- Flutter API: `State`  
  https://api.flutter.dev/flutter/widgets/State-class.html

- Flutter API: `setState()`  
  https://api.flutter.dev/flutter/widgets/State/setState.html

- Building user interfaces with Flutter  
  https://docs.flutter.dev/ui

## Resultado esperado da aula

Ao fim desta aula, o aluno deve conseguir explicar por que algumas telas sao estaticas e outras precisam de estado, e como `setState()` participa da atualizacao visual.
