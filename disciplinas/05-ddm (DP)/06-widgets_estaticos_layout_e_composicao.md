# Aula 06 - Widgets estaticos, layout e composicao

## Objetivo da aula

Ensinar o aluno a montar e ler uma tela simples com widgets estruturais, sem ainda exigir estado interno.

## Arquivos do projeto relacionados

- `lib/widgets/principal.dart`
- `lib/widgets/principal.md`

## Ideia central

Esta aula mostra que construir tela em Flutter e, no fundo, compor objetos.

Ela ajuda a consolidar:

- `StatelessWidget`;
- `Scaffold`;
- `AppBar`;
- `body`;
- widgets estruturais como `Column`;
- leitura de `child` e `children`.

## Conceitos abordados

### 1. `StatelessWidget`

Exemplo:

```dart
class Principal extends StatelessWidget {
  const Principal({super.key});
}
```

Pontos para destacar:

- a tela nao guarda estado proprio;
- ela apenas descreve a estrutura atual;
- isso ja basta para muitas telas introdutorias.

### 2. `Scaffold`

`Scaffold` organiza a estrutura principal da pagina.

Ele permite discutir:

- `appBar`;
- `body`;
- organizacao visual basica.

### 3. `AppBar`

Exemplo:

```dart
AppBar(
  title: const Text('Principal'),
  backgroundColor: Colors.blue,
)
```

Pontos para destacar:

- `AppBar` tambem e widget;
- `title` recebe widget;
- `Colors.blue` ajuda a revisar acesso a membro `static`.

### 4. `body` recebe um widget

Esse e um ponto didatico central.

Quando o aluno percebe que `body` recebe um unico widget, ele entende por que um widget estrutural pode ser necessario.

### 5. `Column` e `children`

Exemplo:

```dart
body: Column(
  children: [
    ElevatedButton(...),
    ElevatedButton(...),
  ],
)
```

Pontos para destacar:

- `Column` continua sendo um unico widget para o `body`;
- dentro dele, `children` aceita varios widgets;
- isso introduz composicao de interface de forma natural.

### 6. Navegacao disparada por botao

Exemplo:

```dart
ElevatedButton(
  onPressed: () {
    Navigator.pushNamed(context, Rotas.formEstado);
  },
  child: const Text('Form Estado'),
)
```

Pontos para destacar:

- `onPressed` recebe funcao;
- `child` recebe widget;
- a tela aciona navegacao sem precisar conter toda a proxima tela.

## O que vale enfatizar em sala

- widget estrutural nao e "enfeite"; ele resolve uma necessidade do construtor;
- `child` e diferente de `children`;
- a interface pode ser lida como arvore de objetos aninhados;
- o aluno precisa aprender a descobrir o tipo esperado pelo parametro.

## Perguntas formativas uteis

- Por que `Principal` pode ser `StatelessWidget`?
- O que `body` aceita?
- Por que `Column` resolve o problema de varios elementos?
- Onde ha criacao de objeto e onde ha acesso a membro `static`?

## Referencias oficiais

- Flutter API: `StatelessWidget`  
  https://api.flutter.dev/flutter/widgets/StatelessWidget-class.html

- Flutter API: `Scaffold`  
  https://api.flutter.dev/flutter/material/Scaffold-class.html

- Flutter API: `AppBar`  
  https://api.flutter.dev/flutter/material/AppBar-class.html

- Flutter UI overview  
  https://docs.flutter.dev/ui

- Flutter widget catalog  
  https://docs.flutter.dev/ui/widgets

- Flutter layout widgets  
  https://docs.flutter.dev/ui/widgets/layout

## Resultado esperado da aula

Ao fim desta aula, o aluno deve conseguir montar uma tela simples usando composicao de widgets e explicar por que um widget estrutural foi necessario.
