# Dicas de Widget para Pagina Principal

## Tabela rapida

| Widget | Quando usar | O que fica legal |
|---|---|---|
| `Drawer` | Muitas opcoes de menu | Menu lateral organizado |
| `TabBar` | Categorias de funcionalidades | Abas claras e praticas |
| `BottomNavigationBar` | Poucas areas principais | Navegacao rapida |
| `Card` | Blocos de acesso ou resumo | Visual mais organizado |
| `ListTile` | Itens de menu | Titulo, subtitulo e icone |
| `GridView` | Varios atalhos | Menu em grade |
| `Wrap` | Cards ou chips quebrando linha | Layout mais flexivel |

## 1. `Drawer`

Bom para pagina principal com muitas opcoes.

Exemplo:

```dart
Scaffold(
  appBar: AppBar(title: const Text('Principal')),
  drawer: Drawer(
    child: ListView(
      children: const [
        DrawerHeader(child: Text('Menu')),
        ListTile(title: Text('Clientes')),
        ListTile(title: Text('Relatorios')),
      ],
    ),
  ),
)
```

## 2. `TabBar`

Muito legal quando a pagina principal organiza funcionalidades por categoria.

Exemplo:

```dart
DefaultTabController(
  length: 3,
  child: Scaffold(
    appBar: AppBar(
      title: const Text('Principal'),
      bottom: const TabBar(
        tabs: [
          Tab(text: 'Cadastros'),
          Tab(text: 'Relatorios'),
          Tab(text: 'Config'),
        ],
      ),
    ),
    body: const TabBarView(
      children: [
        Center(child: Text('Cadastros')),
        Center(child: Text('Relatorios')),
        Center(child: Text('Config')),
      ],
    ),
  ),
)
```

## 3. `Card`

Bom para criar blocos clicaveis com titulo, icone e descricao curta.

Exemplo:

```dart
Card(
  child: ListTile(
    leading: const Icon(Icons.people),
    title: const Text('Clientes'),
    subtitle: const Text('Cadastrar e listar clientes'),
    onTap: () {},
  ),
)
```

## 4. `GridView`

Bom quando a pagina principal funciona como painel de atalhos.

Exemplo:

```dart
GridView.count(
  crossAxisCount: 2,
  children: const [
    Card(child: Center(child: Text('Clientes'))),
    Card(child: Center(child: Text('Produtos'))),
  ],
)
```

## 5. `ListTile`

Otimo para menus simples e objetivos.

Exemplo:

```dart
ListTile(
  leading: const Icon(Icons.receipt),
  title: const Text('Relatorios'),
  trailing: const Icon(Icons.arrow_forward_ios),
  onTap: () {},
)
```

## 6. Combinacao boa

Uma combinacao muito segura para pagina principal e:

- `Scaffold`
- `AppBar`
- `Drawer` ou `TabBar`
- `Card` ou `ListTile` no corpo

## Resumo final

Pagina principal boa nao precisa ser complicada.

O mais importante e:

- deixar claro para onde o usuario vai;
- organizar as funcionalidades;
- usar widgets que facilitem a navegacao.
