# 📚 Guia Prático Flutter com Links Oficiais

> Domine os principais conceitos de desenvolvimento com Flutter através de exemplos práticos, boas práticas e links úteis para a documentação oficial.

---

## 📑 Índice
- [🍳 Cookbooks Oficiais](#-cookbooks-oficiais)
- [🚀 Primeiros Passos com Flutter](#-primeiros-passos-com-flutter)
- [📐 Layouts e Organização de Tela](#-layouts-e-organiza%C3%A7%C3%A3o-de-tela)
- [🧭 Navegação e Rotas](#-navega%C3%A7%C3%A3o-e-rotas)
- [🖐️ Gestos e Interações](#-gestos-e-intera%C3%A7%C3%B5es)
- [🖼️ Imagens](#-imagens)
- [📝 Formulários](#-formul%C3%A1rios)
- [📃 ListView e Grids](#-listview-e-grids)
- [📦 Containers e BoxModels](#-containers-e-boxmodels)
- [📏 Dicas de Layout, Restrições e Posicionamento](#-dicas-de-layout-restri%C3%A7%C3%B5es-e-posicionamento)

---

## 🍳 Cookbooks Oficiais
- [Cookbook Flutter](https://docs.flutter.dev/cookbook)

---

## 🚀 Primeiros Passos com Flutter
- [Codelab - Primeiro App Flutter](https://codelabs.developers.google.com/codelabs/flutter-codelab-first?hl=pt-br)
- [Codelab - Flutter para Web](https://docs.flutter.dev/get-started/codelab-web)

---

## 📐 Layouts e Organização de Tela
- [Widgets de Layout](https://docs.flutter.dev/ui/widgets/layout)
- [Guia de Layout](https://docs.flutter.dev/ui/layout)
- [Constraints no Flutter](https://docs.flutter.dev/ui/layout/constraints)

**Widgets úteis:**
- Column / Row
- Expanded
- Container, BoxDecoration
- ConstrainedBox, UnconstrainedBox, OverflowBox, LimitedBox, FittedBox

**Propriedades importantes:**
- `mainAxisAlignment`, `crossAxisAlignment`
- `MainAxisAlignment.spaceEvenly`, `MainAxisAlignment.end`
- `CrossAxisAlignment.center`, `CrossAxisAlignment.end`

**Boas práticas de layout responsivo:**
```dart
LayoutBuilder(
  builder: (context, constraints) {
    if (constraints.maxWidth > 600) {
      return GridView.count(crossAxisCount: 3);
    } else {
      return ListView();
    }
  },
)
```

---

## 🧭 Navegação e Rotas
- [Navegação Simples](https://docs.flutter.dev/cookbook/navigation/navigation-basics)
- [Rotas Nomeadas](https://docs.flutter.dev/cookbook/navigation/named-routes)
- [Rotas com Animação Hero](https://docs.flutter.dev/cookbook/navigation/hero-animations)
- [Tela com Retorno de Dados](https://docs.flutter.dev/cookbook/navigation/returning-data)
- [Rotas com Argumentos](https://docs.flutter.dev/cookbook/navigation/navigate-with-arguments)
- [Passando Dados Entre Widgets](https://docs.flutter.dev/cookbook/navigation/passing-data)

**Exemplo simples de navegação:**
```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => SegundaTela()),
);
```

---

## 🖐️ Gestos e Interações
- [Ripple Effects](https://docs.flutter.dev/cookbook/gestures/ripples)
- [Toques e Cliques](https://docs.flutter.dev/cookbook/gestures/handling-taps)
- [Dismissible](https://docs.flutter.dev/cookbook/gestures/dismissible)

---

## 🖼️ Imagens
- [Gerenciamento de Imagens](https://docs.flutter.dev/ui/assets/assets-and-images)
- [Imagens de Rede](https://docs.flutter.dev/cookbook/images/network-image)
- [Fade-in de Imagens](https://docs.flutter.dev/cookbook/images/fading-in-images)

---

## 📝 Formulários
- [Validação](https://docs.flutter.dev/cookbook/forms/validation)
- [Decoração dos Campos](https://docs.flutter.dev/cookbook/forms/text-input)
- [Gerenciamento de Foco](https://docs.flutter.dev/cookbook/forms/focus)
- [onChanged e Controle de Estado](https://docs.flutter.dev/cookbook/forms/text-field-changes)
- [Obter Valor do Campo](https://docs.flutter.dev/cookbook/forms/retrieve-input)

---

## 📃 ListView e Grids
- [Grid Lists](https://docs.flutter.dev/cookbook/lists/grid-lists)
- [ListView Horizontal](https://docs.flutter.dev/cookbook/lists/horizontal-list)
- [ListView Mista](https://docs.flutter.dev/cookbook/lists/mixed-list)
- [ListView Básica](https://docs.flutter.dev/cookbook/lists/basic-list)
- [ListView Longa com Scroll](https://docs.flutter.dev/cookbook/lists/long-lists)
- [Itens com Espaçamento](https://docs.flutter.dev/cookbook/lists/spaced-items)

**Exemplo básico com ListView.builder:**
```dart
ListView.builder(
  itemCount: itens.length,
  itemBuilder: (context, index) {
    return ListTile(title: Text(itens[index]));
  },
)
```

---

## 📦 Containers e BoxModels
### Funcionamento do `Container`
- Envolve o filho com `padding`
- Aplica restrições adicionais à extensão preenchida
- Circundado por margem

**Comportamento:**
- Sem filhos → tenta ser o maior possível
- Sem restrição → tenta ser o menor possível

**Importante:**
- Um `Container` sem `child` tenta preencher tudo que for permitido pelo pai.
- Um `Container` com `child` se ajusta ao tamanho do filho (com limites).

**Exemplo visual:**
```dart
Center(
  child: Container(
    color: Colors.blue,
    width: 100,
    height: 100,
    child: Center(
      child: Container(
        color: Colors.green,
        width: 50,
        height: 50,
      ),
    ),
  ),
)
```

---

## 📏 Dicas de Layout, Restrições e Posicionamento
- ⚠️ Sobreposição de widgets não pode acontecer!
- Conflitos comuns: quem manda? O pai ou o filho?
- Prestar atenção em 3 pontos:
  - Restrições
  - Tamanho desejado x disponível
  - Posicionamento

**Restrições do Pai:**
- Deve / Pode / Máximo & Mínimo
- Espaço disponível ≠ espaço que o widget quer ocupar
- O pai define a posição, o filho **não enxerga o todo**

**Problemas comuns:**
- Tamanho definido mas não renderizado
- Estouro de espaço (overflow)
- Posicionamento inesperado

**Dica de Ouro:**
Sempre estude como cada widget funciona no contexto de pai e filho. Leia a [documentação oficial](https://docs.flutter.dev/ui/layout/constraints) para entender os detalhes.

---

## 🎯 Conclusão
Dominar Flutter exige prática e leitura da documentação. Utilize os links acima para ir direto ao ponto e crie projetos próprios para aplicar o que aprendeu. Entenda como o sistema de layout funciona e dedique tempo ao estudo de restrições e comportamentos dos widgets. Isso vai te diferenciar no mercado!

Boa prática e bons códigos! 🚀

