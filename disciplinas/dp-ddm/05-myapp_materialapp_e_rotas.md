# Aula 05 - `MyApp`, `MaterialApp` e rotas

## Objetivo da aula

Explicar como o aplicativo e configurado e como as telas passam a ter pontos de entrada organizados.

## Arquivos do projeto relacionados

- `lib/configuracoes/my_app.dart`
- `lib/configuracoes/my_app.md`
- `lib/configuracoes/rotas.dart`
- `lib/configuracoes/rotas.md`

## Ideia central

Se `main.dart` responde "como o app comeca?", esta aula responde:

- onde a configuracao principal fica;
- por que `MaterialApp` e importante;
- como rotas nomeadas ajudam na organizacao inicial;
- como `Map` aparece em um problema real.

## Conceitos abordados

### 1. `MyApp` como widget raiz de configuracao

Exemplo conceitual:

```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(...);
  }
}
```

Pontos para destacar:

- `MyApp` nao e a tela final em si;
- ela concentra configuracoes globais;
- o metodo `build()` devolve outro widget importante: `MaterialApp`.

### 2. `MaterialApp`

`MaterialApp` oferece a base de uma aplicacao Material Design.

No projeto, ele ajuda a trabalhar:

- `title`;
- `theme`;
- `debugShowCheckedModeBanner`;
- `routes`.

### 3. Parametros nomeados

`MaterialApp` e um excelente exemplo para reforcar leitura de construtor:

```dart
MaterialApp(
  title: 'Flutter Demo',
  theme: ThemeData(...),
  routes: {...},
)
```

Pontos para destacar:

- os parametros sao nomeados;
- isso melhora leitura;
- a IDE e a documentacao ajudam a descobrir o tipo esperado.

### 4. `Map` em `routes`

O parametro `routes` e um bom momento para revisar colecoes.

Exemplo:

```dart
routes: {
  Rotas.home: (context) => const Principal(),
  Rotas.formEstado: (context) => FormEstado(),
}
```

Leitura didatica:

- cada chave identifica uma rota;
- cada valor informa como construir a tela;
- isso mostra `Map` em uso real, nao apenas em exercicio abstrato.

### 5. Classe `Rotas`

Exemplo:

```dart
class Rotas {
  static const String home = '/';
  static const String formEstado = '/form_estado';
}
```

Pontos para destacar:

- centraliza strings importantes;
- reduz erro de digitacao;
- permite revisar `static` e `const`.

## Observacao didatica importante

Para este projeto, rotas nomeadas funcionam bem como recurso de ensino porque ajudam a discutir:

- `Map`;
- funcao anonima;
- arrow function;
- organizacao basica do app.

Nao e necessario transformar esta etapa em debate arquitetural mais avancado.
O foco aqui e leitura de estrutura.

## O que vale enfatizar em sala

- `MyApp` organiza o app;
- `MaterialApp` fornece uma base importante;
- `routes` mostra um caso real de `Map`;
- `Rotas` melhora legibilidade e manutencao sem aumentar muito a complexidade.

## Perguntas formativas uteis

- O que fica em `MyApp` e o que fica nas telas?
- O que `routes` recebe?
- Por que `Rotas.formEstado` e melhor do que repetir string espalhada?
- O que o aluno pode descobrir so lendo a assinatura do construtor?

## Referencias oficiais

- Flutter API: `MaterialApp`  
  https://api.flutter.dev/flutter/material/MaterialApp-class.html

- Dart: Collections  
  https://dart.dev/language/collections

- Dart: Functions  
  https://dart.dev/language/functions

- Dart: Classes  
  https://dart.dev/language/classes

- Flutter: Navigation and routing  
  https://docs.flutter.dev/ui/navigation

## Resultado esperado da aula

Ao fim desta aula, o aluno deve conseguir explicar como o app se organiza por configuracao e como uma rota nomeada conecta nome, navegacao e construcao de tela.
