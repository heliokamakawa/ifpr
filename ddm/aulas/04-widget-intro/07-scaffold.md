# 📦 Containers no Flutter – Introdução ao Scaffold

No Flutter, o primeiro widget dentro do método `build()` geralmente é um **widget estrutural**, que define a organização visual da tela. Esses widgets são chamados informalmente de "**containers estruturais**", pois eles organizam outros widgets.

---

## 🔹 O que é um "container estrutural"?

No Flutter, existem widgets que são usados **para posicionar, alinhar e estruturar** outros widgets. Alguns exemplos comuns:

- `Scaffold` → estrutura padrão de uma tela
- `Container` → para decoração, margem, padding
- `Center`, `Padding`, `Column`, `Row` → para layout

Eles **não desenham conteúdo visual diretamente**, mas ajudam a **organizar a hierarquia dos widgets**.

---

## 🧱 Scaffold – A base para sua tela

O `Scaffold` é um widget fundamental no Flutter. Ele oferece uma **estrutura visual padrão de uma aplicação moderna**, incluindo:

- `AppBar` (barra superior)
- `Drawer` (menu lateral)
- `FloatingActionButton` (botão flutuante)
- `BottomNavigationBar` (barra inferior)
- `Body` (conteúdo principal da tela)

### ✅ Exemplo básico

```dart
import 'package:flutter/material.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Minha Tela')),
      body: const Center(child: Text('Olá, Flutter!')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

```

### 🔍 Por que começar com Scaffold?
- Organiza melhor a tela desde o início.   
- Facilita a adição de funcionalidades modernas (menus, FAB, navegação).   
- Permite manter o layout consistente em várias telas.   


📚 Materiais oficiais recomendados
Documentação do Scaffold (Flutter Docs):
🔗 https://api.flutter.dev/flutter/material/Scaffold-class.html

Guia de layout Flutter (entender estrutura e containers):
🔗 https://docs.flutter.dev/ui/layout

Widgets estruturais (MaterialApp, Scaffold, etc):
🔗 https://docs.flutter.dev/ui/widgets/material

Playground interativo (Flutter Widget Catalog):
🔗 https://flutter.dev/widgets
