# Definindo Painel de Botões

## Desafio: Definindo Painel de Botões com Ações de Excluir e Alterar para Cada Item

No Flutter, é muito comum precisarmos adicionar ações a elementos dentro de uma lista, como botões de **excluir** e **alterar**. Esses botões permitem ao usuário interagir diretamente com os itens da lista. Neste desafio, vamos criar um painel de botões ao lado de cada item, para que o usuário possa, por exemplo, excluir ou alterar as informações de uma pessoa na lista.

### Explicação do Código

#### Visão Geral

Neste exemplo, criamos uma lista de pessoas com informações como **nome**, **sobrenome**, **telefone** e **foto**. A cada item dessa lista, exibimos os dados e adicionamos um painel de botões ao lado direito da tela, permitindo que o usuário **exclua** ou **altere** informações específicas. Vamos analisar cada parte do código para entender como funciona a parte dos botões e como você pode personalizar essa interação.

#### Código do Exemplo

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
          trailing: SizedBox(  
            width: 100,
            child: Row(  
              children: [
                IconButton(
                  onPressed: (){}, 
                  icon: const Icon(Icons.delete), 
                  color: Colors.red,
                ),
                IconButton(
                  onPressed: (){}, 
                  icon: const Icon(Icons.edit), 
                  color: Colors.orange,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```
## Explicação do Código

### 1. `ListTile` e seus parâmetros

- **`leading`:**  
  O parâmetro `leading` é utilizado para exibir um widget no início do item da lista. Neste caso, utilizamos um `CircleAvatar` para mostrar uma imagem circular com a foto de cada pessoa. O parâmetro `backgroundImage` recebe um `NetworkImage` que carrega a imagem da URL fornecida.

- **`title`:**  
  O parâmetro `title` define o texto principal do item. Aqui, estamos mostrando o nome da pessoa, que é acessado através do índice da lista.

- **`subtitle`:**  
  O `subtitle` exibe informações complementares ao título. Neste caso, estamos mostrando o telefone da pessoa.

- **`trailing`:**  
  No parâmetro `trailing`, definimos um painel de botões, onde colocamos dois botões (`IconButton`), um para **excluir** e outro para **editar**. A propriedade `SizedBox` é usada para definir a largura do painel de botões, garantindo que eles fiquem alinhados corretamente.

### 2. Detalhes dos `IconButton`

Cada `IconButton` recebe um ícone, um evento `onPressed` e uma cor. No caso da exclusão, a cor é **vermelha**, representando a ação de excluir, enquanto a cor do ícone de edição é **laranja**, representando a ação de editar.

---

### 💡 Dicas

- **Identação e Sintaxe:**  
  É importante manter a indentação correta em cada widget e parâmetro para garantir que o código fique legível. Além disso, lembre-se de usar `;` ao final de cada linha de código (exceto em objetos aninhados, como listas ou dicionários, onde usamos `,`).

- **Cores e Ações:**  
  Use cores que transmitam a intenção da ação. Por exemplo, o vermelho geralmente é associado a ações destrutivas, como excluir, e o laranja pode ser utilizado para ações de edição.

---

### 🧩 Personalização e Estudo de Parâmetros

O objetivo desta aula é praticar a **Programação Orientada a Objetos (POO)**. Então, ao invés de copiar o código diretamente, procure entender como cada parâmetro do `ListTile` e do `IconButton` funciona. Experimente alterar os parâmetros e personalize o comportamento de acordo com o que você precisa para seu projeto.

> Lembre-se: **autonomia** no desenvolvimento é um dos principais objetivos. Conhecer o funcionamento dos widgets e suas propriedades permitirá que você crie interfaces mais criativas e funcionais.

---

### 🔮 DESAFIO

Agora que criamos um painel de botões, é hora de pensar nas **ações** que esses botões devem executar. Para isso, vamos propor um desafio:

- Ao clicar no botão de **excluir**, podemos exibir um **alerta** ou uma **mensagem modal** pedindo confirmação para excluir o item.
- Ao clicar no botão de **editar**, o ideal seria navegar para uma **tela de formulário** onde o usuário possa editar os dados da pessoa.
- Ao clicar na **linha da lista**, você pode criar um novo widget que mostre todos os **detalhes da pessoa** de maneira mais completa.

---

### 📚 Links para materiais correlatos da documentação oficial

- [`ListTile`](https://api.flutter.dev/flutter/material/ListTile-class.html)
- [`IconButton`](https://api.flutter.dev/flutter/material/IconButton-class.html)
- [`Scaffold`](https://api.flutter.dev/flutter/material/Scaffold-class.html)
- [`AlertDialog`](https://api.flutter.dev/flutter/material/AlertDialog-class.html)
- [`Navigator`](https://api.flutter.dev/flutter/widgets/Navigator-class.html)

