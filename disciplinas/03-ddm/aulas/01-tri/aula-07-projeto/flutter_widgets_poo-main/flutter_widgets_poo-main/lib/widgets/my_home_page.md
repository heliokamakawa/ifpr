# Material de estudo: `MyHomePage`

## Objetivo da classe

A classe `MyHomePage` foi criada para mostrar um caso em que a interface precisa mudar durante a execucao.

Diferente de uma classe apenas de configuracao, aqui temos interacao do usuario e alteracao de dados na tela.  
Por isso, este arquivo e importante para apresentar:

- o que e um `StatefulWidget`;
- a diferenca entre widget e estado;
- o papel do `createState()`;
- o uso do `setState()`;
- como a interface reage a mudancas.

## Lugar na progressao didatica

Depois de estudar `main`, `MyApp` e `Principal`, este arquivo entra como um novo passo da sequencia.

Nos arquivos anteriores, a enfase estava em:

- iniciar o app;
- configurar o app;
- organizar widgets e ler construtores.

Aqui, a pergunta muda de novo:

"o que fazer quando a tela precisa mudar com o tempo?".

Essa mudanca de foco ajuda a mostrar ao aluno que estado nao e o primeiro conceito do Flutter, mas um conceito que aparece quando o contexto pede.

---

## Codigo atual

```dart
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
```

---

## 1. Por que essa classe e `StatefulWidget`

Um `StatefulWidget` e usado quando alguma informacao da interface pode mudar ao longo do tempo.

Neste exemplo, o valor do contador muda quando o usuario toca no botao.

Por isso, esta classe nao foi criada como `StatelessWidget`.

### Leitura didatica

Podemos explicar assim:

- se a tela nao muda, normalmente usamos `StatelessWidget`;
- se a tela precisa reagir a alteracoes, usamos `StatefulWidget`.

### Material oficial

- Flutter API: `StatefulWidget`  
  https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html

- Flutter API: `StatelessWidget`  
  https://api.flutter.dev/flutter/widgets/StatelessWidget-class.html

---

## 2. O que essa classe retoma de POO

Aqui a revisao de POO pode ser feita por outro angulo.

### Em `MyHomePage`

- `MyHomePage` e uma classe;
- ela possui um construtor;
- esse construtor recebe parametros nomeados;
- um dos atributos da classe e `title`.

```dart
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
}
```

### O que isso ensina

O widget continua sendo um objeto criado por uma classe, mas agora ele trabalha junto com outra classe: a classe de estado.

Ou seja, neste exemplo temos uma colaboracao entre objetos.

### O que muda em relacao aos arquivos anteriores

Antes, a pergunta principal era:

- quem inicia o app?
- quem configura o app?
- como organizar widgets?

Agora, a pergunta principal passa a ser:

- onde fica o dado que muda?
- quem cuida dessa mudanca?
- como a tela fica sabendo que precisa atualizar?

---

## 3. O construtor `MyHomePage({super.key, required this.title})`

Esse construtor e um bom exemplo para retomar parametros nomeados obrigatorios.

```dart
const MyHomePage({super.key, required this.title});
```

### O que aparece aqui

- `super.key`: repassa o parametro `key` para a classe pai;
- `required this.title`: exige que o valor de `title` seja informado;
- `this.title`: associa o parametro ao atributo da classe.

### Ponto didatico

Esse trecho e muito bom para mostrar que o construtor nao serve apenas para "criar um objeto", mas tambem para inicializar seus dados.

### Material oficial

- Dart: Constructors  
  https://dart.dev/language/constructors

- Dart: Classes  
  https://dart.dev/language/classes

---

## 4. Diferenca entre `MyHomePage` e `_MyHomePageState`

Esse e um dos pontos mais importantes deste arquivo.

### `MyHomePage`

Representa o widget em si.  
Ele define a estrutura principal e os dados recebidos de fora, como o `title`.

### `_MyHomePageState`

Representa o estado mutavel associado ao widget.  
E nessa classe que ficam os dados que podem mudar com o tempo, como `_counter`.

```dart
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
}
```

### Leitura didatica

Uma forma simples de explicar:

- `MyHomePage` descreve o componente;
- `_MyHomePageState` guarda o que muda nesse componente.

### Sobre o `_` no nome

O underline no inicio indica que a classe e privada para a biblioteca Dart atual.

Isso tambem pode ser usado para revisar encapsulamento de forma pratica.

### Material oficial

- Dart: Libraries and imports  
  https://dart.dev/language/libraries

---

## 5. O que o `createState()` faz

O metodo `createState()` liga o widget ao seu objeto de estado.

```dart
@override
State<MyHomePage> createState() => _MyHomePageState();
```

### Leitura didatica

Podemos interpretar assim:

- `MyHomePage` e o widget;
- quando ele precisa de estado, o Flutter pergunta qual classe de estado sera usada;
- a resposta e `_MyHomePageState()`.

### Ponto importante

Repare que aqui tambem ha criacao de objeto:

```dart
_MyHomePageState()
```

Ou seja, mais uma vez vemos Flutter trabalhando com instancias de classes.

### Material oficial

- Flutter API: `State`  
  https://api.flutter.dev/flutter/widgets/State-class.html

---

## 6. O atributo `_counter`

```dart
int _counter = 0;
```

Aqui temos um atributo da classe de estado.

### O que ele ensina

- tipo da variavel: `int`;
- atributo de objeto;
- valor inicial;
- uso de encapsulamento com `_`.

### Leitura didatica

Esse valor nao esta no widget principal (`MyHomePage`), mas na classe de estado, porque ele muda durante a execucao.

Isso ajuda o aluno a responder uma pergunta importante:

"Onde guardar um dado que muda?".

Neste modelo, a resposta e: no `State`.

---

## 7. O metodo `_incrementCounter()`

```dart
void _incrementCounter() {
  setState(() {
    _counter++;
  });
}
```

Esse metodo e chamado quando o usuario toca no botao.

### O que ele faz

1. altera o valor de `_counter`;
2. usa `setState()` para avisar ao Flutter que houve mudanca;
3. o Flutter reconstrui a interface com o novo valor.

### Ponto didatico

O principal aqui nao e apenas o incremento:

```dart
_counter++;
```

O mais importante e entender o `setState()`.

---

## 8. O que e `setState()`

`setState()` e o mecanismo usado para informar ao Flutter que o estado mudou e que a interface precisa ser atualizada.

```dart
setState(() {
  _counter++;
});
```

### Leitura didatica

Sem `setState()`, o valor poderia mudar na memoria, mas a tela nao saberia que precisa redesenhar.

Com `setState()`:

- a mudanca acontece;
- o Flutter e avisado;
- o metodo `build()` pode ser executado novamente.

### Material oficial

- Flutter API: `setState()`  
  https://api.flutter.dev/flutter/widgets/State/setState.html

---

## 9. O uso do `build()`

O metodo `build()` descreve a interface a partir do estado atual.

Isso significa que, sempre que `_counter` mudar e o `setState()` for chamado, esse metodo pode ser executado novamente.

### Ponto didatico

O `build()` nao e apenas um metodo que "desenha a tela uma vez".  
Ele deve ser entendido como uma descricao da interface baseada nos dados atuais.

### Exemplo no codigo

```dart
Text(
  '$_counter',
  style: Theme.of(context).textTheme.headlineMedium,
)
```

Esse `Text` mostra o valor atual de `_counter`.  
Quando `_counter` muda, a interface passa a exibir o novo numero.

---

## 10. O uso de `widget.title`

Dentro da classe `_MyHomePageState`, aparece:

```dart
title: Text(widget.title),
```

### O que significa `widget`

Na classe de estado, `widget` e a referencia ao widget associado, ou seja, ao objeto `MyHomePage`.

Por isso conseguimos acessar:

```dart
widget.title
```

### Leitura didatica

Isso mostra que:

- `title` pertence ao widget;
- `_counter` pertence ao estado;
- a classe de estado pode acessar os dados do widget associado.

Esse e um ponto muito rico para explicar organizacao de responsabilidade entre objetos.

---

## 11. O papel do `Scaffold`

Embora o foco principal nao seja ensinar `Scaffold` neste momento, ele aparece como estrutura visual da tela.

```dart
return Scaffold(
  appBar: AppBar(...),
  body: Center(...),
  floatingActionButton: FloatingActionButton(...),
);
```

### Leitura didatica

Neste ponto, o mais importante nao e decorar cada parte do `Scaffold`, mas perceber que:

- ele tambem e um objeto;
- possui construtor;
- recebe parametros nomeados;
- encaixa outros widgets dentro dele.

Assim, mesmo sem aprofundar layout agora, o aluno continua aplicando a mesma logica geral dos widgets.

---

## 12. Como estudar essa classe na pratica

Assim como em `MyApp`, aqui vale ensinar o aluno a investigar o codigo.

### Sugestoes praticas

- passar o mouse em `StatefulWidget`;
- passar o mouse em `State`;
- observar a assinatura de `setState()`;
- abrir a definicao de `Scaffold`, `AppBar`, `Text` e `FloatingActionButton`;
- identificar quais parametros sao nomeados;
- observar os tipos esperados pelo construtor.

### Objetivo desse habito

O aluno nao precisa decorar todos os widgets do Flutter.  
Ele precisa aprender a ler assinatura, tipo e documentacao.

### Retomada estrategica

Neste arquivo, a autonomia do aluno cresce mais um pouco.

Agora ele pode ser incentivado a investigar perguntas como:

- esse dado pertence ao widget ou ao estado?
- esse valor precisa mudar?
- esse metodo altera estado?
- esse trecho exige `setState()` ou nao?

---

## 13. O que vale destacar em sala

Sugestao dos pontos principais:

- `MyHomePage` e um `StatefulWidget` porque a tela muda.
- O widget e separado da classe de estado.
- `title` pertence ao widget.
- `_counter` pertence ao estado.
- `createState()` cria o objeto de estado.
- `setState()` avisa ao Flutter que a interface deve ser atualizada.
- O metodo `build()` descreve a tela com base no estado atual.
- O acesso `widget.title` mostra a relacao entre widget e estado.
- `Scaffold`, `AppBar`, `Text` e `FloatingActionButton` seguem a mesma logica de classe, construtor e parametros nomeados.

---

## 14. Resumo final

`MyHomePage` e um arquivo muito importante para a transicao entre POO e interface grafica.

Ele mostra que:

- widgets sao objetos;
- alguns widgets precisam de estado;
- estado pode ficar em outra classe;
- metodos podem alterar dados;
- a interface pode reagir a essas alteracoes.

Didaticamente, esse arquivo ajuda o aluno a entender que interatividade no Flutter nao acontece por "magica", mas pela combinacao entre classes, objetos, estado e reconstrucao da interface.
