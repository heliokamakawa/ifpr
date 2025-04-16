# 👨‍💻 Aula Prática – Lista de Pessoas com Dados Temporários

## 🎯 Objetivo

- Reforçar os conceitos de sintaxe e semântica de **Map** e **List de Map** em Dart.
- Criar uma lista temporária para simular dados antes de integrar com banco de dados.
- Estruturar um widget do tipo **StatelessWidget** com `Scaffold` e `AppBar`.

---

## 🧪 1. Definindo dados temporários

Futuramente, vamos integrar nosso projeto com banco de dados. Mas, por enquanto, vamos **criar uma estrutura temporária de dados**.

Para isso, utilizaremos o **`Map`** e uma **lista de mapas** (`List<Map>`), que vai simular o que depois será substituído por dados reais.

---

### 🧩 O que é um `Map`?

- Um `Map` em Dart é uma **estrutura do tipo chave-valor**, onde cada chave aponta para um valor.
- Ele permite **organizar dados de forma associativa**, facilitando o acesso por chave.

**Exemplo de sintaxe e uso:**

```dart
var pessoa = {  
  'nome': 'Ana',  
  'idade': 25,  
};


// Acessando um valor pela chave:**
print(pessoa['nome']); // Saída: Ana
```
---

### 📦 E o que é uma lista de mapas?

- É uma **coleção de `Map`s**, representando uma lista de dados organizados.
- Cada item da lista é um `Map` completo.
- Ideal para representar **várias pessoas, produtos, usuários, etc.**

**Exemplo de lista de mapas:**
```dart
var pessoas = [  
  {'nome': 'Ana', 'idade': 25},  
  {'nome': 'João', 'idade': 30},  
];

//Percorrendo a lista com `for` e acessando os valores:**
for (int i = 0; i < pessoas.length; i++) {  
  print('${pessoas[i]['nome']}');  
}
```
---

## 🧱 2. Definindo o widget Stateless

O `StatelessWidget` já foi explicado em aula anterior. Caso você não saiba como ele funciona, volte nas lições anteriores e estude com atenção — lembre-se: o atraso no conteúdo pode te prejudicar na prática e na avaliação.

Vamos criar uma estrutura básica de tela com `Scaffold` e `AppBar`.

**Código:**
```dart
import 'package:flutter/material.dart';

class WidgetPessoaLista extends StatelessWidget {

  WidgetPessoaLista({super.key});

  @override  
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(  
        title: const Text('Lista Pessoas'),  
      ),  
    );  
  }  
}
```

## 📋 3. Definindo os dados temporários

Agora vamos inserir uma lista de pessoas diretamente dentro do widget. Essa lista será usada para simular o conteúdo que virá de um banco de dados no futuro.

**Código com dados temporários:**

```dart
import 'package:flutter/material.dart';

class WidgetPessoaLista extends StatelessWidget {
  final pessoas = [  
    {  
      'nome': 'Joana',  
      'sobrenome': 'Prado',  
      'telefone': '(44) 99999-9999',  
      'url': 'https://cdn.pixabay.com/photo/2021/05/10/08/00/woman-6242836_1280.png'  
    },  
    {  
      'nome': 'Pedro',  
      'sobrenome': 'Silva',  
      'telefone': '(44) 99999-9999',  
      'url': 'https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_1280.png'  
    },  
    {  
      'nome': 'Maria',  
      'sobrenome': 'Joares',  
      'telefone': '(44) 99999-9999',  
      'url': 'https://cdn.pixabay.com/photo/2014/03/24/17/19/teacher-295387_1280.png'  
    },  
    {  
      'nome': 'Paulo',  
      'sobrenome': 'Rico',  
      'telefone': '(44) 99999-9999',  
      'url': 'https://cdn.pixabay.com/photo/2016/11/18/23/38/child-1837375_1280.png'  
    },  
  ];

  WidgetPessoaLista({super.key});

  @override  
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(  
        title: const Text('Lista Pessoas'),  
      ),  
    );  
  }  
}
```

## 🔎 O que está acontecendo aqui?
- Criamos uma lista chamada pessoas.  
- Cada item da lista é um mapa (map) com quatro chaves:'nome','sobrenome','telefone','url' (link para uma imagem representando a pessoa).  

➡️ Isso serve como dados temporários simulando um banco de dados, ideal para praticar antes de integrar com uma base real.  

---

## 🔗 Materiais complementares

- 📚 [Documentação oficial do Map - Dart](https://dart.dev/language/maps)  
- 📚 [Coleções em Dart: Listas e Mapas](https://dart.dev/guides/libraries/library-tour#maps)  
- 📚 [Flutter: StatelessWidget](https://api.flutter.dev/flutter/widgets/StatelessWidget-class.html)  
- 📚 [Widget básico Scaffold](https://api.flutter.dev/flutter/material/Scaffold-class.html)
