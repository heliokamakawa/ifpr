# 📌 Final no Flutter (e Dart): Quando e por que usar?

A palavra-chave `final` em Dart é usada para declarar **variáveis que não mudam depois de inicializadas**. Diferente do `const`, o `final` é resolvido **em tempo de execução**, o que permite mais flexibilidade.

---
## 🛡️ Por que usar final?

Segurança: evita reatribuições acidentais, tornando o código mais previsível.

Legibilidade: ao usar final, você comunica a outros devs que o valor não deve mudar.

Boas práticas: ajuda o Dart Analyzer a otimizar seu código.

Performance: embora não tão otimizado quanto const, ainda é melhor do que variáveis mutáveis.

✨ Dica: o uso de final é preferido em quase todas as declarações, exceto quando a variável realmente precisa mudar.
---

## 🧠 Diferença entre `final` e `const`

| Característica           | `const`                         | `final`                        |
|--------------------------|----------------------------------|--------------------------------|
| Tempo de definição       | Compilação                     | Execução                     |
| Imutável?               | Sim                              | Sim                             |
| Pode usar variáveis?     | Não                              | Sim                             |
| Pode ser dinâmico?       | Não                              | Sim                             |

---

## ✅ Exemplo de uso do `final`

```dart
void main() {
  final nome = 'João';
  final agora = DateTime.now();

  print('Nome: \$nome');
  print('Agora: \$agora');
}
```

### Explicação:
- `nome` é uma string fixa, mas definida em tempo de execução.
- `DateTime.now()` é um valor **desconhecido em tempo de compilação**, por isso não pode ser `const`, mas pode ser `final`.

---

## 🚫 O que **não** fazer

```dart
final idade;
idade = 20; // ERRO! Não pode ser reatribuído após definido
```

```dart
final nome = 'Ana';
nome = 'Bia'; // ERRO! Variáveis finais não podem mudar depois de atribuídas
```

---

## 🧩 Quando usar `final`

- Quando você precisa de um valor **imutável**, mas que só é conhecido em tempo de execução
- Para garantir que **não haverá reatribuição acidental** no código

---

## 📚 Referências oficiais

- Dart - Language Tour: `final` vs `const`: [dart.dev/language](https://dart.dev/language/variables#final-and-const)
- Effective Dart - Style Guide: [dart.dev/guides/language/effective-dart/usage](https://dart.dev/guides/language/effective-dart/usage#prefer-final-for-declarations)

---

> 💡 Dica: Sempre que souber que um valor não vai mudar depois de atribuir, prefira `final` para tornar seu código mais seguro e claro.

