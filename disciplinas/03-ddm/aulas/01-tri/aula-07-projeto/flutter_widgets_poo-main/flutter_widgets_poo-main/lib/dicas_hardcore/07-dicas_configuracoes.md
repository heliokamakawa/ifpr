# Dicas de Telas de Configuracao

## Tabela rapida

| Widget | Quando usar | O que ajuda |
|---|---|---|
| `ListTile` | Opcao simples | Leitura direta |
| `SwitchListTile` | Ativar ou desativar | Config rapida |
| `CheckboxListTile` | Marcar preferencia | Controle simples |
| `RadioListTile` | Escolher um modo | Preferencia unica |
| `ExpansionTile` | Agrupar opcoes | Melhor organizacao |
| `Divider` | Separar blocos | Visual mais limpo |

## 1. O que costuma existir em configuracao

- notificacoes
- tema
- idioma
- privacidade
- conta
- permissoes

## 2. `SwitchListTile`

Muito bom para configuracoes do tipo sim/nao.

```dart
SwitchListTile(
  value: true,
  onChanged: (value) {},
  title: const Text('Receber notificacoes'),
)
```

## 3. `ExpansionTile`

Bom quando ha grupos de configuracao.

```dart
ExpansionTile(
  title: const Text('Conta'),
  children: const [
    ListTile(title: Text('Alterar senha')),
    ListTile(title: Text('Privacidade')),
  ],
)
```

## Resumo final

Tela de configuracao boa costuma ser simples, clara e organizada por grupos.

Nao precisa inventar muito: clareza vale mais.
