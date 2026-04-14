# Material de estudo: `Rotas`

## Objetivo da classe

A classe `Rotas` foi criada para centralizar os nomes das rotas da aplicacao.

Didaticamente, este arquivo e muito rico porque permite revisar:

- a diferenca entre `home` e `routes` em `MaterialApp`;
- leitura tecnica de parametros com ajuda da IDE;
- quando um parametro aceita **um** widget e quando aceita uma estrutura maior;
- o uso de `Map`;
- funcoes anonimas;
- arrow function;
- strings de rota;
- o problema de depender de digitacao manual;
- o uso correto de `static` para organizar constantes.

## Lugar na progressao didatica

Este arquivo entra logo depois de `MyApp`, porque nasce de uma pergunta feita a partir dele.

A progressao fica assim:

- em `MyApp`, o aluno percebe que `MaterialApp` pode usar `home` ou `routes`;
- em `Rotas`, ele aprende a ler a dica da IDE, identificar o tipo esperado e escolher uma estrutura adequada;
- depois, ao usar `Navigator.pushNamed(...)`, ele entende como esse nome de rota e reaproveitado em outras partes do app.

Essa e uma progressao muito boa porque sai da copia e vai para a leitura tecnica.

---

## Codigo atual

```dart
class Rotas {
  static const String home = '/';
  static const String formEstado = '/form_estado';
  static const String formCidade = '/form_cidade';
}
```

---

## 1. Retomada do `MyApp`: `home` e `routes`

No inicio, o app pode ser configurado com algo como:

```dart
home: const Principal(),
```

Nesse caso, a propriedade `home` recebe **um widget**.

### Retomada estrategica

Aqui vale repetir a pratica da IDE:

- passar o mouse sobre `home`;
- observar o tipo esperado;
- perceber que ele aceita um unico widget.

Esse e um ponto importante porque os alunos ja costumam demonstrar evolucao na leitura:

- antes apenas tentavam;
- agora ja conseguem observar a assinatura e deduzir o que o parametro aceita.

### Ponto didatico

Essa retomada fortalece a ideia de que um programador mais tecnico nao deve "chutar" a solucao.  
Ele deve usar pistas do proprio codigo:

- nome do parametro;
- tipo esperado;
- assinatura;
- IntelliSense;
- documentacao.

---

## 2. Se `home` aceita um widget, o que usar quando quero varias rotas?

Essa e a pergunta central deste momento da aula.

Se o aluno percebe que `home` aceita apenas um widget, entao surge naturalmente a necessidade de procurar outra propriedade.

### Caminho didatico interessante

Ao usar o IntelliSense, comecam a aparecer varias opcoes do `MaterialApp`.

Nesse momento, vale insistir na postura tecnica:

- nao basta chutar nomes;
- precisamos olhar as dicas e associar com o problema;
- se queremos varias entradas organizadas, provavelmente precisaremos de uma estrutura de dados adequada.

### O raciocinio esperado

Quando um aluno diz algo como:

"tem que ser um array ou algo parecido"

isso mostra um avancar importante de pensamento, porque ele ja percebeu que:

- um unico widget nao resolve;
- talvez seja preciso uma colecao;
- a dica do tipo pode conduzir a resposta.

Esse momento e muito rico e merece ser valorizado.

---

## 3. Chegando em `routes`

Ao analisar as propriedades do `MaterialApp`, chegamos em `routes`.

Exemplo:

```dart
routes: {
  '/': (context) => const Principal(),
  '/form_estado': (context) => FormEstado(),
}
```

### O que isso ensina

Agora a leitura deixa de ser:

- "qual widget eu coloco aqui?"

e passa a ser:

- "qual estrutura esse parametro aceita?"

Essa mudanca de pergunta e muito importante para a independencia do aluno.

### O que a dica mostra

`routes` aceita um `Map`.

Isso permite revisar `Map` em um contexto real, e nao apenas teorico.

---

## 4. Revisando `Map` no contexto certo

Um `Map` trabalha com pares:

- chave
- valor

No caso das rotas:

- a chave identifica o nome da rota;
- o valor informa qual tela deve ser criada.

Exemplo:

```dart
routes: {
  '/': (context) => const Principal(),
  '/form_estado': (context) => FormEstado(),
}
```

### Leitura didatica

Podemos ler esse trecho assim:

- `'/'` e a chave;
- `(context) => const Principal()` e o valor;
- `'/form_estado'` e outra chave;
- `(context) => FormEstado()` e outro valor.

### Retomada estrategica

Aqui a revisao de colecoes fica muito mais forte, porque o aluno entende o motivo do `Map` existir no codigo:

- nao e um `Map` por acaso;
- ele foi escolhido porque precisamos relacionar um nome com uma construcao de tela.

### Material oficial

- Dart: Collections  
  https://dart.dev/language/collections

- Flutter API: `MaterialApp`  
  https://api.flutter.dev/flutter/material/MaterialApp-class.html

---

## 5. Revisando funcao anonima

No valor da rota, foi usada uma funcao:

```dart
(context) => const Principal()
```

Essa funcao nao tem nome.  
Por isso, ela e uma **funcao anonima**.

### Ponto didatico

Aqui vale revisar:

- funcao nomeada: tem nome declarado;
- funcao anonima: nao tem nome;
- ambas podem ser usadas dependendo do contexto.

### Por que isso funciona bem aqui

Neste caso, a funcao e pequena e usada apenas naquele ponto do codigo.  
Por isso, faz sentido escrevela de forma anonima.

### Material oficial

- Dart: Functions  
  https://dart.dev/language/functions

---

## 6. Revisando arrow function

Como a funcao tem apenas uma expressao, foi usada a forma:

```dart
(context) => const Principal()
```

Essa sintaxe e conhecida como **arrow function**.

### Ponto didatico

Uma pergunta boa em sala e:

"quantas linhas de retorno logico essa funcao tem?".

Se a ideia for simples e resumida em uma unica expressao, a arrow function costuma ser uma boa escolha.

### Leitura tecnica

Aqui nao e "array function", e sim **arrow function**.  
Vale a pena reforcar esse nome, porque ele aparece bastante em estudos e documentacoes.

### Material oficial

- Dart: Functions  
  https://dart.dev/language/functions

---

## 7. Primeiro passo com `String` literal

Didaticamente, faz muito sentido comecar assim:

```dart
routes: {
  '/': (context) => const Principal(),
  '/form_estado': (context) => FormEstado(),
}
```

E depois chamar:

```dart
Navigator.pushNamed(context, '/form_estado');
```

### Por que esse passo e importante

Ele prova que a mecanica funciona.

Antes de sofisticar a solucao, o aluno enxerga o fluxo completo:

1. criar o nome da rota;
2. registrar no `routes`;
3. chamar com `Navigator.pushNamed(...)`;
4. ver a navegacao acontecer.

### Bloco de comparacao util em aula

```dart
routes: {
  '/': (context) => const Principal(),
  '/form_estado': (context) => FormEstado(),
}

Navigator.pushNamed(context, '/form_estado');
```

Esse bloco ajuda a mostrar claramente que a mesma string aparece:

- na declaracao;
- na chamada.

---

## 8. Qual o problema de usar `String` diretamente?

Esse momento de pausa para discussao e muito valioso.

Muitos alunos inicialmente nao percebem o problema porque o codigo funciona.

### O ponto chave

O maior problema nao e apenas "comparar o que e bom ou ruim".  
O ponto mais importante e:

- facilidade de errar na digitacao;
- repeticao desnecessaria;
- manutencao mais fragil;
- menor seguranca ao refatorar.

Exemplo de risco:

```dart
Navigator.pushNamed(context, '/form_estdo');
```

Uma pequena diferenca de digitacao ja pode quebrar a navegacao.

### Leitura didatica

Aqui o aluno aprende uma licao importante:

um codigo pode funcionar e, mesmo assim, nao ser a melhor forma tecnica de organizar a solucao.

---

## 9. Evolucao da solucao: classe `Rotas`

Para reduzir erro de digitacao e melhorar organizacao, foi criada a classe:

```dart
class Rotas {
  static const String home = '/';
  static const String formEstado = '/form_estado';
  static const String formCidade = '/form_cidade';
}
```

### O que isso resolve

- concentra os nomes das rotas em um unico lugar;
- evita repetir strings espalhadas;
- diminui a chance de erro de digitacao;
- facilita manutencao;
- melhora leitura do codigo.

### Exemplo de uso

```dart
routes: {
  Rotas.home: (context) => const Principal(),
  Rotas.formEstado: (context) => FormEstado(),
}
```

e depois:

```dart
Navigator.pushNamed(context, Rotas.formEstado);
```

### Retomada estrategica

Aqui o aluno ve uma pequena tecnica que ja melhora bastante a qualidade do codigo.

Isso e muito valioso didaticamente, porque mostra que escrever melhor nem sempre exige algo complexo.  
As vezes, uma organizacao simples ja resolve um problema real.

---

## 10. Revisando `static` na pratica

Esse arquivo e um otimo lugar para revisar `static`.

### Exemplo

```dart
Rotas.formEstado
```

Esse acesso acontece pelo nome da classe, sem criar um objeto:

```dart
Rotas()
```

nao foi necessario.

### O que isso mostra

- `formEstado` pertence a classe;
- nao depende de instancia;
- por isso, faz sentido usar `static`.

### Leitura didatica

Podemos reforcar assim:

- quando o valor pertence a cada objeto, ele costuma ser de instancia;
- quando o valor deve ser compartilhado e acessado pela propria classe, `static` faz sentido.

Neste caso, nomes de rota nao precisam variar de objeto para objeto.  
Por isso, `static` combina muito bem com esse contexto.

### Material oficial

- Dart: Classes  
  https://dart.dev/language/classes

---

## 11. O que a documentacao oficial recomenda hoje

Para fins didaticos e para apps simples, `routes` e `Navigator.pushNamed(...)` funcionam muito bem e ajudam bastante no aprendizado.

Mas a documentacao oficial do Flutter hoje recomenda, na maioria dos casos:

- `go_router` como abordagem preferida para a maior parte das aplicacoes;
- `Navigator` com `MaterialPageRoute` em casos simples ou mais especificos;
- evitar named routes como abordagem principal na maioria dos apps maiores.

### 1. `go_router`

Exemplo:

```dart
// Melhor para a maioria dos apps modernos,
// especialmente quando ha varias telas, web e deep links.
GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Principal(),
    ),
    GoRoute(
      path: '/form_estado',
      builder: (context, state) => FormEstado(),
    ),
  ],
)
```

e a navegacao:

```dart
// Navegacao declarativa e mais alinhada
// com apps maiores e com URL.
context.go('/form_estado');
```

Quando costuma ser melhor:

- app com varias telas;
- app web;
- uso de deep links;
- necessidade de URL sincronizada;
- navegacao mais moderna e escalavel.

### 2. `Navigator` com `MaterialPageRoute`

Exemplo:

```dart
// Melhor quando a navegacao e simples
// e queremos mostrar de forma direta qual tela sera aberta.
Navigator.of(context).push(
  MaterialPageRoute(
    builder: (context) => FormEstado(),
  ),
);
```

Quando costuma ser melhor:

- exemplos pequenos;
- navegacao simples;
- quando nao ha necessidade de URL por rota;
- quando queremos mostrar a navegacao de forma mais direta.

### 3. `routes` por nome

Exemplo:

```dart
// Melhor para fins didaticos e apps pequenos,
// quando o foco e entender Map, rotas nomeadas e organizacao basica.
routes: {
  Rotas.home: (context) => const Principal(),
  Rotas.formEstado: (context) => FormEstado(),
}
```

e a navegacao:

```dart
// Funciona bem em exemplos simples,
// mas em apps maiores costuma ser menos flexivel.
Navigator.pushNamed(context, Rotas.formEstado);
```

Quando costuma ser melhor:

- aula;
- projetos simples;
- momentos de introducao a `Map`, funcao anonima e `static`;
- quando o foco principal e aprender a ideia de rota nomeada.

### Como tratar isso em aula

Vale apresentar assim:

- para aprender estrutura, `routes` e excelente;
- para apps pequenos, `Navigator` com `MaterialPageRoute` costuma ser uma opcao bem direta;
- para a maior parte dos apps modernos, a recomendacao oficial vai para `go_router`.

### Material oficial

- Navigation and routing  
  https://docs.flutter.dev/ui/navigation

- Architecture recommendations  
  https://docs.flutter.dev/app-architecture/recommendations

- Navigate with named routes  
  https://docs.flutter.dev/cookbook/navigation/named-routes

---

## 12. O que vale destacar em sala

Sugestao dos pontos principais:

- `home` aceita um unico widget.
- A dica da IDE ajuda a identificar isso tecnicamente.
- Quando precisamos organizar varias rotas, precisamos procurar outra propriedade.
- `routes` aceita um `Map`.
- `Map` faz sentido porque relaciona uma chave a um valor.
- O valor da rota pode ser uma funcao anonima.
- Se a funcao tiver uma unica expressao, pode ser escrita como arrow function.
- Comecar com strings literais ajuda a entender a mecanica.
- Depois, evoluir para a classe `Rotas` melhora organizacao e reduz erro de digitacao.
- `static` faz sentido porque os nomes das rotas pertencem a classe, nao a objetos individuais.

---

## 13. Resumo final

`Rotas` parece um arquivo pequeno, mas ele representa um salto importante de maturidade tecnica.

Ele mostra que o aluno esta avancando de:

- usar o que aparece pronto;
- para ler o tipo esperado;
- escolher a estrutura correta;
- avaliar riscos da solucao;
- melhorar a organizacao com pequenas tecnicas.

Didaticamente, esse arquivo e excelente porque transforma uma necessidade pratica de navegacao em revisao de `Map`, funcoes, strings, `static` e qualidade de codigo.

## 14. Complemento importante

Para este projeto e para fins didaticos, usar `routes` por nome funciona muito bem.

Mas e importante saber a diferenca entre dois problemas:

- problema didatico: usar `String` diretamente aumenta a chance de erro de digitacao;
- problema arquitetural: a documentacao oficial do Flutter nao recomenda named routes para a maioria das aplicacoes maiores, principalmente por limitacoes em cenarios de navegacao mais moderna, como deep links e web.

Ou seja:

- em aula, `routes` ajuda muito a entender a ideia;
- em apps maiores, a limitacao principal nao e a string em si, mas o modelo de navegacao;
- hoje, para a maioria dos apps, a documentacao oficial tende a recomendar `go_router`.
