# Dicas de Telas de Filtros de Relatorios

## Tabela rapida

| Widget | Quando usar | O que ajuda |
|---|---|---|
| `TextFormField` | Nome, codigo, termo | Filtro textual |
| `DropdownButtonFormField` | Status, categoria, tipo | Filtro controlado |
| `CheckboxListTile` | Marcar opcoes | Filtros extras |
| `RadioListTile` | Escolha unica | Ordenacao ou tipo |
| `DatePicker` | Periodo | Relatorios por data |
| `Wrap` | Chips e filtros pequenos | Layout flexivel |
| `ElevatedButton` | Gerar relatorio | Acao principal |

## 1. O que uma tela de filtro costuma ter

- periodo
- status
- categoria
- tipo
- botoes como "Filtrar", "Limpar" e "Gerar"

## 2. Widgets uteis

### `TextFormField`

```dart
TextFormField(
  decoration: const InputDecoration(
    labelText: 'Nome ou codigo',
  ),
)
```

### `DropdownButtonFormField`

```dart
DropdownButtonFormField<String>(
  items: const [
    DropdownMenuItem(value: 'A', child: Text('Ativo')),
    DropdownMenuItem(value: 'I', child: Text('Inativo')),
  ],
  onChanged: (value) {},
)
```

### Botao de acao

```dart
ElevatedButton(
  onPressed: () {},
  child: const Text('Gerar relatorio'),
)
```

## 3. Estrutura boa

- `Form`
- `Column`
- `Padding`
- `SingleChildScrollView`

## Resumo final

Tela de filtro boa organiza criterios.

Ela nao mostra o resultado principal: ela prepara o caminho para gerar ou visualizar esse resultado.
