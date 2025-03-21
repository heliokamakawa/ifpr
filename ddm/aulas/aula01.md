# Exemplo Procedural em Dart

## Configuração para Execução no Terminal

### 1. Instalar a Extensão "Code Runner"
   - No VS Code, instale a extensão **Code Runner**.

### 2. Configuração do Code Runner
   - Acesse as configurações do VS Code (`Ctrl + Shift + P` → "Preferences: Open Settings (JSON)").
   - Adicione a seguinte configuração para garantir que o terminal aceite entradas de dados:
     ```json
     "code-runner.runInTerminal": true
     ```

## Diferença entre Executar um Arquivo e um Projeto

- **Executar um arquivo Dart:** Use `dart run arquivo.dart` para executar apenas o código de um arquivo específico.
- **Executar um projeto Flutter:** Use `flutter run` para rodar a aplicação Flutter, iniciando toda a estrutura do app.

---

## Código Exemplo em Dart

```dart
import 'dart:io';

void main() {
  // Solicitando o nome do usuário
  print("Digite seu nome:");
  String? nome = stdin.readLineSync();

  // Tratamento de erro para nome: caso o nome seja vazio ou nulo
  try {
    if (nome == null || nome.trim().isEmpty) {
      print("Erro: O nome não pode ser vazio.");
      nome = "Desconhecido"; // Valor padrão
    }
  } catch (e) {
    print("Erro ao inserir o nome: \$e");
  }

  // Solicitando o sobrenome
  print("Digite seu sobrenome:");
  String? sobrenome = stdin.readLineSync();

  // Lançando uma exceção caso o sobrenome seja vazio
  if (sobrenome == null || sobrenome.trim().isEmpty) {
    throw Exception("O sobrenome não pode ser vazio.");
  }

  // Solicitando o ano de nascimento
  print("Digite o ano de nascimento:");
  int? anoNascimento;
  try {
    anoNascimento = int.parse(stdin.readLineSync()!);
  } catch (e) {
    print("Ano de nascimento inválido. Insira um número válido.");
    return;
  }

  // Solicitando o peso
  print("Digite seu peso:");
  double? peso;
  try {
    peso = double.parse(stdin.readLineSync()!);
  } catch (e) {
    print("Peso inválido. Insira um número válido.");
    return;
  }

  // Solicitando o nome da cidade
  print("Digite o nome da cidade onde mora:");
  String? cidade = stdin.readLineSync();
  cidade = (cidade == null || cidade.trim().isEmpty) ? "Não informado" : cidade;

  // Solicitando o nome do estado
  print("Digite o nome do estado onde mora:");
  String? estado = stdin.readLineSync();

  // Solicitando a sigla do estado
  print("Digite a sigla do estado:");
  String? siglaEstado = stdin.readLineSync();

  // Solicitando o status (ativo/inativo)
  print("Digite seu status (ativo/inativo):");
  String? status = stdin.readLineSync();

  // Exibindo os dados do usuário
  print("Nome completo (concatenação): " + nome + " " + sobrenome);
  print("Nome completo (interpolação): \$nome \$sobrenome");
  print("Dados completos:");
  print("Nome: \$nome\nSobrenome: \$sobrenome\nAno de Nascimento: \$anoNascimento\nPeso: \$peso kg\nCidade: \$cidade\nEstado: \$estado (\$siglaEstado)\nStatus: \$status");
}
