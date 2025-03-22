# Terceira Versão - POO

```dart
import 'dart:io';

String solicitarDados(String rotulo){
  print(rotulo);
  var entrada = stdin.readLineSync();
  if(entrada != null){
    if (entrada.trim().isEmpty) { 
      print("Erro: valor não pode ser vazio.");
      throw Exception();
    }
    return entrada;
  }
  print("Erro: valor nulo não é permitido");
  throw Exception();
}

int solicitarNumero(String rotulo){
  int numero;
  var entrada = solicitarDados(rotulo);
  try {
    numero = int.parse(entrada); 
  } catch (e) {
    print("Erro: insira um número válido.");
    throw Exception();
  }
  return numero;
}

double solicitarNumeroDecimal(String rotulo){
  double numeroDecimal;
  var entrada = solicitarDados(rotulo);
  try {
    numeroDecimal = double.parse(entrada); 
  } catch (e) {
    print("Erro: insira um número válido.");
    throw Exception();
  }
  return numeroDecimal;
}

bool solicitarSimNao(String rotulo){
  var entrada = solicitarDados(rotulo).toUpperCase();
  if(entrada != 'S' && entrada != 'N'){ 
    print("Valor inválido. Insira 'S' para sim ou 'N' para não.");
    throw Exception();
  }
  return entrada == 'S';
}


void main() {
  var estado = Estado();
  var cidade = Cidade();
  var pessoa = Pessoa();
  cidade.estado = estado;
  pessoa.cidade = cidade;
  pessoa.nome = solicitarDados("Digite seu nome:");
  pessoa.sobrenome = solicitarDados("Digite seu sobrenome:");
  pessoa.anoNascimento = solicitarNumero("Digite o ano de nascimento:");
  pessoa.peso = solicitarNumeroDecimal("Digite seu peso:");
  pessoa.cidade!.nome = solicitarDados("Digite o nome da cidade onde mora:");
  pessoa.cidade!.estado!.nome = solicitarDados("Digite o nome do estado onde mora:");
  pessoa.cidade!.estado!.sigla = solicitarDados("Digite a sigla do estado:");
  pessoa.ativo = solicitarSimNao("Digite se é ativo (S/N):");
  
  var idade = DateTime.now().year - pessoa.anoNascimento!; // Cálculo da idade

  // Exibindo os dados
  print('Dados completos:');
  print('''
    Nome: ${pessoa.nome}
    Sobrenome: ${pessoa.sobrenome}
    Ano de Nascimento: ${pessoa.anoNascimento}
    Peso: ${pessoa.peso} kg
    Cidade: ${pessoa.cidade!.nome}
    Estado: ${pessoa.cidade!.estado!.nome} (${pessoa.cidade!.estado!.sigla})
    Status: ${pessoa.ativo}
    Idade: $idade
  ''');
}

//arquivo estado.dart
class Estado{
  String? nome; 
  String? sigla;
}

//arquivo cidade.dart
class Cidade{
  String? nome;
  Estado? estado;
}

//arquivo pessoa.dart
class Pessoa{
  String? nome;
  String? sobrenome;
  int? anoNascimento;
  double? peso; 
  Cidade? cidade;
  bool? ativo;
}
```
## Análise de Código - Terceira Versão

### O Que Está Bom:

#### Estrutura Básica da Classe:
As classes **Estado**, **Cidade** e **Pessoa** representam adequadamente as entidades do sistema. Com ajustes, essa estrutura pode ser muito útil.

### O Que Está Falhando:

#### Aplicação Correta de POO:
A principal falha está na aplicação inadequada dos conceitos de Programação Orientada a Objetos. Embora existam classes para representar as entidades, **Estado**, **Cidade** e **Pessoa** estão mal definidas, com muitas responsabilidades externas. A lógica de validação e o cálculo da idade, por exemplo, estão fora da classe **Pessoa**, quando deveriam ser comportamentos internos dessa classe.

A classe **Pessoa** está essencialmente "burra", ou seja, ela contém apenas atributos e não encapsula comportamentos relacionados a esses atributos. Por exemplo, a validação de dados e o cálculo da idade estão em funções externas, como **solicitarNumero**, **solicitarNumeroDecimal**, etc., o que dificulta a localização e a manutenção do código. A responsabilidade de validar os atributos e calcular a idade deveria estar na própria classe **Pessoa**, organizando o código e tornando-o mais intuitivo e fácil de manter.

#### Sintaxe Próxima a Java:
O código utiliza uma sintaxe mais próxima ao **Java**, onde os atributos são definidos como `null` por padrão. A definição de atributos como `null` em casos como o **nome** da classe **Pessoa** não faz sentido, já que o nome não pode ser nulo. Esse erro provavelmente ocorre devido ao aprendizado em outra linguagem.

Poderia ter aproveitado o conceito de **null safety** do Dart para garantir a integridade dos dados. Ao invés de definir atributos como `null`, o aluno deveria ter implementado (com uma pesquisa prévia) **null safety** da linguagem, o que vai ajudar a evitar esses problemas. Por exemplo, o **nome** de uma pessoa não deve ser nulo, e isso deve ser tratado de acordo com a sintaxe e boas práticas de Dart.

#### Falta de Encapsulamento Adequado:
O código não aplica o **encapsulamento** corretamente. As classes não são responsáveis pelos seus próprios comportamentos, como validação de dados ou cálculos, que estão espalhados em funções externas. Isso prejudica a coesão do código e dificulta a manutenção.

#### Falta de Classes para Responsabilidade da Interface:
Não há classes específicas para tratar a interação com o usuário, ou seja, entrada e saída de dados. As funções **solicitarDados**, **solicitarNumero**, entre outras, estão no código principal, o que vai contra o princípio de separação de responsabilidades. Para melhorar, é necessário criar classes responsáveis pela interface, separando claramente a lógica de negócios da interação com o usuário. Isso tornará o código mais modular, facilitando a manutenção e evolução do sistema.

### O Que é Necessário para Completar a Plenitude na Aprendizagem:

#### Aplicação Correta da POO:
O aluno deve aplicar corretamente os conceitos de POO, centralizando dados e comportamentos nas classes. A classe **Pessoa**, por exemplo, deveria ser responsável não apenas pelos atributos, mas também pelas validações e cálculos, como o cálculo da idade. Isso vai melhorar a coesão e a manutenção do código.

#### Encapsulamento e Responsabilidade Única:
Cada classe deve ser responsável pelos seus próprios comportamentos, como validação de dados e cálculos. Ao invés de funções externas para isso, o código deve ser estruturado para que as classes centralizem essas responsabilidades.

#### Uso Correto de Atributos e Comportamentos:
O aluno precisa aplicar os coneitos de POO e análise corretamente, evitando práticas de uma linguagem específica. 

#### Separação de Responsabilidades e Interface:
A interação com o usuário (entrada e saída de dados) deve ser tratada por classes específicas para interface, enquanto a lógica de validação e cálculos fica com as classes de domínio (como **Pessoa**). Isso melhora a clareza do código e facilita modificações futuras.

#### Aprofundamento no Conceito de POO e suas Aplicações em Diferentes Contextos:

Para alcançar a plenitude na aprendizagem, o aluno precisa entender que POO deve ser adaptada ao contexto da linguagem. Em Dart, o modelo de POO não precisa ser o mesmo aplicado em Java. O aluno deve aprender a aplicar POO de maneira eficaz em Dart, focando na clareza e manutenção do código.

Com esses ajustes, o aluno será capaz de aplicar POO de maneira mais eficiente, utilizando as melhores práticas de programação, garantindo a qualidade e a facilidade de manutenção do código a longo prazo.

## Materiais de Referência

### 1. **Dart e POO**
   - **[Dart Programming Language](https://dart.dev/guides)**  
   - **[Null Safety em Dart](https://dart.dev/null-safety)**

### 2. **POO e Boas Práticas**
   - **[Clean Code: A Handbook of Agile Software Craftsmanship](https://www.amazon.com.br/Clean-Code-Handbook-Software-Craftsmanship/dp/0132350882)** (Livro)
   - **[POO em Dart e Flutter](https://flutter.dev/docs/cookbook/design)** (Flutter Docs)

### 3. **Encapsulamento e Responsabilidade Única**
   - **[Encapsulamento e Responsabilidade Única - Microsoft Docs](https://learn.microsoft.com/en-us/dotnet/csharp/programming-guide/classes-and-structs/)**
   - **[Curso POO Guanabara - YouTube](https://www.youtube.com/watch?v=KlIL63MeyMY&list=PLHz_AreHm4dkqe2aR0tQK74m8SFe-aGsY)**

### 4. **Práticas de Codificação e Design de Software**
   - **[SOLID Principles - GeeksforGeeks](https://www.geeksforgeeks.org/solid-principles-in-object-oriented-design/)**
   - **[Dart Style Guide](https://dart.dev/guides/language/effective-dart)**

### 5. **Refatoração e Melhoria de Código**
   - **[Refactoring: Improving the Design of Existing Code - Amazon](https://www.amazon.com.br/Refactoring-Improving-Design-Existing-Code/dp/0201485672)** (Livro)
   - **[Refatoração em Dart - Medium](https://medium.flutterdevs.com/refactoring-in-flutter-why-how-and-when-896ad7b7f5c4)**

### 6. **Separação de Responsabilidades e Interface**
   - **[Clean Architecture - Robert C. Martin](https://www.amazon.com.br/Clean-Architecture-Software-Structure-Design/dp/0134494164)** (Livro)
   - **[Flutter Clean Architecture](https://medium.flutterdevs.com/flutter-clean-architecture-593ed351b160)** (Tutorial)



