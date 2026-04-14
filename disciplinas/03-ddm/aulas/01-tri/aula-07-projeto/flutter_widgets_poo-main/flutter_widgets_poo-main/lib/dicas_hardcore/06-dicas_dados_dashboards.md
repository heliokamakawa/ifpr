# Dicas de Telas de Dados e Dashboards

## Tabela rapida

| Widget | Quando usar | O que fica legal |
|---|---|---|
| `Card` | Indicadores | Blocos de resumo |
| `GridView` | Varios indicadores | Painel organizado |
| `ListTile` | Destaques numericos | Leitura simples |
| `LinearProgressIndicator` | Meta e progresso | Visual rapido |
| `CircularProgressIndicator` | Percentual ou carga | Indicador visual |
| `Wrap` | Cards em varias linhas | Flexibilidade |

## 1. Diferenca entre relatorio e dashboard

### Relatorio

Normalmente mostra informacoes mais detalhadas, filtradas ou listadas.

Exemplo:

- relatorio de vendas por periodo;
- relatorio de clientes ativos;
- relatorio de produtos sem estoque.

### Dashboard

Mostra visao rapida, resumida e visual.

Exemplo:

- total de vendas hoje;
- quantidade de clientes;
- total em estoque;
- percentual de metas.

### O que torna dashboard legal

- leitura rapida;
- comparacao facil;
- visual de painel;
- foco em resumo, nao em detalhamento.

## 2. Exemplo com `Card`

```dart
Card(
  child: ListTile(
    title: const Text('Vendas hoje'),
    subtitle: const Text('R$ 2.500,00'),
    leading: const Icon(Icons.attach_money),
  ),
)
```

## 3. Exemplo com `GridView`

```dart
GridView.count(
  crossAxisCount: 2,
  children: const [
    Card(child: Center(child: Text('120 clientes'))),
    Card(child: Center(child: Text('35 pedidos'))),
  ],
)
```

## Resumo final

Relatorio e mais detalhado.  
Dashboard e mais resumido, visual e rapido.

Quando o objetivo e bater o olho e entender a situacao, dashboard costuma fazer mais sentido.
