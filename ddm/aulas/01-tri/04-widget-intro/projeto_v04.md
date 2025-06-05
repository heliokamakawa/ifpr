# 🧭 Fase 04 – Navegação com Rotas Nomeadas no Flutter

## 🎯 Objetivo pedagógico

- Apresentar o sistema de **rotas nomeadas** do Flutter.
- Implementar a **navegação entre telas** com `Navigator.pushNamed`.
- Implementar o **botão de voltar** usando `Navigator.pop`.
- Apresentar os conceitos:
  - `initialRoute`
  - `routes` como um **map**
- Refletir sobre a estrutura do `MaterialApp` e como ela centraliza a configuração das rotas.
- Reforçar:
  - Tipos de parâmetros: nomeados e posicionais;
  - Parâmetros do tipo função (uso de funções anônimas e arrow functions);
  - Composição e aninhamento de objetos (POO);
  - Repetição da estrutura como treino essencial.

---

## 🚀 Código Inicial

```dart
import 'package:flutter/material.dart';
import 'package:widget_intro/aula/widget_estado.dart';
import 'package:widget_intro/aula/widget_menu.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});
  
  @override 
  Widget build(BuildContext context) {
    return MaterialApp( 
      title: 'Aula Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const WidgetMenu(),
        '/estado': (context) => const WidgetEstado(),
      },
    );
  }
}
```
✳️ Aqui introduzimos o conceito de rotas nomeadas. O atributo routes recebe um map (String -> WidgetBuilder), e a rota inicial é definida por initialRoute.

🧩 Tela de Menu com Navegação
```dart
import 'package:flutter/material.dart';

class WidgetMenu extends StatelessWidget {
  const WidgetMenu({super.key});

  @override 
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          child: const Text('Estado'),
          onPressed: () {
            Navigator.of(context).pushNamed('/estado');
          },
        ),
        ElevatedButton(
          child: const Text('Cidade'),
          onPressed: () {
            // Implementar mais tarde
          },
        ),
        ElevatedButton(
          child: const Text('Pessoa'),
          onPressed: () {
            // Implementar mais tarde
          },
        ),
      ],
    );
  }
}

```
✅ Já é possível clicar em "Estado" e navegar para outra tela.

🔙 Tela de Estado com botão de voltar
```dart
import 'package:flutter/material.dart';

class WidgetEstado extends StatelessWidget {
  const WidgetEstado({super.key});

  @override 
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('voltar'),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}

```
✅ Tela simples com botão "voltar" usando Navigator.pop(context), que desfaz a navegação atual e retorna à tela anterior.

🧠 Atividade Proposta
Agora que você já entendeu como as rotas funcionam:

Implemente as rotas /cidade e /pessoa.

Crie as telas WidgetCidade e WidgetPessoa.

Cada tela deve conter apenas um botão de voltar.

Adicione as novas rotas ao MaterialApp.


✅ Solução esperada
```dart
import 'package:flutter/material.dart';
import 'package:widget_intro/aula/widget_estado.dart';
import 'package:widget_intro/aula/widget_cidade.dart';
import 'package:widget_intro/aula/widget_pessoa.dart';
import 'package:widget_intro/aula/widget_menu.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});
  
  @override 
  Widget build(BuildContext context) {
    return MaterialApp( 
      title: 'Aula Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const WidgetMenu(),
        '/estado': (context) => const WidgetEstado(),
        '/cidade': (context) => const WidgetCidade(),
        '/pessoa': (context) => const WidgetPessoa(),
      },
    );
  }
}

import 'package:flutter/material.dart';

class WidgetMenu extends StatelessWidget {
  const WidgetMenu({super.key});

  @override 
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          child: const Text('Estado'),
          onPressed: () {
            Navigator.of(context).pushNamed('/estado');
          },
        ),
        ElevatedButton(
          child: const Text('Cidade'),
          onPressed: () {
            Navigator.of(context).pushNamed('/cidade');
          },
        ),
        ElevatedButton(
          child: const Text('Pessoa'),
          onPressed: () {
            Navigator.of(context).pushNamed('/pessoa');
          },
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class WidgetCidade extends StatelessWidget {
  const WidgetCidade({super.key});

  @override 
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('voltar'),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}

import 'package:flutter/material.dart';

class WidgetPessoa extends StatelessWidget {
  const WidgetPessoa({super.key});

  @override 
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('voltar'),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}


```

🧠 Dicas para reflexão e reforço
O Flutter sempre espera um único widget como retorno do build. Use Column, Center, Scaffold, etc.

O MaterialApp configura toda a navegação e aparência do app.

A navegação em Flutter é baseada em pilha. Ao usar push, você empilha uma nova tela. Com pop, você remove a atual e volta para a anterior.

Repetição constrói confiança e clareza. Copiar é aprender por osmose.

Tente sempre prever o tipo de cada parâmetro, entender se é função, widget, ou objeto simples.

Funções anônimas (() {} ou () =>) são fundamentais para tratar eventos como cliques de botão.

🔁 Pratique, repita, entenda
O segredo está na prática contínua.
Escreva os códigos com calma, sem copiar direto.
Experimente mudar os nomes das rotas, adicionar mais botões, trocar os textos.
Quanto mais você mexer no código, mais ele fará sentido.
