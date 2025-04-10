## Fase 05 – Definição da Classe de Rotas

### 🎯 Objetivo
Indicar o perigo e a complicação de trabalhar com strings diretamente ao configurar rotas – como erros de digitação e dificuldade para lembrar os nomes. Apresentar a solução com o uso de uma **classe de rotas** com `static const`, permitindo o uso de **autocomplete** da IDE e maior segurança.

### 🧠 Conceitos trabalhados
- Parâmetros posicionais e nomeados
- Funções anônimas e arrow functions
- Sintaxe de POO
- Repetição, prática e observação de exemplos
- Criação de objetos aninhados e com referência anônima
- Organização do código e boas práticas com rotas nomeadas

### ✨ Classe de rotas:
```dart
class Rotas {
  static const home = '/';
  static const estado = '/estado';
  static const cidade = '/cidade';
  static const pessoa = '/pessoa';
}
```

### 🔁 aplicacao.dart
```dart
import 'package:flutter/material.dart';
import 'package:widget_intro/aula/widget_estado.dart';
import 'package:widget_intro/aula/widget_menu.dart';
import 'package:widget_intro/aula/widget_cidade.dart';
import 'package:widget_intro/aula/widget_pessoa.dart';
import 'package:widget_intro/configuracoes/rotas.dart';

class Aplicacao extends StatelessWidget{
  const Aplicacao({key}) : super(key: key);
  
  @override 
  Widget build(BuildContext context){
    return MaterialApp( 
      title: 'Aula Widget',
      theme: ThemeData( 
        primarySwatch: Colors.blue
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Rotas.home,
      routes: {
        Rotas.home: (context) => const WidgetMenu(),
        Rotas.estado: (context) => const WidgetEstado(),
        Rotas.cidade: (context) => const WidgetCidade(),
        Rotas.pessoa: (context) => const WidgetPessoa(),
      },
    );
  }
}
```

### 🧭 widget_menu.dart
```dart
import 'package:flutter/material.dart';
import 'package:widget_intro/configuracoes/rotas.dart';

class WidgetMenu extends StatelessWidget{
  const WidgetMenu({key}) : super(key: key);
  
  @override 
  Widget build(BuildContext context){
    return Column( 
      children: [
        ElevatedButton(  
          child: const Text('Estado'),
          onPressed: (){
            Navigator.of(context).pushNamed(Rotas.estado);
          },
        ),
        ElevatedButton(
          onPressed: (){
            Navigator.of(context).pushNamed(Rotas.cidade);
          }, 
          child: const Text('Cidade')
        ), 
        ElevatedButton(  
          onPressed: (){
            Navigator.of(context).pushNamed(Rotas.pessoa);
          }, 
          child: const Text('Pessoa')
        )
      ],
    );
  }
}
```

### 📍 widget_estado.dart
```dart
import 'package:flutter/material.dart';

class WidgetEstado extends StatelessWidget{
  const WidgetEstado({key}) : super(key: key);
  
  @override 
  Widget build(BuildContext context){
    return ElevatedButton(  
      child: const Text('Voltar'),
      onPressed: (){
        Navigator.pop(context);
      },
    );
  }
}
```

### 📍 widget_cidade.dart
```dart
import 'package:flutter/material.dart';

class WidgetCidade extends StatelessWidget{
  const WidgetCidade({key}) : super(key: key);
  
  @override 
  Widget build(BuildContext context){
    return ElevatedButton(  
      child: const Text('Voltar'),
      onPressed: (){
        Navigator.pop(context);
      },
    );
  }
}
```

### 📍 widget_pessoa.dart
```dart
import 'package:flutter/material.dart';

class WidgetPessoa extends StatelessWidget{
  const WidgetPessoa({key}) : super(key: key);
  
  @override 
  Widget build(BuildContext context){
    return ElevatedButton(  
      child: const Text('Voltar'),
      onPressed: (){
        Navigator.pop(context);
      },
    );
  }
}
```
