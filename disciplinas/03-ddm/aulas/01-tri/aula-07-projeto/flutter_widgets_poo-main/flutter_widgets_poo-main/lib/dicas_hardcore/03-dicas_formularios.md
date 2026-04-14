# Dicas de Formularios

## Tabela rapida

| Widget | Quando usar | O que ajuda |
|---|---|---|
| `Form` | Agrupar campos | Organizacao do cadastro |
| `TextFormField` | Entrada de texto | Validacao e leitura |
| `DropdownButtonFormField` | Escolha unica | Lista controlada |
| `CheckboxListTile` | Marcacao sim/nao | Opcao simples |
| `RadioListTile` | Escolha unica entre opcoes | Decisao clara |
| `SwitchListTile` | Ligado/desligado | Configuracoes |
| `DatePicker` | Data | Cadastro mais real |
| `ElevatedButton` | Enviar | Acao principal |
| `Column` | Empilhar campos | Estrutura basica |
| `SingleChildScrollView` | Formularios grandes | Evita corte na tela |

## 1. `Form`

Serve para organizar o conjunto de campos.

```dart
Form(
  child: Column(
    children: [],
  ),
)
```

## 2. `TextFormField`

Campo mais comum em cadastro.

```dart
TextFormField(
  decoration: const InputDecoration(
    labelText: 'Nome',
    hintText: 'Digite o nome',
  ),
)
```

## 3. `DropdownButtonFormField`

Bom para selecionar estado, categoria, tipo, status.

```dart
DropdownButtonFormField<String>(
  items: const [
    DropdownMenuItem(value: 'A', child: Text('Ativo')),
    DropdownMenuItem(value: 'I', child: Text('Inativo')),
  ],
  onChanged: (value) {},
)
```

## 4. `CheckboxListTile`, `RadioListTile` e `SwitchListTile`

Todos sao bons para formularios, cada um com um objetivo:

- `CheckboxListTile`: pode marcar ou nao;
- `RadioListTile`: escolhe uma entre varias;
- `SwitchListTile`: ligado ou desligado.

## 5. Widgets estruturais uteis

- `Column`: empilhar campos
- `Row`: colocar campos lado a lado
- `Padding`: dar respiro
- `Expanded`: dividir espaco
- `SingleChildScrollView`: evitar overflow

## 6. Exemplo simples

```dart
SingleChildScrollView(
  child: Padding(
    padding: const EdgeInsets.all(16),
    child: Form(
      child: Column(
        children: [
          TextFormField(),
          SizedBox(height: 12),
          TextFormField(),
          SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Salvar'),
          ),
        ],
      ),
    ),
  ),
)
```

## Resumo final

Formulario bom normalmente mistura:

- campos;
- widgets de escolha;
- widgets estruturais;
- botoes de acao.

O segredo e organizar bem, nao apenas colocar campos soltos.
