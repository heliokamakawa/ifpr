# Aula 1: Introdução ao Dart e Configuração do Ambiente

## Pré-requisitos

- Instalar o **Flutter** e o **Dart** (https://docs.flutter.dev/get-started/install)
- Instalar o **VS Code** (https://code.visualstudio.com/)
- Adicionar o plugin **Code Runner** no VS Code
- Configurar o Code Runner para executar no terminal: 
  - Acesse as configurações do VS Code (Ctrl + ,)
  - Busque por "Run In Terminal"
  - Ative a opção "Run Code In Terminal"

## Objetivos

- Compreender a estrutura básica de um programa em Dart
- Aprender a imprimir no console
- Importar bibliotecas

## Código Inicial: "Hello World"

```dart
void main() {
  print("Hello, World!"); // Exibe "Hello, World!" no terminal
}
```

## Exercício

Crie um programa que imprima seu nome e idade no console.

---

# Aula 2: Entrada de Dados e Interpolação

## Objetivos

- Ler dados do usuário
- Armazenar em variáveis
- Trabalhar com concatenação e interpolação

## Código

```dart
import 'dart:io'; // Importa a biblioteca para entrada de dados

void main() {
  print("Digite seu nome:");
  String? nome = stdin.readLineSync();
  
  print("Digite sua idade:");
  String? idade = stdin.readLineSync();

  // Concatenação
  print("Seu nome é " + nome! + " e sua idade é " + idade!);

  // Interpolação
  print("Seu nome é $nome e sua idade é $idade");
}
```

## Exercício

Solicite o sobrenome do usuário e imprima utilizando concatenação e interpolação.

---

# Aula 3: Declaração de Variáveis com Tipo Nomeado

## Objetivos

- Declarar variáveis com tipos explícitos

## Código

```dart
import 'dart:io';

void main() {
  print("Digite seu nome:");
  String nome = stdin.readLineSync()!;

  print("Digite seu ano de nascimento:");
  int anoNascimento = int.parse(stdin.readLineSync()!);

  print("Nome: $nome, Ano de Nascimento: $anoNascimento");
}
```

## Exercício

Peça ao usuário seu peso e armazene em uma variável do tipo `double`.

---

# Aula 4: Declaração de Variáveis por Inferência

## Objetivos

- Compreender `var` e `dynamic`

## Código

```dart
import 'dart:io';

void main() {
  var nome = stdin.readLineSync();
  var idade = int.parse(stdin.readLineSync()!);
  print("Nome: $nome, Idade: $idade");
}
```

## Exercício

Refaça o programa usando `dynamic` e observe as diferenças.

---

# Aula 5: Conversão de Dados

## Objetivos

- Converter tipos primitivos corretamente

## Código

```dart
void main() {
  String numeroTexto = "25";
  int numero = int.parse(numeroTexto);
  double numeroDouble = double.parse("10.5");
  print("Int: $numero, Double: $numeroDouble");
}
```

## Exercício

Solicite altura e peso do usuário e realize a conversão correta.

---

# Aula 6: Null Safety

## Objetivos

- Compreender `?`, `!` e `late`

## Código

```dart
void main() {
  String? nome;
  nome = "João";
  print(nome!.length);
}
```

## Exercício

Crie um programa que peça o nome e utilize `null safety` corretamente.

---

# Aula 7: Estruturas de Decisão

## Objetivos

- Condições `if`, `else`, `switch`

## Código

```dart
void main() {
  int idade = 18;
  if (idade >= 18) {
    print("Maior de idade");
  } else {
    print("Menor de idade");
  }
}
```

## Exercício

Solicite idade e ano de nascimento e valide se está correto.

---

# Aula 8: Try, Catch, Throw e Exception

## Objetivos

- Capturar e lançar erros corretamente

## Código

```dart
void main() {
  try {
    int idade = int.parse("abc");
    print(idade);
  } catch (e) {
    print("Erro: Entrada inválida!");
  }
}
```

## Exercício

Valide a conversão de ano de nascimento com `try-catch`.

---

# Aula 9: Funções

## Objetivos

- Criar funções para modularizar o código

## Código

```dart
int calcularIdade(int anoNascimento) {
  return DateTime.now().year - anoNascimento;
}

void main() {
  print(calcularIdade(2000));
}
```

## Exercício

Crie uma função para calcular o IMC.

---

# Aula 10: Introdução à POO

## Objetivos

- Criar classes e objetos

## Código

```dart
class Pessoa {
  String nome;
  int anoNascimento;
  
  Pessoa(this.nome, this.anoNascimento);
}

void main() {
  Pessoa p = Pessoa("João", 2000);
  print("Nome: \${p.nome}, Ano: \${p.anoNascimento}");
}
```

## Exercício

Adicione o atributo `peso` à classe `Pessoa`.

---

# Aula 11: Classe de Entidade

## Objetivos

- Criar classes mais completas com métodos

## Código

```dart
class Pessoa {
  String nome;
  int anoNascimento;
  double peso;

  Pessoa(this.nome, this.anoNascimento, this.peso);

  int calcularIdade() {
    return DateTime.now().year - anoNascimento;
  }
}

void main() {
  Pessoa p = Pessoa("João", 2000, 70.5);
  print("Idade: \${p.calcularIdade()}");
}
```

## Exercício

Adicione um método `calcularIMC` à classe `Pessoa`.
