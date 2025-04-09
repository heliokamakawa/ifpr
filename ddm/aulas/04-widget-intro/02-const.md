# 📌 Const no Flutter: Por que usar?

No Flutter (e em Dart), a palavra-chave `const` é usada para marcar objetos imutáveis que são conhecidos **em tempo de compilação**. Usar `const` corretamente ajuda a deixar o aplicativo mais **eficiente**, com **menos uso de memória** e **melhor desempenho na renderização** de widgets.

---

## 🚀 Benefícios do uso de `const`

- **Desempenho melhorado**: Objetos `const` são criados uma única vez e reutilizados.
- **Menos consumo de memória**: Evita criação repetida de widgets idênticos.
- **Menos rebuilds desnecessários**: O Flutter ignora widgets `const` se nada mudou.
- **Código mais previsível e seguro**: Imutabilidade ajuda a evitar bugs.

---

## 🧠 Exemplos simples com variáveis

### Exemplo 1: sem `const`

```dart
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo sem const',
      home: Center(
        child: Text('Bem-vindo!'),
      ),
    );
  }
}
```

### Exemplo 2: com `const`

```dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo com const',
      home: const Center(
        child: Text('Bem-vindo!'),
      ),
    );
  }
}
```

### Diferença:
- No Exemplo 1, o widget `Text` é criado **toda vez**.
- No Exemplo 2, o widget `Text` é criado **uma vez só**, em tempo de compilação.

---

## 🛠 Como saber quando usar `const`

Use `const` quando:
- O valor não muda nunca
- O widget é estático, sem depender de variáveis

**Não** use `const` quando:
- O valor é calculado em tempo de execução
- Depende de dados dinâmicos

---

## 📚 Referências oficiais

- Flutter - Performance Best Practices: [flutter.dev/perf/rendering/best-practices](https://docs.flutter.dev/perf/rendering/best-practices#use-const-constructors)
- Dart - Effective Dart: [dart.dev/guides/language/effective-dart/usage](https://dart.dev/guides/language/effective-dart/usage#prefer-const-constructors)
- Dart - Language Tour - Const: [dart.dev/language](https://dart.dev/language/overview#constants)

---

> 💡 Dica: o próprio Flutter mostra avisos na IDE para sugerir `const` quando possível. Aproveite!

