## 🛡️ Anotação `@protected` em Dart/Flutter

A anotação `@protected`, do pacote `meta`, é usada para indicar que **um membro (método ou variável) deve ser acessado apenas dentro da própria classe ou por suas subclasses**.

### 📌 Importante:
- Dart **não tem modificador `protected`** nativo como em outras linguagens (ex: Java ou C#).
- `@protected` **não impede** o acesso externo, mas **orienta** o uso correto e pode ser analisado por ferramentas como o **analisador estático**.
- Para ter membros realmente privados, use prefixo com `_`, como `_meuMetodo()`.

---

### ✅ Quando usar?

- Ao desenvolver **bibliotecas ou APIs** e querer sinalizar que um método **não deve ser chamado diretamente** por código externo.
- Para manter uma **arquitetura limpa**, onde certos métodos são internos à hierarquia de classes.

---

### 💡 Exemplo de uso:

```dart
import 'package:meta/meta.dart';

class Animal {
  @protected
  void emitirSom() {
    print('Som genérico');
  }
}

class Cachorro extends Animal {
  void latir() {
    emitirSom(); // ✅ Permitido: está em uma subclasse
  }
}

void main() {
  var animal = Animal();
  // animal.emitirSom(); // ⚠️ Warning: acesso desencorajado pelo @protected
}
```

⚠️ O método emitirSom está tecnicamente público, mas @protected indica que ele não deve ser acessado fora da hierarquia de classes.

📦 Dependência necessária
Para usar @protected, adicione o pacote meta no pubspec.yaml (geralmente já está incluso em projetos Flutter):

```yaml
dependencies:
  meta: ^1.9.1
```
ou

```dart
import 'package:meta/meta.dart';
```
🧠 Dica final:
Use @protected como uma ferramenta de design de código limpo, especialmente útil em projetos maiores ou pacotes reutilizáveis, onde você quer evitar o uso indevido de certos métodos ou propriedades.
