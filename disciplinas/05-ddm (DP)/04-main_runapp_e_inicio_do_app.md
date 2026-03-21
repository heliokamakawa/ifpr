# Aula 04 - `main()`, `runApp()` e inicio da aplicacao

## Objetivo da aula

Explicar como uma aplicacao Flutter comeca e qual e o papel do primeiro widget.

## Arquivos do projeto relacionados

- `lib/main.dart`
- `lib/main.md`

## Ideia central

Depois da base de POO, o aluno pode ler `main.dart` como um ponto de encontro entre:

- funcao top-level;
- criacao de objeto;
- widget raiz;
- inicio da interface.

## Conceitos abordados

### 1. Funcao `main()`

Exemplo:

```dart
void main() {
  runApp(const MyApp());
}
```

Pontos para destacar:

- `main()` e o ponto de entrada do programa;
- ela nao precisa estar dentro de classe;
- em Dart isso e uma funcao top-level.

### 2. `runApp()`

`runApp()` recebe um widget e inicia a arvore de widgets da aplicacao.

Leitura didatica:

- o Flutter precisa de um widget inicial;
- esse widget passa a ser a raiz da interface;
- a partir dele a tela e montada.

### 3. `const MyApp()`

Esse trecho e valioso porque retoma POO em contexto real:

- `MyApp` e a classe;
- `MyApp()` e o construtor;
- o resultado e um objeto;
- esse objeto tambem e um widget.

## Ponte didatica com o restante do projeto

Esta aula prepara o aluno para entender:

- por que `MyApp` existe;
- por que a configuracao do app nao fica toda em `main`;
- como a interface parte de um widget principal.

## O que vale enfatizar em sala

- Flutter nao "comeca na tela"; ele comeca em `main()`;
- `runApp()` nao recebe uma tela em abstrato, mas um widget;
- widgets tambem podem ser lidos como objetos criados por construtores.

## Perguntas formativas uteis

- Qual e o ponto de entrada da aplicacao?
- O que `runApp()` recebe?
- Onde esta a criacao de objeto nesse trecho?
- Por que separar `main.dart` de `MyApp` ajuda didaticamente?

## Referencias oficiais

- Dart: Functions  
  https://dart.dev/language/functions

- Flutter API: `runApp()`  
  https://api.flutter.dev/flutter/widgets/runApp.html

- Flutter UI overview  
  https://docs.flutter.dev/ui

## Resultado esperado da aula

Ao fim desta aula, o aluno deve conseguir explicar o fluxo:

1. a execucao comeca em `main()`;
2. `runApp()` recebe um widget;
3. esse widget passa a ser a raiz da aplicacao.
