# Material de estudo: `Principal`

## Objetivo da classe

A classe `Principal` representa uma tela inicial simples da aplicacao.

Didaticamente, ela e muito importante porque permite discutir varios conceitos ao mesmo tempo sem aumentar demais a complexidade:

- quando usar `StatelessWidget` e quando usar `StatefulWidget`;
- como identificar objetos criados no codigo;
- como reconhecer o uso de membros `static`;
- como ler os parametros esperados por um widget;
- por que surgem os widgets estruturais, como `Column`.

## Lugar na progressao didatica

Este arquivo funciona muito bem como ponte entre configuracao e construcao de interface.

Na sequencia, ele pode ser lido antes de `MyHomePage`, porque introduz composicao de widgets sem ainda entrar em estado.

Assim, a progressao fica mais natural:

- `main.dart`: onde o app comeca;
- `MyApp`: como o app e configurado;
- `Principal`: como os widgets sao compostos e organizados;
- `MyHomePage`: como a interface passa a reagir a mudancas.

---

## Codigo atual

```dart
import 'package:flutter/material.dart';
import 'package:flutter_poo_widgets/configuracoes/rotas.dart';

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Principal'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, Rotas.formEstado);
            },
            child: const Text('Form Estado'),
          ),
        ],
      ),
    );
  }
}
```

---

## 1. Por que `Principal` e `StatelessWidget`

Neste arquivo, a classe `Principal` foi criada como `StatelessWidget`.

```dart
class Principal extends StatelessWidget {
```

### Pergunta importante para a turma

Ela poderia ser `StatefulWidget`?

A resposta mais interessante didaticamente e: **poderia**, mas nao ha necessidade neste contexto.

### O que vale discutir

Nao existe uma resposta do tipo:

- `StatelessWidget` e sempre melhor;
- `StatefulWidget` e sempre melhor.

O mais correto e pensar:

- qual e o objetivo da tela?
- existe algum dado que muda dentro dela?
- ela precisa reagir a alteracoes de estado internas?

### Conclusao didatica

A escolha entre `StatelessWidget` e `StatefulWidget` depende do objetivo e do contexto.

Neste caso, `Principal` funciona bem como `StatelessWidget` porque:

- nao guarda estado proprio;
- nao atualiza dados internos;
- apenas apresenta a estrutura da tela e aciona navegacao.

### Material oficial

- Flutter API: `StatelessWidget`  
  https://api.flutter.dev/flutter/widgets/StatelessWidget-class.html

- Flutter API: `StatefulWidget`  
  https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html

---

## 2. Retomada estrategica: quantos objetos foram criados aqui

Essa e uma excelente pergunta para fortalecer a base tecnica.

Muitos alunos observam apenas o mais evidente, por exemplo:

- `Principal()`;
- `Scaffold()`;
- `AppBar()`;
- `ElevatedButton()`.

Mas a leitura profissional do codigo precisa ser mais refinada.

### Exemplos de objetos criados neste trecho

- `Scaffold(...)`
- `AppBar(...)`
- `Text('Principal')`
- `Column(...)`
- `ElevatedButton(...)`
- `Text('Form Estado')`

### O que costuma gerar duvida

Trechos como:

```dart
backgroundColor: Colors.blue,
```

muitas vezes fazem o aluno pensar que ha ali uma criacao de objeto no mesmo sentido das chamadas de construtor.

Esse e um momento muito rico para discutir diferenca entre:

- acesso a um membro pronto;
- chamada de construtor;
- chamada de metodo;
- uso de valor constante ou estatico.

### Leitura tecnica importante

Quando vemos:

```dart
Colors.blue
```

nao estamos vendo um construtor sendo chamado naquele ponto do codigo.  
Estamos acessando um membro da classe `Colors`.

Essa diferenciacao e importante porque um profissional experiente precisa bater o olho e reconhecer:

- o que e classe;
- o que e objeto;
- o que e construtor;
- o que e metodo;
- o que e atributo;
- o que e membro `static`.

### O que muda em relacao aos arquivos anteriores

No `main` e em `MyApp`, a retomada de POO estava mais ligada a classe, construtor e parametros.

Aqui, a retomada fica mais refinada:

- nem tudo que aparece no codigo e criacao de objeto;
- e preciso distinguir instanciacao, acesso a membro, chamada de metodo e uso de constantes.

Essa e uma evolucao importante na leitura tecnica.

---

## 3. Retomando o conceito de `static`

O uso de `Colors.blue` e `Rotas.formEstado` ajuda muito a conectar teoria com pratica.

### Exemplo 1

```dart
Colors.blue
```

Aqui temos acesso a um membro da classe `Colors`.

### Exemplo 2

```dart
Rotas.formEstado
```

Aqui temos acesso a uma constante da classe `Rotas`.

### O que isso mostra

Esses acessos acontecem pelo nome da classe, sem precisar criar um objeto antes.

Isso e exatamente o tipo de situacao em que o conceito de `static` faz sentido na pratica.

### Leitura didatica

Podemos explicar assim:

- membros de instancia pertencem ao objeto;
- membros `static` pertencem a classe.

Por isso:

- para usar `MyApp()` precisamos criar objeto;
- para usar `Rotas.formEstado` nao precisamos instanciar `Rotas`.

### Por que isso e importante

Esse tipo de leitura melhora muito a autonomia do aluno.  
Ele deixa de apenas copiar codigo e passa a entender a natureza de cada elemento.

### Material oficial

- Dart: Classes  
  https://dart.dev/language/classes

---

## 4. O papel do `Scaffold`

Nesta tela, `Scaffold` organiza a estrutura principal:

```dart
return Scaffold(
  appBar: AppBar(...),
  body: Column(...),
);
```

### O que vale destacar

- `Scaffold` e um widget;
- ele e criado por construtor;
- recebe parametros nomeados;
- cada parametro espera um tipo de dado especifico.

### Leitura didatica

Aqui o aluno pode reforcar uma habilidade essencial:

"Se eu nao sei usar um widget, eu posso ler o que o construtor pede."

---

## 5. O ponto essencial: o `body` pede um widget

Esse e um dos pontos mais ricos deste arquivo.

No `Scaffold`, o parametro `body` recebe um widget.

Exemplo:

```dart
body: Column(
  children: [
    ElevatedButton(...),
  ],
),
```

### O que ensinar na pratica

Ao passar o mouse sobre `body` na IDE, normalmente aparece a dica do tipo esperado.  
Nesse caso, a ideia central e perceber:

- `body` recebe **um widget**.

Entao, se colocarmos um unico botao:

```dart
body: ElevatedButton(...)
```

isso funciona, porque um botao tambem e um widget.

### A provocacao didatica

Quando surge a necessidade de colocar **mais de um widget** no `body`, aparece a limitacao:

- o parametro continua recebendo apenas **um** widget.

Ou seja, nao da para simplesmente escrever dois widgets soltos no mesmo parametro.

Essa confusao e extremamente produtiva, porque ela leva naturalmente ao conceito de **widgets estruturais**.

### Retomada estrategica

Aqui a revisao de POO e aplicada de forma indireta.

Em vez de perguntar apenas "qual classe foi usada?", passamos a perguntar:

- qual tipo esse parametro aceita?
- quantos objetos esse parametro aceita?
- quando preciso de um widget que organize outros widgets?

Esse tipo de pergunta ajuda muito na independencia do aluno.

---

## 6. A entrada para widgets estruturais

Widgets estruturais sao widgets usados para organizar outros widgets.

Eles servem para resolver situacoes como:

- colocar varios widgets em sequencia;
- alinhar elementos;
- distribuir espaco;
- agrupar componentes.

No exemplo atual, usamos:

```dart
Column(
  children: [
    ElevatedButton(...),
  ],
)
```

### Leitura didatica

`Column` continua sendo um unico widget para o `body`.  
Mas, internamente, ele consegue organizar varios widgets por meio do parametro `children`.

Essa e a sacada principal:

- `body` quer um widget;
- `Column` e um widget;
- `Column` aceita varios widgets em `children`.

Assim, resolvemos o problema sem quebrar a regra do construtor.

---

## 7. Tabela de widgets estruturais principais

Essa tabela pode funcionar muito bem como material de apoio.

| Widget estrutural | Objetivo principal | Quando usar |
|---|---|---|
| `Column` | Organizar widgets na vertical | Quando os elementos devem ficar um abaixo do outro |
| `Row` | Organizar widgets na horizontal | Quando os elementos devem ficar lado a lado |
| `Stack` | Sobrepor widgets | Quando um widget precisa ficar por cima de outro |
| `Center` | Centralizar um widget | Quando o foco e alinhar um unico elemento ao centro |
| `Container` | Envolver e configurar um widget | Quando precisamos aplicar tamanho, espacamento, cor ou decoracao |
| `Padding` | Adicionar espacamento interno em volta do filho | Quando o widget precisa "respirar" na tela |
| `Expanded` | Ocupar o espaco disponivel dentro de `Row` ou `Column` | Quando queremos distribuir espaco dinamicamente |
| `ListView` | Exibir lista rolavel de widgets | Quando ha muitos itens ou necessidade de rolagem |

### Observacao importante

Nem todo widget estrutural existe apenas para "segurar outros widgets".  
Mas, didaticamente, esse grupo ajuda muito o aluno a entender como compor interfaces maiores.

### Material oficial

- Flutter UI overview  
  https://docs.flutter.dev/ui

- Widget catalog  
  https://docs.flutter.dev/ui/widgets

- Layout widgets  
  https://docs.flutter.dev/ui/widgets/layout

---

## 8. O uso do `children`

No caso de `Column`, aparece um parametro diferente:

```dart
children: [
  ElevatedButton(...),
]
```

### O que isso mostra

Enquanto `body` recebe um widget, `children` recebe uma colecao de widgets.

Isso ajuda muito a desenvolver leitura tecnica do codigo:

- nem todo parametro recebe o mesmo tipo;
- precisamos observar a assinatura;
- a IDE e a documentacao ajudam a descobrir isso.

### Ponto didatico

Essa diferenca entre `child` e `children` merece destaque:

- `child`: normalmente um unico widget;
- `children`: normalmente varios widgets.

Essa observacao melhora muito a independencia do aluno ao criar qualquer widget novo.

---

## 9. O `ElevatedButton` e a navegacao

O botao foi criado assim:

```dart
ElevatedButton(
  onPressed: () {
    Navigator.pushNamed(context, Rotas.formEstado);
  },
  child: const Text('Form Estado'),
)
```

### O que vale destacar

- `ElevatedButton` e um widget;
- `onPressed` recebe uma funcao;
- `child` recebe um widget;
- `Text` e o widget filho do botao.

### Sobre a navegacao

`Navigator.pushNamed(...)` mostra que a tela `Principal` nao precisa conhecer toda a implementacao da proxima tela.  
Ela apenas solicita a navegacao usando o nome da rota.

Isso tambem reforca organizacao e separacao de responsabilidade.

---

## 10. Como estudar esse arquivo na pratica

Este e um arquivo muito bom para treinar autonomia.

### Sugestoes praticas

- passar o mouse em `body` para ver o tipo esperado;
- passar o mouse em `child` e `children` para comparar;
- abrir a definicao de `Scaffold`, `Column` e `ElevatedButton`;
- observar quais parametros sao nomeados;
- identificar onde ha construtor, metodo, membro estatico e constante;
- testar trocar `Column` por `Row` e observar o resultado.

### Pergunta formativa interessante

Se eu quiser colocar dois botoes no `body`, qual widget estrutural posso usar e por que?

Essa pergunta obriga o aluno a pensar na regra do parametro e nao apenas no visual.

Outra pergunta muito boa para consolidar a base tecnica e:

"Neste trecho, onde ha criacao de objeto, onde ha acesso a membro `static` e onde ha chamada de metodo?".

---

## 11. O que vale destacar em sala

Sugestao dos pontos principais:

- `Principal` foi criada como `StatelessWidget` por causa do objetivo atual da tela.
- A escolha entre `StatelessWidget` e `StatefulWidget` depende do contexto.
- O aluno deve aprender a identificar quantos objetos estao sendo criados no codigo.
- `Colors.blue` e `Rotas.formEstado` ajudam a revisar o conceito de `static`.
- `body` recebe um widget, nao varios widgets soltos.
- A necessidade de colocar mais de um elemento leva naturalmente aos widgets estruturais.
- `Column` resolve isso porque e um widget que organiza outros widgets em `children`.
- Ler a assinatura do construtor na IDE e uma habilidade essencial para ganhar independencia.

---

## 12. Resumo final

`Principal` parece uma tela simples, mas e didaticamente muito forte.

Ela permite discutir:

- escolha entre `StatelessWidget` e `StatefulWidget`;
- leitura correta de objetos no codigo;
- diferenca entre construtor e acesso a membro `static`;
- independencia na leitura de parametros;
- necessidade e funcao dos widgets estruturais.

Esse arquivo ajuda o aluno a sair da ideia de "decorar widget" e ir para uma postura mais tecnica: ler assinatura, entender tipos, reconhecer estruturas e montar a interface com autonomia.
