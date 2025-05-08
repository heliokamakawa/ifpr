# 🧱 Flutter - Widgets Estruturais de Layout

## 🎯 Objetivo
Explicar os principais **widgets estruturais** do Flutter, que são responsáveis por **organizar a disposição de elementos na interface**.

---

## 📐 O que são Widgets Estruturais?

Widgets estruturais definem a **forma e organização** dos elementos na tela. Eles controlam **posição, orientação e empilhamento** de outros widgets.

---

## 🔹 1. Column

Organiza widgets **verticalmente**, um embaixo do outro.

```dart
Column(
  children: [
    Text('Título'),
    Text('Subtítulo'),
    ElevatedButton(onPressed: () {}, child: Text('Ação')),
  ],
)
```

---

## 🔸 2. Row

Organiza widgets **horizontalmente**, um ao lado do outro.

```dart
Row(
  children: [
    Icon(Icons.star),
    Text('Favorito'),
  ],
)
```

---

## 🔹 3. Stack

Empilha widgets uns **sobre os outros**, como camadas.

```dart
Stack(
  children: [
    Container(color: Colors.blue, width: 100, height: 100),
    Positioned(
      top: 10,
      left: 10,
      child: Icon(Icons.star, color: Colors.white),
    ),
  ],
)
```

---

## 🔸 4. Expanded / Flexible

Controlam como os widgets ocupam **espaço disponível** dentro de `Row` ou `Column`.

```dart
Row(
  children: [
    Expanded(child: Container(color: Colors.red)),
    Expanded(child: Container(color: Colors.green)),
  ],
)
```

- `Expanded`: ocupa todo o espaço restante disponível.
- `Flexible`: permite ajustar o espaço conforme o conteúdo.

---

## 🔹 5. Wrap (Avançado)

Quebra widgets em **múltiplas linhas** ou colunas quando o espaço é insuficiente.

```dart
Wrap(
  spacing: 8,
  runSpacing: 4,
  children: [
    Chip(label: Text('Flutter')),
    Chip(label: Text('Dart')),
    Chip(label: Text('Widgets')),
  ],
)
```

---

## 🔸 6. Flow (Avançado)

Mais complexo, oferece controle **manual e performático** do layout.

> ⚠️ Pouco usado no dia a dia. Requer criação de uma `FlowDelegate`.

---

## 💡 Dica Geral

- Combine esses widgets para criar **layouts complexos**.
- Eles são a **base da árvore de widgets**.

---

## 🧪 Desafio

Crie um layout com:
- `Column` principal
- Dentro dela: uma `Row` com ícones
- Um `Expanded` com uma imagem
- Um botão centralizado ao final

---

## 📚 Próximo Tema

Widgets de espaçamento e alinhamento: `Padding`, `Align`, `SizedBox`...

---
