# 📱 Aula de Flutter - Fundamentos de Layout

## 🎯 Objetivo
Apresentar os **fundamentos de layout no Flutter**, capacitando o aluno a compreender e aplicar os princípios em **qualquer widget**, construindo interfaces organizadas, responsivas e reutilizáveis.

---

## 🧱 Fundamentos Essenciais

### 1. Tudo é Widget
Flutter é baseado em widgets. Isso inclui:
- Textos, imagens, botões
- Espaçamentos, margens, alinhamentos
- Estruturas de organização

> Mentalidade-chave: **"Tudo é widget"**  
> Interface = composição de widgets.

---

### 2. Tipos de Widgets de Layout

#### a) **Widgets estruturais**
Organizam outros widgets na tela:
- `Column`
- `Row`
- `Stack`
- `Expanded` / `Flexible`
- `Wrap` / `Flow` *(avançado)*

#### b) **Widgets de espaçamento e alinhamento**
- `Padding`
- `Align`
- `Center`
- `Spacer`
- `SizedBox`
- `Container` (com margem via `EdgeInsets`)

#### c) **Widgets contêineres e caixas**
- `Container`
- `Card`
- `BoxDecoration`
- `ConstrainedBox`
- `AspectRatio`

---

### 3. Composição Hierárquica

- Layout é construído como **árvore de widgets (widget tree)**.
- Cada widget pode ter **filhos** (children).
- Entender a relação **pai–filho** é fundamental.

---

### 4. Constraints, Sizes e Alignment

> 📐 **"Constraints go down. Sizes go up. Parent sets position."**

- O layout funciona com base em:
  - **Constraints (restrições)** do pai ao filho
  - **Tamanho** que o filho decide usar
  - **Posição** definida pelo pai

- Fluxo simplificado do layout:
  1. Constraints descem
  2. Tamanhos sobem
  3. Posicionamento é calculado
  4. Pintura e interação são aplicadas

---

### 5. Responsividade e Adaptação

- Layouts devem se adaptar a diferentes telas.
Ferramentas:
- `MediaQuery`
- `LayoutBuilder`
- `Flexible` / `Expanded`
- `FittedBox`, `FractionallySizedBox`

---

### 6. Boas Práticas

- Evite muitos filhos diretos em `Column`/`Row` → use `ListView` ou `ScrollView`.
- Quebre widgets grandes em **componentes reutilizáveis**.
- Utilize `const` para widgets imutáveis.
- Nomeie widgets personalizados com clareza.

---

## ✅ Requisitos

- Conhecimentos básicos de Dart.
- Ter o Flutter SDK instalado.
- Emulador ou dispositivo físico configurado.

---

## 🧪 Para Praticar (Sugestões)

- Layout de cartão de usuário com `Row`, `Image`, `Text`, `Column`.
- Tela de login com `Padding`, `TextField`, `Button`, `Align`.
- Tela de galeria com `Wrap` e `GridView`.

---


