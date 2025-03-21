## Lembretes
- O diário não precisa ser validado ou apresentado no final da aula, basta o preenchimento;
- Vendedor descomprometido:
  comunicação, argumentação, foco na venda/resultado e não no cliente/objetivo;
  egocentrismo - preocupa com comissão e não com a qualidade do serviço; pouco interesse na fidelização;
  vaidade/falta de paciência/imediatismo, desmotivação rápida;
- O que fazer com diário não reconhecido?
  
# Exemplo Procedural em Dart
## Plugin para executar entrada no terminal
**Configure o Code Runner**:
   - Instale a extensão "Code Runner" no VS Code.
   - Vá até as configurações (`Ctrl + Shift + P` → "Preferences: Open Settings (JSON)").
   - Adicione a configuração:
     ```json
     "code-runner.runInTerminal": true
     ```
   - Isso permite que o terminal aceite entrada de dados.

## Diferença entre Executar um Arquivo e um Projeto
- **Executar um arquivo Dart:** Usa `dart run arquivo.dart`, executando apenas aquele código.
- **Executar um projeto Flutter:** Usa `flutter run`, iniciando toda a estrutura do app.

---

## Código Exemplo em Dart

```dart
import 'dart:io';

void main() {
  print("Digite seu nome:");
  var nome = stdin.readLineSync()!; 
  /*
    Declaração de variável por inferência:
    - O tipo é inferido pelo valor atribuído.
    - Boa prática: Use quando a atribuição inicial deixa claro o tipo.
    - Documentação oficial:
      https://dart.dev/guides/language/sound-dart
    
    Uso do operador `!` (null assertion operator):
    - Afirma explicitamente que a entrada não será nula.
    - Risco: Pode gerar exceção se a entrada for `null`.
  */

  // Tratamento de erro com `print`
  try {
    if (nome.trim().isEmpty) { // Como `nome` não pode ser nulo, verificamos apenas se está vazio
      print("Erro: O nome não pode ser vazio.");
      nome = "Desconhecido"; // Atribuímos um valor padrão para evitar erro
    }
  } catch (e) {
    print("Erro ao inserir o nome: $e");
    // `print` exibe a mensagem de erro, mas não interrompe o fluxo do programa.
    // desta forma o código fica acoplado/dependente
  }

  print("Digite seu sobrenome:");
  String? sobrenome; 
  /*
    Declaração de variável com tipo explícito:
    - Útil quando não há atribuição imediata.
    - Boa prática: Use para tornar o código mais legível e evitar inferências erradas.
    - Documentação oficial:
      https://dart.dev/guides/language/effective-dart/design#prefer-explicit-types-when-the-variable-type-is-not-obvious
  */
  sobrenome = stdin.readLineSync(); // `?` permite que a variável seja nula

  // Tratamento de erro com `throw Exception`
  if (sobrenome == null || sobrenome.trim().isEmpty) { // Como pode ser nulo, verificamos ambos os casos
    throw Exception("O sobrenome não pode ser vazio.");
    /*
    - `throw` interrompe a execução e lança um erro.
    - `Exception` é usada para fornecer detalhes sobre o erro.
    - Diferente do `print`, aqui o código não continua após o erro.
    - assim o código fica independente - funciona em qualquer plataforma
    */
  }

  print("Digite o ano de nascimento:");
  int? anoNascimento;
  try {
    anoNascimento = int.parse(stdin.readLineSync()!); // Conversão de String para int
  } catch (e) {
    print("Ano de nascimento inválido. Insira um número válido.");
    return; // Encerra a execução da função
  }

  print("Digite seu peso:");
  double? peso;
  try {
    peso = double.parse(stdin.readLineSync()!); // Conversão de String para double
  } catch (e) {
    throw Exception("Peso inválido. Insira um número válido.");
  }

  print("Digite o nome da cidade onde mora:");
  var nomeCidade = stdin.readLineSync();
  if (nomeCidade == null || nomeCidade.trim().isEmpty) { 
    throw Exception("O nome da cidade não pode ser vazio.");
  }

  print("Digite o nome do estado onde mora:");
  var nomeEstado = stdin.readLineSync();
  if (nomeEstado == null || nomeEstado.trim().isEmpty) { 
    throw Exception("O nome do estado não pode ser vazio.");
  }

  print("Digite a sigla do estado:");
  String? siglaEstado = stdin.readLineSync();
  if (siglaEstado == null || siglaEstado.trim().isEmpty) { 
    throw Exception("A sigla do estado não pode ser vazia.");
  }

  print("Digite se é ativo (S/N):");
  String? resposta = stdin.readLineSync();
  if (resposta == null) {
    throw Exception("O campo ativo não pode ser vazio.");
  } else {
    resposta = resposta.toUpperCase();
    if (resposta.trim().isEmpty || !(resposta == 'S' || resposta == 'N')) { 
      throw Exception("Valor inválido. Insira 'S' para sim ou 'N' para não.");
    }
  }
  bool ativo = resposta == 'S';

  var idade = DateTime.now().year - anoNascimento; // Cálculo da idade

  // Exibindo os dados
  print('Nome completo (concatenação): ' + nome + ' ' + sobrenome); //contatenação
  print('Nome completo (interpolação): $nome $sobrenome'); //interpolação
  print('Dados completos:');
  print('Nome: $nome\nSobrenome: $sobrenome\nAno de Nascimento: $anoNascimento\nPeso: $peso kg\nCidade: $nomeCidade\nEstado: $nomeEstado ($siglaEstado)\nStatus: $ativo \nIdade: $idade');
}

/*
Atividade de reflexão:
1. Analisando o trecho:
  print("Digite se é ativo (S/N):");
  String? resposta = stdin.readLineSync();
  if (resposta == null) {
    throw Exception("O campo ativo não pode ser vazio.");
  } else {
    resposta = resposta.toUpperCase();
    if (resposta.trim().isEmpty || !(resposta == 'S' || resposta == 'N')) { 
      throw Exception("Valor inválido. Insira 'S' para sim ou 'N' para não.");
    }
  }
   - Explique a lógica desse bloco de código com suas palavras.

2. Quantas formas de tratamento de erros foram usadas? Qual a mais indicada? Justifique.

3. Quais são os tipos de variáveis no Dart? Qual a diferença entre a declaração de tipo nomeado e a inferência de tipo? Como devem ser utilizadas?

4. O que é Null Safety? Qual seu objetivo? O Dart permite valores nulos por padrão? Quais são as operações associadas ao Null Safety? Quais desafios ele pode trazer ao código e quais suas vantagens?

5. No techo abaixo: 
 print('Nome completo (concatenação): ' + nome + ' ' + sobrenome); //contatenação
 indique as limitações e as dificuldades.
*/
```


# 📌 Tópicos de Estudo

## 🖥️ Entrada e Saída de Dados no Terminal  
- Compreensão de entrada e saída de dados via terminal.  
- [🔗 Documentação oficial do Dart](https://dart.dev/guides/libraries/library-tour#dartio)  

## 📚 Bibliotecas  
- O que são bibliotecas em Dart e como utilizá-las.  
- Como importar e gerenciar bibliotecas corretamente.  
- [🔗 Como importar bibliotecas](https://dart.dev/guides/language/language-tour#libraries-and-visibility)  

## ❓ Null Safety  
- O que é Null Safety e por que é importante.  
- Como evitar erros relacionados a valores nulos.  
- Exemplos práticos de uso do `?`, `!` e `late`.  
- [🔗 Documentação oficial sobre Null Safety](https://dart.dev/null-safety)  

## 🔤 Concatenação e Interpolação de Strings  
- Diferença entre concatenação (`+`) e interpolação (`$`).  
- Qual a melhor abordagem para cada caso?  
- [🔗 Strings em Dart](https://dart.dev/guides/language/language-tour#strings)  

## 🔀 Estruturas de Decisão  
- Uso correto das estruturas `if`, `else`, `switch`.  
- Quando utilizar cada estrutura para otimizar o código.  
- [🔗 Control Flow Statements](https://dart.dev/guides/language/language-tour#control-flow-statements)  

## 🔄 Conversão de Dados  
- Como converter `String` para `int` e `double`.  
- Tratamento de erros ao realizar conversões.  
- [🔗 Convertendo tipos em Dart](https://dart.dev/guides/language/language-tour#numbers)  

## ⚠️ Tratamento de Erros  
- Diferença entre `try-catch` e `throw`.  
- Como utilizar `Exception` e `Error` corretamente.  
- [🔗 Error Handling no Dart](https://dart.dev/guides/language/language-tour#exceptions)  

## 🏷️ Padrão de Nomenclatura no Dart  
- Convenções para nomeação de variáveis, atributos, classes e métodos.  
- Diferenças entre `camelCase`, `PascalCase` e `snake_case`.  
- [🔗 Guia oficial de nomenclatura](https://dart.dev/guides/language/effective-dart/style#identifier-names)  

---

# 📢 Mensagem Final  

O aprendizado contínuo é essencial para se tornar um desenvolvedor eficiente. Identifique seus pontos fracos e aprofunde-se neles. A complexidade dos conceitos tende a aumentar, e a prática constante, aliada a materiais complementares, é a chave para a evolução no desenvolvimento em Dart. 🚀



  
