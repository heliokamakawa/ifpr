# Projeto v.3 - Definindo ListTile

## Definindo ListTile de forma simples

Agora vamos explorar o **ListView**, um widget que permite criar listas dinâmicas de itens. No exemplo a seguir, vamos aprimorar a lista utilizando o widget **ListTile**, que é uma maneira prática e visualmente interessante de exibir informações em listas.

### Código Exemplo:

```dart
import 'package:flutter/material.dart';

class WidgetPessoaLista extends StatelessWidget{
  final pessoas = [
    {'nome': 'Joana', 'sobrenome': 'Prado', 'telefone': '(44) 99999-9999', 'url': 'https://cdn.pixabay.com/photo/2021/05/10/08/00/woman-6242836_1280.png'},
    {'nome': 'Pedro', 'sobrenome': 'Silva', 'telefone': '(44) 99999-9999', 'url': 'https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_1280.png'},
    {'nome': 'Maria', 'sobrenome': 'Joares', 'telefone': '(44) 99999-9999', 'url': 'https://cdn.pixabay.com/photo/2014/03/24/17/19/teacher-295387_1280.png'},
    {'nome': 'Paulo', 'sobrenome': 'Rico', 'telefone': '(44) 99999-9999', 'url': 'https://cdn.pixabay.com/photo/2016/11/18/23/38/child-1837375_1280.png'},
  ];

  WidgetPessoaLista({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold(  
      appBar: AppBar(  
        title: const Text('Lista Pessoas'),
      ),
      body: ListView.builder(
        itemCount: pessoas.length,
        itemBuilder: (context, indice) => ListTile( 
          leading: CircleAvatar( 
            backgroundImage: NetworkImage( 
              (pessoas[indice]['url'].toString())
            ),
          ),
          title: Text(pessoas[indice]['nome'].toString()),
          subtitle: Text(pessoas[indice]['telefone'].toString()),
        ),
      ),
    );
  }
}
```

## Explicação do Código:

### ListTile:

O `ListTile` é um widget que cria um item de lista com uma estrutura já definida, facilitando a exibição de dados como texto, imagens e ícones. Ele é utilizado com frequência em listas, especialmente quando queremos exibir uma linha de informações de forma simples e organizada.

#### Parâmetros do ListTile:

- **leading**: Esse parâmetro permite adicionar um widget à esquerda do item da lista. No exemplo, estamos utilizando um `CircleAvatar`, que exibe uma imagem circular. Esse parâmetro é opcional e pode ser substituído por qualquer outro widget.
  
- **title**: Esse parâmetro é obrigatório e é utilizado para exibir o conteúdo principal do item da lista. No caso, estamos exibindo o nome da pessoa.

- **subtitle**: Esse parâmetro é opcional e exibe informações secundárias abaixo do título. No exemplo, estamos utilizando para mostrar o telefone da pessoa.

### Dicas de Sintaxe e Identação:

- **Sintaxe em Objetos Aninhados**: Quando você estiver utilizando objetos dentro de outros objetos, como no caso do `NetworkImage` dentro do `CircleAvatar`, lembre-se de colocar a vírgula `,` ao final de cada parâmetro, exceto o último. A vírgula após o último parâmetro ajuda na legibilidade e facilita a adição de novos parâmetros no futuro.
  
- **Identação**: Sempre mantenha a identação correta para evitar se perder ao navegar em widgets aninhados. Isso ajuda não apenas na legibilidade, mas também a evitar erros. No exemplo, cada widget dentro do `ListView.builder` está bem identado, facilitando o entendimento de qual widget pertence a qual nível da hierarquia.

### Personalização e Estudo de Parâmetros:

Agora que vimos o básico do `ListTile`, é importante lembrar que a personalização dos parâmetros é essencial para criar interfaces únicas e funcionais. Em vez de apenas copiar os exemplos, procure entender o funcionamento de cada parâmetro do widget e como ele pode ser modificado para atender às necessidades do seu projeto.

- Tente ajustar o widget para mostrar mais informações ou mudar o layout, usando diferentes widgets no `leading`, `title` e `subtitle`.
  
- Experimente também alterar a disposição dos widgets, como posicionar o `CircleAvatar` à direita ou adicionar um `trailing`, que coloca um widget à direita do item.

Lembre-se: o aprendizado ativo é a chave para se tornar um desenvolvedor autônomo. Não tenha medo de experimentar e testar novas ideias!

### Olhando para a Próxima Versão:

No código atual, estamos exibindo informações de forma simples, mas em um aplicativo real, é necessário permitir ações nos itens da lista. Por exemplo, podemos querer adicionar funcionalidades como **visualizar detalhes**, **excluir** ou **alterar** os dados de um item. Na próxima versão do nosso projeto, vamos explorar como adicionar essas interações à nossa lista de maneira eficiente e organizada, criando uma experiência mais dinâmica para o usuário.

### Desafio de Identificação de Repetições e Componentização
**Desafio:** Identificando Repetições e Melhorando o Código
O objetivo deste desafio é que você identifique as repetições em seu código e as organize de maneira mais eficiente. No seu projeto, há algumas repetições que podem ser extraídas para widgets reutilizáveis, o que tornará o código mais legível, modular e fácil de manter.

A ideia não é apenas seguir um modelo fixo, mas também pensar sobre como você pode melhorar a estrutura do código por conta própria. Isso é uma ótima oportunidade para aplicar princípios de reutilização de código e organização de widgets.

### Links para materiais correlatos da documentação oficial:

- [Documentação do ListTile](https://api.flutter.dev/flutter/material/ListTile-class.html)
- [ListView - Como utilizar ListView.builder](https://api.flutter.dev/flutter/widgets/ListView-class.html)
- [Widgets no Flutter - Introdução e Conceitos](https://flutter.dev/docs/development/ui/widgets-intro)
