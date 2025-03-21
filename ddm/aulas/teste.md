# Desenvolvimento de Dispositivos Móveis - Flutter e Dart

## Tópico 1: Primeiros Passos com Dart

### Objetivos:
- Configurar o ambiente para execução de código Dart no terminal;
- Imprimir mensagens no console;
- Adicionar bibliotecas;
- Compreender a sintaxe inicial e fluxo de execução de um programa.

### Configuração Inicial:
- Instalar o plugin **Code Runner** no VS Code.
- Configurar o plugin para rodar os códigos no terminal (**Run in Terminal**).

### Código Inicial:
```dart
void main() {
  print("Hello, World!");
}
```

### Estudo de Caso (Progresso Inicial):
```dart
void main() {
  String nome = "João";
  print("Nome: " + nome);
}
```

### Desafio:
- Modifique o código para armazenar um sobrenome e imprimir "Nome Completo: João Silva".

#### Solução:
```dart
void main() {
  String nome = "João";
  String sobrenome = "Silva";
  print("Nome Completo: " + nome + " " + sobrenome);
}
```

### Referências:
- [Dart: Introdução](https://dart.dev/guides) → "Get Started"

---

## Tópico 2: Entrada de Dados

### Objetivos:
- Utilizar `readlineSync` para capturar entrada do usuário;
- Armazenar valores em variáveis;
- Concatenar e interpolar strings.

### Código:
```dart
import 'dart:io';

void main() {
  print("Digite seu nome:");
  String? nome = stdin.readLineSync();
  print("Olá, " + nome!);
  print("Olá, \$nome");
}
```

### Estudo de Caso (Evolução):
```dart
import 'dart:io';

void main() {
  print("Digite seu nome:");
  String? nome = stdin.readLineSync();

  print("Digite seu sobrenome:");
  String? sobrenome = stdin.readLineSync();

  print("Nome Completo: \$nome \$sobrenome");
}
```

### Desafio:
- Solicite o ano de nascimento do usuário e imprima a idade dele em 2025.

#### Solução:
```dart
import 'dart:io';

void main() {
  print("Digite seu ano de nascimento:");
  int ano = int.parse(stdin.readLineSync()!);
  int idade = 2025 - ano;
  print("Você terá \$idade anos em 2025.");
}
```

### Referências:
- [Dart: Entrada e Saída](https://dart.dev/tutorials/server/get-started) → "Reading input"

---

## Tópico 3: Declaração de Variáveis

### Objetivos:
- Declarar variáveis com tipos nomeados;
- Compreender a diferença entre variáveis nomeadas e inferidas.

### Código:
```dart
void main() {
  String nome = "João";
  int anoNascimento = 1990;
  double peso = 70.5;

  print("Nome: \$nome, Ano: \$anoNascimento, Peso: \$peso kg");
}
```

### Estudo de Caso (Evolução):
```dart
import 'dart:io';

void main() {
  print("Digite seu nome:");
  String? nome = stdin.readLineSync();

  print("Digite seu sobrenome:");
  String? sobrenome = stdin.readLineSync();

  print("Digite seu ano de nascimento:");
  int anoNascimento = int.parse(stdin.readLineSync()!);

  print("Nome Completo: \$nome \$sobrenome, Ano: \$anoNascimento");
}
```

### Desafio:
- Adicione o atributo peso e exiba todas as informações.

#### Solução:
```dart
import 'dart:io';

void main() {
  print("Digite seu peso:");
  double peso = double.parse(stdin.readLineSync()!);

  print("Nome Completo: \$nome \$sobrenome, Ano: \$anoNascimento, Peso: \$peso kg");
}
```

### Referências:
- [Dart: Tipos de Variáveis](https://dart.dev/guides/language/language-tour) → "Variables"

---

## Tópico 4: Introdução à POO - Criando a Classe Pessoa

### Objetivos:
- Criar classes e objetos;
- Definir atributos e métodos;
- Implementar construtores com parâmetros obrigatórios.

### Código:
```dart
class Pessoa {
  String nome;
  String sobrenome;
  int anoNascimento;
  double peso;

  Pessoa(this.nome, this.sobrenome, this.anoNascimento, this.peso);
}

void main() {
  Pessoa pessoa = Pessoa("João", "Silva", 1990, 70.5);
  print("Nome: \${pessoa.nome} \${pessoa.sobrenome}, Ano: \${pessoa.anoNascimento}, Peso: \${pessoa.peso} kg");
}
```

### Estudo de Caso (Evolução - Adicionando Validação):
```dart
class Pessoa {
  String nome;
  String sobrenome;
  int anoNascimento;
  double peso;

  Pessoa(this.nome, this.sobrenome, this.anoNascimento, this.peso) {
    if (anoNascimento > 2025) {
      throw Exception("Ano de nascimento inválido!");
    }
  }

  int calcularIdade() {
    return 2025 - anoNascimento;
  }
}

void main() {
  Pessoa pessoa = Pessoa("João", "Silva", 1990, 70.5);
  print("Nome: \${pessoa.nome} \${pessoa.sobrenome}, Idade: \${pessoa.calcularIdade()} anos, Peso: \${pessoa.peso} kg");
}
```

### Desafio:
- Crie uma classe **Cidade** com os atributos `nome` e `estado`.
- Associe uma cidade à classe **Pessoa**.

#### Solução:
```dart
class Estado {
  String nome;
  String sigla;
  Estado(this.nome, this.sigla);
}

class Cidade {
  String nome;
  Estado estado;
  Cidade(this.nome, this.estado);
}

class Pessoa {
  String nome;
  String sobrenome;
  int anoNascimento;
  double peso;
  Cidade cidade;

  Pessoa(this.nome, this.sobrenome, this.anoNascimento, this.peso, this.cidade);
}
```

### Referências:
- [Dart: Classes e Objetos](https://dart.dev/guides/language/language-tour) → "Classes"

---


