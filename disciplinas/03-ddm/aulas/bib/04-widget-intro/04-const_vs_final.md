# 🆚 Const vs Final no Flutter: Qual usar?

No Flutter (e Dart), tanto `const` quanto `final` indicam **imutabilidade**, mas com diferenças importantes. Escolher a palavra correta melhora o desempenho, a legibilidade e evita erros.

---

## 🧠 Diferenças principais

| Característica           | `const`                          | `final`                         |
|--------------------------|-----------------------------------|---------------------------------|
| Tempo de definição       | Compilação                      | Execução                      |
| Imutável?               | Sim                               | Sim                              |
| Pode usar variáveis?     | Não                               | Sim                              |
| Compartilhado na memória | Sim                               | Não                              |
| Uso ideal                | Widgets e valores fixos e reutilizáveis | Valores imutáveis em tempo de execução |

---

## ✅ Exemplo prático combinando os dois

```dart
void main() {
  final saudacao = gerarSaudacao();

  runApp(const MyApp());

  print(saudacao);
}

String gerarSaudacao() {
  final hora = DateTime.now().hour;
  if (hora < 12) {
    return 'Bom dia!';
  } else if (hora < 18) {
    return 'Boa tarde!';
  } else {
    return 'Boa noite!';
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Seja bem-vindo!'),
        ),
      ),
    );
  }
}
```

### O que foi usado e por quê?
- `const MyApp()` e `const Text(...)`: são widgets imutáveis e podem ser reutilizados.
- `final saudacao`: é calculada em tempo de execução, não pode ser `const`, mas não muda depois de definida.

---

## ⚠️ Dica de boas práticas

- Prefira `const` sempre que possível (principalmente para widgets)
- Use `final` para dados imutáveis definidos em tempo de execução

O Flutter e o Dart Analyzer costumam sugerir automaticamente o uso de `const` ou `final` quando aplicável.

---

## 📚 Referências recomendadas

- Flutter - Melhores práticas de desempenho: [flutter.dev/perf/rendering/best-practices](https://docs.flutter.dev/perf/rendering/best-practices#use-const-constructors)
- Dart - Tour da linguagem: [dart.dev/language](https://dart.dev/language/variables#final-and-const)
- Dart - Guia efetivo: [dart.dev/guides/language/effective-dart/usage](https://dart.dev/guides/language/effective-dart/usage#prefer-const-constructors)

---

> 💡 Resumo:
> - Use `const` quando souber o valor **antes da execução** e quiser **reutilização e desempenho**.
> - Use `final` quando o valor é **imutável, mas conhecido apenas em tempo de execução**.
> Ambos ajudam seu código a ser mais seguro, eficiente e fácil de manter.

