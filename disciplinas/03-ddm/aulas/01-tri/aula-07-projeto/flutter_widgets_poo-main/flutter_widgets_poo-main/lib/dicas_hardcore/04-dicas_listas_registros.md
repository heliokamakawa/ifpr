# Dicas de Listas de Registros

## Tabela rapida

| Widget | Quando usar | O que fica legal |
|---|---|---|
| `ListView` | Lista simples | Leitura direta |
| `ListView.builder` | Muitos itens | Melhor escalabilidade |
| `Card` | Cada item com destaque | Visual mais organizado |
| `ListTile` | Linha de registro | Titulo, subtitulo e icones |
| `Dismissible` | Excluir com gesto | Interacao interessante |
| `ExpansionTile` | Mostrar detalhes | Lista mais rica |
| `CircleAvatar` | Inicial ou imagem | Visual melhor |

## 1. `ListView` e `ListView.builder`

Para lista pequena, `ListView` pode bastar.  
Para lista maior, `ListView.builder` e melhor.

```dart
ListView.builder(
  itemCount: 10,
  itemBuilder: (context, index) {
    return ListTile(
      title: Text('Registro $index'),
    );
  },
)
```

## 2. `ListTile`

Widget muito util para listas de cadastro.

```dart
ListTile(
  leading: const CircleAvatar(child: Text('C')),
  title: const Text('Cliente A'),
  subtitle: const Text('Telefone: 99999-9999'),
  trailing: const Icon(Icons.arrow_forward_ios),
  onTap: () {},
)
```

## 3. `Card`

Bom quando voce quer dar mais destaque para cada item.

```dart
Card(
  child: ListTile(
    title: const Text('Produto'),
    subtitle: const Text('Preco: R$ 10,00'),
  ),
)
```

## 4. `ExpansionTile`

Bom para mostrar detalhes sem abrir outra tela logo de cara.

```dart
ExpansionTile(
  title: const Text('Pedido 001'),
  children: const [
    ListTile(title: Text('Cliente: Ana')),
    ListTile(title: Text('Valor: R$ 150,00')),
  ],
)
```

## Resumo final

Lista boa nao e apenas "mostrar registros".

Ela precisa ajudar o usuario a:

- identificar rapido;
- tocar no item certo;
- visualizar detalhes;
- navegar para edicao ou detalhes.
