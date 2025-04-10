""Fase 01  
Criação do projeto Flutter  
→ flutter create widget_intro  

Apresentar o projeto criado e os arquivos que o compõem. Identificar onde começa a execução, o que é classe e o que é função.  
Ressaltar que o aluno deve identificar esse padrão e começar a se familiarizar com a estrutura.  

---

Fase 02  
Limpar o projeto  
→ main.dart  

Apagar tudo dentro de `main.dart` e reescrever o mínimo necessário para colocar o app na tela com um texto.  
Explicar que sempre é possível começar pelo básico e ir incrementando conforme o necessário.  

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const Aplicativo());
}

class Aplicativo extends StatelessWidget {
  const Aplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Text('Olá mundo'),
    );
  }
}
```

---

Fase 03  
Widget como classe  
→ widget_menu.dart  

Criar widget separado em outro arquivo.  
Mostrar como criar um widget a partir de uma classe.  
Explicar o uso do `StatelessWidget`.  
Nomear o widget como `WidgetMenu`.  
Importar no `main.dart` e usar como `home`.  

```dart
import 'package:flutter/material.dart';
import 'package:widget_intro/aula/widget_menu.dart';

void main() {
  runApp(const Aplicacao());
}

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WidgetMenu(),
    );
  }
}
```

---

Fase 04  
Organizar pastas e arquivos  
→ estrutura  

Criar pastas para organizar melhor o projeto.  
Separar os widgets em uma pasta `aula/`, arquivos de configuração em `configuracoes/`, etc.  

Aproveitar para ensinar boas práticas de organização desde o início.  
Orientar a criar um projeto limpo, coeso, com nomes claros e arquivos pequenos.  
Essa estrutura ajuda na manutenção e no crescimento do projeto.  

---

Fase 05  
Definição da classe de rotas  
→ Rotas  

Indicar o perigo e a complicação de trabalhar com strings - erros de digitação e dificuldade de lembrar.  
Mostrar a solução com o uso de `static const` na classe `Rotas`.  
Com essa classe definida, podemos utilizar o autocomplete da IDE e evitar erros.

Aproveitar para reforçar:
- Tipos dos parâmetros
- Diferença entre parâmetros posicionais e nomeados
- Criação de objetos mesmo sem conhecer todas as bibliotecas
- Funções anônimas, arrow functions
- Indentação
- Repetição e prática
- Criação de objetos aninhados e com referências anônimas

```dart
class Rotas {
  static const home = '/';
  static const estado = '/estado';
  static const cidade = '/cidade';
  static const pessoa = '/pessoa';
}
```

```dart
import 'package:flutter/material.dart';
import 'package:widget_intro/aula/widget_estado.dart';
import 'package:widget_intro/aula/widget_menu.dart';
import 'package:widget_intro/configuracoes/rotas.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aula Widget',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      initialRoute: Rotas.home,
      routes: {
        Rotas.home: (context) => const WidgetMenu(),
        Rotas.estado: (context) => const WidgetEstado(),
      },
    );
  }
}
```

Pedir aos alunos para implementar o restante.  
Mostrar a solução depois.

---

Fase 06  
Componentização dos botões do menu em função  
→ widget_menu.dart  

Componentizar por meio de método na própria classe.  
Explicar como evitar a repetição.  
Tudo que se repete vai para dentro da função, o que muda vira parâmetro.

Benefícios:
- Reduz linhas de código
- Facilita a leitura

Limitação:
- O reaproveitamento é local à classe.

Reforçar:
- Tipos de parâmetros
- Parâmetros nomeados
- Criação de objetos e funções anônimas
- Prática e repetição são essenciais

```dart
import 'package:flutter/material.dart';

class WidgetMenu extends StatelessWidget {
  const WidgetMenu({super.key});

  Widget criarBotao({
    required BuildContext context,
    required String rotulo,
    required String rota,
  }) {
    return ElevatedButton(
      child: Text(rotulo),
      onPressed: () {
        Navigator.of(context).pushNamed(rota);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        criarBotao(context: context, rota: '/estado', rotulo: 'Estado'),
        criarBotao(context: context, rota: '/cidade', rotulo: 'Cidade'),
        criarBotao(context: context, rota: '/pessoa', rotulo: 'Pessoa'),
      ],
    );
  }
}
```

---

Fase 07  
Componentização dos botões do menu em classe  

Componentizar por meio de **classe** para reaproveitamento mais amplo.

Diferença da função:  
- Agora o reaproveitamento pode ocorrer em outras partes do projeto.  

Parâmetros que mudam são definidos no construtor como atributos.

```dart
import 'package:flutter/material.dart';

class WidgetBotaoNavegar extends StatelessWidget {
  final String rotulo;
  final String rota;
  final BuildContext context;

  const WidgetBotaoNavegar({
    super.key,
    required this.rota,
    required this.rotulo,
    required this.context,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(rotulo),
      onPressed: () {
        Navigator.of(context).pushNamed(rota);
      },
    );
  }
}
```

---

Fase 08  
Definição do cadastro de Estado com `TextFormField`

Apresentar `Form` e `TextFormField` com os parâmetros utilizados.  
Componentizar os campos em classes para evitar repetição.  
Explicar diferença entre método e classe.  
Reforçar práticas de POO e a importância da repetição e prática.

```dart
import 'package:flutter/material.dart';

class WidgetEstado extends StatelessWidget {
  const WidgetEstado({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro de Estado')),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Nome',
                hintText: 'Insira o nome do estado',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Sigla',
                hintText: 'Insira a sigla do estado - 2 letras',
              ),
            ),
            ElevatedButton(
              child: const Text('Salvar'),
              onPressed: () {
                print('salvar estado');
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
```

---

Fase 09  
Definição do cadastro de Cidade com `DropdownButtonFormField`  

Apresentar `DropdownButtonFormField` e `DropdownMenuItem`.  
Explicar os parâmetros.  
Reforçar os conceitos de componentização por classe.  
Enfatizar prática e repetição como forma de aprendizado.

```dart
import 'package:flutter/material.dart';

class WidgetCidade extends StatelessWidget {
  const WidgetCidade({super.key});

  @override
  Widget build(BuildContext context) {
    String? valorSelecionado;

    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro de Estado')),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Nome',
                hintText: 'Insira o nome da cidade',
              ),
            ),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: 'Cidade'),
              items: const [
                DropdownMenuItem(value: '1', child: Text('PARANÁ')),
                DropdownMenuItem(value: '2', child: Text('SÃO PAULO')),
                DropdownMenuItem(value: '3', child: Text('SANTA CATARINA')),
              ],
              onChanged: (value) {
                valorSelecionado = value;
                print(value);
              },
            ),
            ElevatedButton(
              child: const Text('Salvar'),
              onPressed: () {
                print('salvar estado');
              },
            ),
          ],
        ),
      ),
    );
  }
}
```

---
""
