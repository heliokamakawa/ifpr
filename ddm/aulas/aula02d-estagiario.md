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
    \nPeso: ${pessoa.peso} kg
    \nCidade: ${pessoa.cidade!.nome}
    \nEstado: ${pessoa.cidade!.estado!.nome} (${pessoa.cidade!.estado!.sigla})
    \nStatus: ${pessoa.ativo}
    \nIdade: $idade
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
# Análise de Código - Terceira Versão

## O Que Está Bom:

- **Estrutura Básica da Classe:**  
  As classes **Estado**, **Cidade** e **Pessoa** representam adequadamente as entidades do sistema, o que é uma tentativa de organização que, com ajustes, pode ser muito útil. 

## O Que Está Falhando:

- **Aplicação Correta de POO:**  
  A principal falha do código está na aplicação inadequada de conceitos de Programação Orientada a Objetos. Embora o código tenha classes para representar as entidades **Estado**, **Cidade** e **Pessoa**, estas classes estão mal definidas, com muitas responsabilidades externas a elas. Isso significa que a lógica de validação e o cálculo da idade, por exemplo, estão sendo feitas fora da classe **Pessoa**, quando deveriam ser comportamentos próprios dessa classe.

  A classe **Pessoa** está essencialmente "burra", ou seja, ela contém apenas atributos e não encapsula comportamentos relacionados a esses atributos. Por exemplo, a validação dos dados e o cálculo da idade, que são responsabilidades da **Pessoa**, estão localizados em funções externas, como `solicitarNumero`, `solicitarNumeroDecimal`, etc. Isso dificulta a localização e manutenção do código, além de não fazer sentido. A **Pessoa** deveria ser responsável por essas ações. Em uma aplicação POO bem feita, ela deveria ser responsável não apenas pelos dados, mas também pelos comportamentos (como a validação dos atributos e o cálculo da idade). Isso organizaria o código, tornando-o mais intuitivo e fácil de manter.

- ## Sintaxe Próxima a Java:

A implementação utiliza uma sintaxe que se assemelha mais à linguagem Java, onde os atributos são definidos como `null` por padrão. No entanto, a utilização de valores nulos nas variáveis por padrão não é uma boa prática, especialmente quando o comportamento esperado é o oposto, como no caso do atributo **nome** na classe **Pessoa**. O nome de uma pessoa não pode ser `null`, e na versão atual do código, ele está sendo definido como `null`, provavelmente por causa de uma aprendizagem baseada em outra linguagem.

Poderia ter aproveitado a vantagem do Dart, o conceito de **null safety** deve ser aproveitado para evitar que atributos como o **nome** sejam nulos, garantindo a integridade e a segurança dos dados. O aluno deve aprender a aplicar o conceito de POO corretamente, compreendendo que, em Dart, esse comportamento é gerido pelo **null safety**, e os atributos devem ser tratados de acordo com as necessidades do contexto e não de forma mecânica como em outras linguagens.

>>Exemplo: se nome não pode ser nulo, realizar uma rápida pesquisa de como fazer isso na nova linguagem.

É importante que o aluno entenda os conceitos de POO de forma abrangente, aplicando-os corretamente no contexto de Dart e evitando replicar soluções que funcionam em outras linguagens, mas que não se adaptam ao contexto atual.


- **Falta de Encapsulamento Adequado:**  
O código atual não aplica o encapsulamento corretamente, pois os dados e comportamentos relacionados a cada classe não estão centralizados. As classes não são responsáveis pelas suas próprias validações, cálculos e lógicas de negócio. Em vez disso, essas responsabilidades são distribuídas de maneira inadequada entre funções externas, o que prejudica a clareza e a coesão do código.

- **Falta de Classes para Responsabilidade da Interface:**  
  Outro ponto importante é que não há classes responsáveis pela interface, ou seja, pela entrada e saída de dados. As funções de solicitação de dados, como `solicitarDados`, `solicitarNumero`, entre outras, estão fazendo a interação com o usuário diretamente no código principal, o que vai contra o princípio de separar a lógica de negócios da interação com o usuário. Para melhorar, seria ideal ter classes separadas para cuidar da interface, permitindo uma maior organização e facilitando a manutenção e evolução do sistema. Isso torna o código mais modular, pois a interface pode ser alterada sem afetar a lógica de negócios e vice-versa.

## O Que é Necessário para Completar a Plenitude na Aprendizagem:

1. **Aplicação Correta da POO:**  
   O principal objetivo aqui é aplicar corretamente os conceitos de POO, centralizando tanto os dados quanto os comportamentos nas classes. A classe **Pessoa**, por exemplo, deveria ser responsável não apenas pelos atributos da pessoa, mas também pelas validações dos atributos e cálculos, como o cálculo da idade. Isso vai melhorar a coesão e facilitar a manutenção do código.

2. **Encapsulamento e Responsabilidade Única:**  
   Cada classe deve ser responsável por seus próprios comportamentos, como a validação dos dados e o cálculo da idade, por exemplo. Em vez de usar funções externas para isso, o código deve ser estruturado para que as classes centralizem essas responsabilidades.

3. **Uso Correto de Atributos e Comportamentos em Dart:**  
   O aluno deve aprender a utilizar os recursos da linguagem Dart de forma mais apropriada, evitando aplicar conceitos de POO que são comuns em Java, mas não tão adequados para Dart. Isso inclui o uso de valores nulos e a definição de atributos de forma mais alinhada à linguagem.

4. **Separação de Responsabilidades e Interface:**  
   O código deve ser modificado para que a interação com o usuário (entrada e saída de dados) seja tratada por classes específicas de interface. Essas classes seriam responsáveis apenas por gerenciar a entrada de dados, enquanto a lógica de validação e cálculos ficaria com as classes de domínio (como **Pessoa**). Essa separação de responsabilidades melhora a clareza do código e facilita futuras modificações.

5. **Aprofundamento no Conceito de POO e suas Aplicações em Diferentes Contextos:**  
   Para alcançar a plenitude na aprendizagem, o aluno precisa entender que POO não é uma técnica rígida, mas sim um conceito que deve ser adaptado conforme a linguagem. Em Dart, por exemplo, não é necessário seguir o mesmo modelo de POO que em Java. Isso envolve compreender as particularidades da linguagem Dart e saber como aplicar POO de maneira eficaz, com foco na manutenção e clareza do código.

---

Ao revisar o código e realizar os ajustes necessários, os alunos poderão avançar na compreensão e aplicação da POO de maneira mais eficiente, utilizando as melhores práticas de programação para garantir a qualidade do código e a facilitação da manutenção no futuro.


