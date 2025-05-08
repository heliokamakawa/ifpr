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
    Text('Título'), // Primeiro item no topo
    Text('Subtítulo'), // Segundo item abaixo
    ElevatedButton( // Terceiro item abaixo
      onPressed: () {}, 
      child: Text('Ação')
    ),
  ],
)
```

▶️ Neste layout, os três widgets aparecem **empilhados verticalmente**: o título no topo, o subtítulo abaixo e o botão ao final.

---

## 🔸 2. Row

Organiza widgets **horizontalmente**, um ao lado do outro.

```dart
Row(
  children: [
    Icon(Icons.star), // Aparece à esquerda
    Text('Favorito'), // Aparece à direita do ícone
  ],
)
```

▶️ O ícone aparece à esquerda e o texto **"Favorito"** logo ao lado, **na mesma linha horizontal**.

---

## 🔹 3. Stack

Empilha widgets uns **sobre os outros**, como camadas.

```dart
Stack(
  children: [
    Container(
      color: Colors.blue, 
      width: 100, 
      height: 100
    ), // Fica como fundo
    Positioned(
      top: 10,
      left: 10,
      child: Icon(Icons.star, color: Colors.white), // Fica sobre o container azul
    ),
  ],
)
```

▶️ O `Container` azul serve de base e o ícone branco aparece **sobreposto no canto superior esquerdo**, com `top` e `left` de 10 pixels.

---

## 🔸 4. Expanded / Flexible

Controlam como os widgets ocupam **espaço disponível** dentro de `Row` ou `Column`.

```dart
Row(
  children: [
    Expanded( // Ocupa metade da largura
      child: Container(color: Colors.red),
    ),
    Expanded( // Ocupa a outra metade
      child: Container(color: Colors.green),
    ),
  ],
)
```

▶️ A tela é dividida em duas partes **iguais** horizontalmente: metade vermelha e metade verde.

---

## 🔹 5. Wrap (Avançado)

Quebra widgets em **múltiplas linhas** ou colunas quando o espaço é insuficiente.

```dart
Wrap(
  spacing: 8, // Espaço horizontal entre os chips
  runSpacing: 4, // Espaço vertical entre as linhas
  children: [
    Chip(label: Text('Flutter')),
    Chip(label: Text('Dart')),
    Chip(label: Text('Widgets')),
  ],
)
```

▶️ Os chips aparecem **lado a lado** até não caberem mais na linha, então **quebram para a próxima linha** com espaçamento definido.

---

## 🔸 6. Flow (Avançado)

Mais complexo, oferece controle **manual e performático** do layout.

> ⚠️ Pouco usado no dia a dia. Requer criação de uma `FlowDelegate`.

▶️ Usado em casos muito específicos, como animações customizadas ou interfaces altamente performáticas.

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
