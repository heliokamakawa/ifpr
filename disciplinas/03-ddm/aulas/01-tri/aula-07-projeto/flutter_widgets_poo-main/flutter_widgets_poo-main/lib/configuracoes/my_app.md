# Material de estudo: `MyApp`

## Objetivo da classe

A classe `MyApp` representa a configuracao principal da aplicacao.

Ela nao e a tela em si.  
Ela funciona como um ponto de organizacao onde definimos, por exemplo:

- o tipo de app que estamos usando;
- o titulo da aplicacao;
- o tema visual;
- a rota inicial;
- configuracoes gerais, como esconder a faixa de debug.

No projeto, a ideia didatica e mostrar que essa classe concentra a configuracao do app, enquanto outras classes ficam responsaveis pelas telas.

## Lugar na progressao didatica

Depois de entender que `main()` inicia a aplicacao, o passo seguinte e entender quem recebe essa responsabilidade.

Por isso, `MyApp` funciona bem como segundo momento da sequencia:

- em `main.dart`, o foco era entrada e criacao do primeiro objeto;
- aqui, o foco passa a ser leitura de classe, construtor, parametros e configuracao;
- o aluno comeca a perceber que nao basta criar um widget: tambem e preciso configurar o app.

---

## Codigo atual

```dart
import 'package:flutter/material.dart';
import 'package:flutter_poo_widgets/configuracoes/rotas.dart';
import 'package:flutter_poo_widgets/widgets/form_estado.dart';
import 'package:flutter_poo_widgets/widgets/principal.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        Rotas.home: (context) => const Principal(),
        Rotas.formEstado: (context) => FormEstado(),
      },
    );
  }
}
```

---

## 1. O que essa classe retoma de POO

Aqui podemos retomar POO, mas com outra leitura.

Em vez de repetir apenas "classe, objeto e construtor", agora vale destacar a aplicacao pratica disso no Flutter:

- `MyApp` e uma classe;
- `MyApp()` e o construtor;
- `const MyApp()` cria o objeto;
- esse objeto e um widget;
- esse widget devolve outro objeto importante: `MaterialApp`.

Ou seja, a construcao da interface acontece por meio de objetos criados a partir de classes.

### Leitura didatica do fluxo

Podemos ler assim:

1. `main()` chama `runApp(const MyApp())`;
2. `MyApp` e instanciada;
3. o metodo `build()` e executado;
4. dentro dele, outro objeto e criado: `MaterialApp(...)`;
5. esse objeto passa a configurar o aplicativo.

Essa leitura ajuda o aluno a perceber que Flutter pode ser estudado com a base de POO que ele ja conhece.

### O que muda em relacao ao `main`

No `main`, a pergunta central era: "como a aplicacao comeca?".

Aqui, a pergunta muda para:

"como um objeto pode concentrar configuracoes do aplicativo?".

Essa mudanca de pergunta evita repeticao mecanica e aprofunda a mesma base conceitual.

---

## 2. O que e `MaterialApp`

`MaterialApp` e um widget pronto do Flutter para aplicacoes que seguem o padrao Material Design.

Na pratica, ele oferece uma estrutura base para o app, incluindo recursos como:

- tema;
- titulo;
- navegacao;
- rotas;
- configuracoes globais da aplicacao.

### Onde ele comeca e onde ele termina

No codigo, `MaterialApp` comeca nesta linha:

```dart
return MaterialApp(
```

e termina no fechamento:

```dart
    );
```

Tudo o que estiver dentro desses parenteses sao parametros enviados ao construtor de `MaterialApp`.

Essa observacao e importante porque ajuda o aluno a enxergar a estrutura do codigo:

- nome da classe;
- abertura do construtor;
- lista de parametros;
- fechamento do objeto criado.

### Ponto didatico

`MaterialApp` nao e uma palavra reservada da linguagem.  
Ele e uma classe da biblioteca `material.dart`.

Quando escrevemos:

```dart
MaterialApp(...)
```

estamos chamando o construtor dessa classe.

### Material oficial

- Flutter API: `MaterialApp`  
  https://api.flutter.dev/flutter/material/MaterialApp-class.html

---

## 3. Quais sao os parametros de `MaterialApp`

Neste projeto aparecem estes:

- `title`
- `theme`
- `debugShowCheckedModeBanner`
- `routes`

Exemplo:

```dart
MaterialApp(
  title: 'Flutter Demo',
  theme: ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
  ),
  debugShowCheckedModeBanner: false,
  routes: {
    Rotas.home: (context) => const Principal(),
    Rotas.formEstado: (context) => FormEstado(),
  },
)
```

### Esses parametros sao nomeados ou posicionais?

Neste caso, sao **parametros nomeados**.

Percebemos isso porque cada valor vem identificado:

- `title:`
- `theme:`
- `routes:`

Se fossem posicionais, os valores seriam passados apenas pela ordem.

### Por que isso importa

Isso reforca um ponto importante de POO e construtores:

- classes podem ter construtores com varios parametros;
- esses parametros podem ser nomeados;
- isso melhora a leitura e a manutencao do codigo.

### Material oficial

- Dart: Constructors  
  https://dart.dev/language/constructors

---

## 4. Como descobrir a estrutura de um widget na pratica

Uma habilidade importante nao e decorar todos os parametros de `MaterialApp`, mas saber investigar.

### Estrategias praticas

- usar o IntelliSense do editor;
- passar o mouse sobre a classe ou sobre o parametro;
- abrir a definicao da classe;
- observar a assinatura do construtor;
- consultar a documentacao oficial.

### Exemplo pratico

Se o aluno passar o mouse em `MaterialApp`, o editor costuma mostrar:

- o nome da classe;
- o construtor;
- os principais parametros;
- uma descricao resumida.

Se passar o mouse em `title`, `theme` ou `routes`, o editor normalmente mostra:

- o tipo esperado;
- a funcao do parametro;
- dicas de uso.

### O que ensinar aqui

O aluno nao precisa decorar tudo.  
Ele precisa aprender a ler a API.

Isso vale para qualquer widget novo no Flutter:

1. ver o nome da classe;
2. abrir o construtor;
3. observar os parametros;
4. identificar os tipos;
5. testar no codigo.

### Retomada estrategica

Aqui a revisao deixa de ser apenas conceitual e passa a ser metodologica.

O objetivo nao e so entender `MaterialApp`, mas ensinar um procedimento que o aluno possa repetir com qualquer widget:

- descobrir o tipo;
- ler os parametros;
- observar o que e obrigatorio;
- testar a construcao do objeto.

### Material oficial

- Flutter no Android Studio / IntelliJ: editing tips  
  https://docs.flutter.dev/tools/android-studio

---

## 5. O papel do metodo `build()`

O metodo `build()` e o lugar onde o widget descreve o que deve aparecer na interface.

No caso de `MyApp`, ele retorna um `MaterialApp`.

```dart
@override
Widget build(BuildContext context) {
  return MaterialApp(
    ...
  );
}
```

### Ponto didatico

Aqui podemos reforcar outra ideia:

- a classe `MyApp` herda de `StatelessWidget`;
- por isso ela precisa implementar o metodo `build()`;
- esse metodo devolve um `Widget`.

Entao, mais uma vez, o Flutter esta trabalhando com objetos.

### Material oficial

- Flutter API: `StatelessWidget`  
  https://api.flutter.dev/flutter/widgets/StatelessWidget-class.html

---

## 6. Por que usar `MaterialApp` e nao `CupertinoApp` ou `WidgetsApp`

O Flutter oferece mais de uma base de aplicacao.

### `MaterialApp`

Usado quando queremos seguir o padrao visual Material Design.

Importacao:

```dart
import 'package:flutter/material.dart';
```

### `CupertinoApp`

Usado quando queremos seguir o estilo visual mais proximo do iOS.

Importacao:

```dart
import 'package:flutter/cupertino.dart';
```

### `WidgetsApp`

E uma base mais fundamental, com menos opiniao visual pronta.

Importacao:

```dart
import 'package:flutter/widgets.dart';
```

### Leitura didatica

Podemos apresentar assim:

- `widgets.dart`: base mais generica;
- `material.dart`: conjunto pronto com Material Design;
- `cupertino.dart`: conjunto pronto com estilo iOS.

No projeto, faz sentido usar `material.dart` porque estamos trabalhando com widgets Material e com uma estrutura mais comum em exemplos iniciais.

### Material oficial

- Material library  
  https://api.flutter.dev/flutter/material/index.html

- Cupertino library  
  https://api.flutter.dev/flutter/cupertino/

- WidgetsApp  
  https://api.flutter.dev/flutter/widgets/WidgetsApp-class.html

---

## 7. Imports: referencia absoluta e relativa

No codigo atual aparecem imports com `package:`.

Exemplo:

```dart
import 'package:flutter_poo_widgets/configuracoes/rotas.dart';
import 'package:flutter_poo_widgets/widgets/principal.dart';
```

Isso e uma forma de referencia que muita gente chama de importacao absoluta no projeto, porque o caminho parte do nome do pacote.

### Exemplo de importacao relativa

Se o arquivo estiver na mesma regiao de pastas, poderiamos ver algo como:

```dart
import '../widgets/principal.dart';
```

ou:

```dart
import 'rotas.dart';
```

### Diferenca pratica

#### Importacao com `package:`

Vantagens:

- deixa claro de qual pacote vem o arquivo;
- costuma escalar melhor em projetos maiores;
- evita confusao quando os arquivos mudam de pasta;
- funciona bem quando o projeto cresce.

Desvantagens:

- pode parecer mais longa no inicio;
- para alunos iniciantes, o caminho pode parecer menos intuitivo.

#### Importacao relativa

Vantagens:

- pode ficar menor em arquivos proximos;
- no inicio pode parecer mais direta visualmente.

Desvantagens:

- pode ficar confusa quando ha muitos `../`;
- tende a perder clareza em projetos grandes;
- reorganizar pastas pode exigir mais manutencao.

### O que vale destacar em aula

As duas existem.  
O importante e entender o que cada uma faz e manter consistencia no projeto.

### Material oficial

- Dart: Libraries and imports  
  https://dart.dev/language/libraries

- Effective Dart: usage  
  https://dart.dev/effective-dart/usage

- Package layout conventions  
  https://dart.dev/tools/pub/package-layout

---

## 8. O uso de `show` em imports

O `show` serve para importar apenas partes especificas de uma biblioteca.

Exemplo:

```dart
import 'package:flutter/material.dart' show MaterialApp, ThemeData, Colors;
```

Nesse caso, apenas esses identificadores ficam disponiveis no arquivo.

### Vantagens

- deixa mais explicito o que esta sendo usado;
- pode ajudar na leitura;
- reduz conflitos de nomes em alguns cenarios.

### Desvantagens

- pode deixar o import mais rigido;
- se novos widgets forem usados, o import precisa ser atualizado;
- em arquivos didaticos ou pequenos, pode gerar mais manutencao do que beneficio.

### Quando comentar isso em aula

Vale mostrar como recurso da linguagem, mas sem obrigar o uso desde o inicio.  
O mais importante e o aluno saber que esse recurso existe.

### Material oficial

- Dart: Libraries and imports  
  https://dart.dev/language/libraries

---

## 9. O que foi configurado nesta classe

No codigo atual, essa classe centraliza algumas configuracoes importantes:

### `title`

Define um titulo da aplicacao.

```dart
title: 'Flutter Demo',
```

### `theme`

Define configuracoes visuais globais.

```dart
theme: ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
),
```

Aqui vale destacar que:

- `ThemeData` tambem e uma classe;
- `ColorScheme.fromSeed(...)` tambem e uma chamada de construtor/fabrica;
- tudo isso reforca o uso de objetos e parametros nomeados.

### `debugShowCheckedModeBanner: false`

Esconde a faixa de debug que aparece no canto da tela durante o desenvolvimento.

```dart
debugShowCheckedModeBanner: false,
```

Didaticamente, essa linha e interessante porque mostra que `MyApp` tambem pode ser entendida como um local de configuracao geral da aplicacao.

Ela ajuda a fixar a ideia de que nem todo parametro existe para "desenhar" a tela; alguns existem para controlar comportamento e ambiente do app.

### `routes`

Define o mapa de rotas nomeadas do app.

```dart
routes: {
  Rotas.home: (context) => const Principal(),
  Rotas.formEstado: (context) => FormEstado(),
},
```

Aqui tambem aparece um ponto importante:

- cada rota aponta para a criacao de um widget;
- portanto, navegar no Flutter tambem passa pela criacao de objetos.

---

## 10. O que vale destacar em sala

Sugestao dos pontos principais:

- `MyApp` e uma classe de configuracao principal do app.
- Ela herda de `StatelessWidget`.
- O metodo `build()` retorna um `MaterialApp`.
- `MaterialApp` e uma classe da biblioteca `material.dart`.
- Os parametros usados em `MaterialApp` sao nomeados.
- O aluno pode descobrir os parametros usando IntelliSense, hover e documentacao.
- `material.dart`, `cupertino.dart` e `widgets.dart` representam niveis e estilos diferentes de base para a aplicacao.
- Imports com `package:` e imports relativos resolvem o mesmo problema de formas diferentes.
- O `show` permite importar apenas parte de uma biblioteca.
- `debugShowCheckedModeBanner`, `theme`, `title` e `routes` reforcam a ideia de que `MyApp` concentra configuracoes gerais.

---

## 11. Resumo final

`MyApp` e uma boa classe para o aluno perceber que Flutter nao e apenas "montar tela".

Ela permite estudar, ao mesmo tempo:

- orientacao a objetos;
- construtores;
- parametros nomeados;
- heranca;
- imports;
- navegacao basica;
- organizacao de projeto.

Didaticamente, essa classe funciona como uma ponte entre conceitos de programacao e a estrutura real de um aplicativo Flutter.
