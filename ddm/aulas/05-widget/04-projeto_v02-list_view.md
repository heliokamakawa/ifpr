# Definindo ListView e POO no Dart

## Criação de Widgets com Criatividade e Personalidade

A aula de hoje também serve para **introduzir novos widgets** e técnicas essenciais, como o uso de **ListView**. Porém, o objetivo principal é muito mais do que apenas entender como utilizá-los; trata-se de **aprender a explorar e personalizar widgets de acordo com suas necessidades e criatividade**. A ideia é que você **desenvolva autonomia** para criar seus próprios componentes, **analisar cada parâmetro de forma crítica** e entender como eles influenciam o comportamento do widget.

Não estamos aqui para que você apenas **copie exemplos**. O foco é que você absorva o processo de **criação**, **personalização** e **soluções inteligentes**, para que, no futuro, consiga **adaptar qualquer widget à sua visão** de projeto, sempre com personalidade e originalidade. A verdadeira habilidade está em saber como **transformar o básico em algo único**, desenvolvendo interfaces que representem sua própria identidade e visão criativa para os aplicativos. 

O professor estará aqui para orientar o processo, mas o mais importante é que você desenvolva uma **mentalidade de criador**, que sabe não apenas usar a ferramenta, mas também como explorá-la ao máximo para criar algo inovador e com a sua cara.

O ponto chave é que **sabendo POO**, você será capaz de criar qualquer widget ou personalizá-los, pois todos os widgets no Flutter são orientados a objetos. Isso abre um leque imenso de possibilidades e liberdade criativa para o seu projeto.

**Dicas de Autonomia:**
- Quando for trabalhar com widgets, **analise os parâmetros** e seus nomes - eles são intuitivos e de fácil entendimento.
- Se precisar pesquisar ou olhar exemplos, não copie diretamente. **Crie uma solução personalizada**. 
- Envolva o professor no processo, para que ele entenda seu nível e possa acompanhar sua evolução e consolidar **O Diário de Aula**.

## Definindo ListView de forma simples

Agora vamos explorar o **ListView**, um widget que permite criar listas dinâmicas de itens. 

### Código Exemplo:

```dart
import 'package:flutter/material.dart';

class WidgetPessoaLista extends StatelessWidget {
  final pessoas = [
    {'nome': 'Joana', 'sobrenome': 'Prado', 'telefone': '(44) 99999-9999', 'url': 'https://cdn.pixabay.com/photo/2021/05/10/08/00/woman-6242836_1280.png'},
    {'nome': 'Pedro', 'sobrenome': 'Silva', 'telefone': '(44) 99999-9999', 'url': 'https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_1280.png'},
    {'nome': 'Maria', 'sobrenome': 'Joares', 'telefone': '(44) 99999-9999', 'url': 'https://cdn.pixabay.com/photo/2014/03/24/17/19/teacher-295387_1280.png'},
    {'nome': 'Paulo', 'sobrenome': 'Rico', 'telefone': '(44) 99999-9999', 'url': 'https://cdn.pixabay.com/photo/2016/11/18/23/38/child-1837375_1280.png'},
  ];

  WidgetPessoaLista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista Pessoas'),
      ),
      body: ListView.builder(
        itemCount: pessoas.length,
        itemBuilder: (context, index) => Text(pessoas[index]['nome'].toString()),
      ),
    );
  }
}
```
## Explicação do Código:


### ListView.builder:

O `ListView.builder` é utilizado para criar uma lista de itens de forma eficiente, pois ele cria os itens sob demanda, ou seja, somente quando necessário.

Ele é especialmente útil quando temos uma quantidade grande de itens, pois evita a criação de todos os itens de uma vez, o que poderia ser ineficiente.

### Parâmetros do ListView.builder:

- **itemCount**: Esse parâmetro define o número de itens na lista. Aqui, estamos utilizando o comprimento da lista `pessoas`, então ele vai iterar sobre cada pessoa na lista.

- **itemBuilder**: Esse parâmetro é uma função que cria cada item da lista. O `context` é o contexto de onde o widget está sendo construído, e o `index` representa o índice do item atual na lista. No exemplo, o `itemBuilder` está criando um widget `Text`, que mostra o nome da pessoa.

### Sintaxe do ListView.builder:

- O **itemCount** é obrigatório, porque o `ListView.builder` precisa saber quantos itens ele deve construir.

- O **itemBuilder** é a função onde você define como cada item será construído.

### Personalização e Estudo de Parâmetros:

Como o foco da aula é praticar a **POO**, ao invés de usar a implementação direta e copiada de exemplos, tente entender como os parâmetros de cada widget funcionam. Veja como o `itemCount` e o `itemBuilder` são usados no `ListView.builder`, e tente personalizar a implementação para que ela atenda ao seu projeto. Lembre-se de que os widgets no Flutter são **orientados a objetos**, então entender bem esses parâmetros e suas funções vai ajudar você a criar soluções mais robustas e criativas.

### Olhando para a Próxima Versão:

No código atual, estamos utilizando o widget `Text` de forma simples para exibir os nomes das pessoas. Embora essa abordagem seja ótima para a compreensão inicial e ajude a manter a simplicidade, ela acaba sendo limitada. Na próxima versão do projeto, vamos melhorar a apresentação utilizando outro widget, permitindo mais flexibilidade e uma interface mais sofisticada. Isso reforça a ideia de que, à medida que você vai aprendendo e se aprofundando em **POO**, a personalização e a sofisticação dos widgets que você cria também vão evoluir.


### Links para materiais correlatos da documentação oficial:

- [Documentação do ListView](https://api.flutter.dev/flutter/widgets/ListView-class.html)
- [Programação Orientada a Objetos no Dart](https://dart.dev/guides/language/language-tour)
- [Widget Stateless e Stateful](https://flutter.dev/docs/development/ui/widgets-intro)

