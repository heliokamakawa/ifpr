# Desenvolvimento de Dispositivos Móveis

## Criando um Projeto Flutter no VS Code

### Passo a Passo
1. **Instale o Flutter e Dart**
   - Certifique-se de ter o Flutter instalado no seu sistema.
   - Instale a extensão Flutter/Dart no VS Code.
   - Verifique a instalação com o comando:
     ```sh
     flutter doctor
     ```
     - Resolva qualquer pendência que o comando relatar.

2. **Criando o projeto Flutter**
   - No terminal, execute:
     ```sh
     flutter create nome_do_projeto
     ```
   - Utilize **snake_case** para nomear o projeto (exemplo: `meu_projeto_flutter`).
   - Entre na pasta do projeto:
     ```sh
     cd nome_do_projeto
     ```
   - Abra no VS Code:
     ```sh
     code .
     ```

3. **Pré-requisitos**
   - Instale o plugin **Code Runner**.
   - Configure para executar no terminal:
     - Acesse `Configurações` (`Ctrl + ,`).
     - Busque por `code-runner.runInTerminal` e marque como `true`.

4. **Diferença entre Executar Arquivo e Projeto**
   - Arquivo: Executa apenas o código Dart no terminal.
   - Projeto: Executa o aplicativo Flutter no emulador/dispositivo.

---

## Código Exemplo (Procedural)

```dart
import 'dart:io';

void main() {
  // Solicitação de nome com tratamento de erro usando try-catch
  String nome;
  try {
    stdout.write("Digite seu nome: ");
    nome = stdin.readLineSync()!;
    if (nome.isEmpty) throw FormatException("O nome não pode ser vazio!");
  } catch (e) {
    print("Erro: $e");
    return;
  }

  // Solicitação de sobrenome com validação usando throw
  stdout.write("Digite seu sobrenome: ");
  String sobrenome = stdin.readLineSync()!;
  if (sobrenome.isEmpty) {
    throw Exception("O sobrenome não pode ser vazio!");
  }

  // Solicitação do ano de nascimento e conversão
  stdout.write("Digite seu ano de nascimento: ");
  int anoNascimento = int.tryParse(stdin.readLineSync()!) ?? 0;
  if (anoNascimento == 0) {
    print("Ano inválido!");
    return;
  }

  // Solicitação do peso e conversão
  stdout.write("Digite seu peso (kg): ");
  double peso = double.tryParse(stdin.readLineSync()!) ?? 0.0;
  if (peso <= 0) {
    print("Peso inválido!");
    return;
  }

  // Solicitação da cidade e estado
  stdout.write("Digite o nome da cidade: ");
  String cidade = stdin.readLineSync() ?? "";
  stdout.write("Digite a sigla do estado (ex: SP): ");
  String estado = stdin.readLineSync() ?? "";

  // Solicitação do status
  stdout.write("Digite seu status (ativo/inativo): ");
  String status = stdin.readLineSync() ?? "";

  // Saída formatada
  print("Nome completo: " + nome + " " + sobrenome);
  print("Nome completo (Interpolação): $nome $sobrenome");
  print("Dados completos: \nNome: $nome $sobrenome\nAno de Nascimento: $anoNascimento\nPeso: $peso kg\nCidade: $cidade - $estado\nStatus: $status");
}
```

---

## Tópicos de Estudo

### 1. Entrada e Saída de Dados no Terminal
- [Documentação oficial](https://dart.dev/tutorials/server/cmdline) - Explica como usar `stdin.readLineSync()` e `stdout.write()`.

### 2. Bibliotecas no Dart
- O que são e como usá-las: [Dart Libraries](https://dart.dev/guides/libraries)
- Sintaxe de importação: `import 'dart:io';`

### 3. Null Safety no Dart
- [Guia oficial](https://dart.dev/null-safety/understanding-null-safety) - Explica por que o Dart implementou Null Safety.

### 4. Concatenação e Interpolação
- Concatenação: `"Texto " + variavel`
- Interpolação: `"Texto $variavel"`
- [Documentação sobre strings](https://dart.dev/guides/language/language-tour#strings)

### 5. Estruturas de Decisão
- Uso de `if`, `else` e `switch`: [Dart Control Flow](https://dart.dev/guides/language/language-tour#control-flow-statements)

### 6. Conversão de Dados
- `int.tryParse()`, `double.tryParse()`: [Dart Data Types](https://dart.dev/guides/language/language-tour#numbers)

### 7. Tratamento de Erros (Try Catch, Throw e Exception)
- `try-catch`: Captura erros em tempo de execução.
- `throw`: Lança exceções personalizadas.
- `Exception`: Indica um erro esperado no código.
- [Dart Exceptions](https://dart.dev/guides/language/language-tour#exceptions)

---

## Orientação Final
O aprendizado envolve prática e dedicação. Identifique suas dificuldades e reforce seus estudos nos tópicos necessários. A complexidade aumenta ao longo do curso, então mantenha a disciplina! 🚀
