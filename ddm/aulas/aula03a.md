# Aula de Criação de Classes em Dart

Esta aula tem o objetivo de ensinar a criação de classes em Dart de forma progressiva, considerando que os alunos já possuem conhecimento em Java. Utilizaremos o mesmo exemplo em diferentes abordagens para entender melhor as técnicas do Dart.

---

## 1º Exemplo: Classe `Pessoa` com atributos nulos (`?`)

Neste exemplo, a classe `Pessoa` possui atributos que podem ser nulos, utilizando o operador `?`. Isso é semelhante ao comportamento das variáveis em Java que podem ser nulas.

```dart
import 'dart:io';

void main() {
  // Criando uma instância da classe Pessoa
  Pessoa pessoa = Pessoa();
  
  // Solicitando o nome via console
  print('Digite seu nome:');
  pessoa.nome = stdin.readLineSync(); // Lê a linha do console e atribui ao nome

  // Solicitando o peso via console
  print('Digite seu peso:');
  pessoa.peso = double.tryParse(stdin.readLineSync() ?? '0'); // Lê o peso e converte para double

  // Imprimindo os dados da pessoa
  print('Nome: ${pessoa.nome}, Peso: ${pessoa.peso} kg');
}

class Pessoa {
  // Atributos que podem ser nulos, utilizando o operador `?`
  String? nome;
  double? peso;
}
```

### Explicação

- **String? nome**: O `?` torna o atributo `nome` opcional, permitindo que ele seja nulo. Isso significa que o valor de `nome` pode ser `null` em vez de ser uma string obrigatória.
  
- **double? peso**: O mesmo se aplica ao atributo `peso`, que pode ser nulo. Usamos o tipo `double?` para indicar que a variável pode ou não ter um valor numérico.
  
- **stdin.readLineSync()**: Utilizamos este método para ler entradas do console. Ele lê uma linha de texto que o usuário digita e a retorna como uma `String?`. Como o valor pode ser `null`, utilizamos o operador de coalescência nula `??` para garantir que, caso não seja fornecida entrada, o valor padrão seja uma string vazia.

- **double.tryParse()**: Para garantir que a entrada do usuário seja convertida corretamente em um número `double`, usamos `tryParse()`. Isso é importante porque a conversão de uma string para número pode falhar, então essa função tenta fazer a conversão e retorna `null` se não for possível. Com isso, garantimos que o valor seja tratado de maneira segura, sem causar erros na execução.

📌 **Documentação Oficial - Null Safety**  
[Link para a documentação oficial](https://dart.dev/null-safety)  

---

## 2º Exemplo: Uso de late

Aqui utilizamos late para indicar que a variável será inicializada posteriormente. Com late, o Dart permite que a variável não seja nula, mas a inicialização pode ser feita mais tarde.

```dart
import 'dart:io';

void main() {
  // Criando uma instância da classe Pessoa
  Pessoa pessoa = Pessoa();
  
  // Solicitando o nome via console
  print('Digite seu nome:');
  pessoa.nome = stdin.readLineSync() ?? ''; // Atribui o nome após a leitura

  // Solicitando o peso via console
  print('Digite seu peso:');
  pessoa.peso = double.tryParse(stdin.readLineSync() ?? '0') ?? 0; // Atribui o peso após a leitura

  // Imprimindo os dados da pessoa
  print('Nome: ${pessoa.nome}, Peso: ${pessoa.peso} kg');
}

class Pessoa {
  // Atributos com `late` indicando que serão inicializados posteriormente
  late String nome;
  late double peso;
}
```
### Explicação

- **`late`**: O modificador `late` permite declarar variáveis **não nulas** sem a necessidade de inicializá-las imediatamente. Ele informa ao Dart que a variável será inicializada em algum momento antes de ser acessada, mas você não precisa fornecer um valor na declaração.

- **Cuidado com o uso de `late`**: Se você tentar acessar uma variável `late` sem inicializá-la primeiro, ocorrerá um **erro de execução**. Isso acontece porque o Dart não consegue garantir que o valor da variável foi atribuído antes de seu uso, o que pode resultar em comportamento indesejado na aplicação.

- **Uso inadequado do `late`**: O uso inadequado anula o principal benefício do null safery, que é a indicação do erro em tempo de compilação.

📌 **Documentação Oficial - `late`**  
[Link para a documentação oficial](https://dart.dev/guides/language/language-tour#late-variables)

---

## 3º Exemplo: Inicialização via Construtor (Parâmetros Posicionais)
Agora, usaremos um construtor para garantir que os atributos sejam inicializados corretamente ao criar a instância da classe. Isso elimina a possibilidade de valores nulos ou não inicializados.

```dart
import 'dart:io';

void main() {
  // Solicitando o nome via console
  print('Digite seu nome:');
  String nome = stdin.readLineSync() ?? ''; // Lê o nome

  // Solicitando o peso via console
  print('Digite seu peso:');
  double peso = double.tryParse(stdin.readLineSync() ?? '0') ?? 0; // Lê e converte o peso para double

  // Criando a instância da classe Pessoa com parâmetros posicionais
  Pessoa pessoa = Pessoa(nome, peso);

  // Imprimindo os dados da pessoa
  print('Nome: ${pessoa.nome}, Peso: ${pessoa.peso} kg');
}

class Pessoa {
  // Atributos obrigatórios no construtor
  String nome;
  double peso;

  // Construtor que inicializa os atributos
  Pessoa(this.nome, this.peso);
}
```
### Explicação

- **Construtor Pessoa(this.nome, this.peso)**: Usamos esse construtor para inicializar os atributos da classe `Pessoa` logo ao criar o objeto. O modificador `this` permite que os parâmetros do construtor sejam atribuídos diretamente aos atributos da classe.

- **Vantagem**: Ao usar esse tipo de construtor, o Dart garante que os valores dos atributos sejam sempre inicializados corretamente no momento da criação da instância da classe, evitando a possibilidade de atribuições nulas ou incorretas.

📌 **Documentação Oficial - Construtores**  
[Link para a documentação oficial](https://dart.dev/guides/language/language-tour#constructors)

---

## 4º Exemplo: Construtor com Parâmetros Nomeados

Agora, utilizamos parâmetros nomeados no construtor, o que melhora a legibilidade do código. Parâmetros nomeados são especialmente úteis quando se tem muitos parâmetros em um construtor.

```dart
import 'dart:io';

void main() {
  // Solicitando o nome via console
  print('Digite seu nome:');
  String nome = stdin.readLineSync() ?? ''; // Lê o nome

  // Solicitando o peso via console
  print('Digite seu peso:');
  double peso = double.tryParse(stdin.readLineSync() ?? '0') ?? 0; // Lê e converte o peso para double

  // Criando a instância da classe Pessoa com parâmetros nomeados
  Pessoa pessoa = Pessoa(nome: nome, peso: peso);

  // Imprimindo os dados da pessoa
  print('Nome: ${pessoa.nome}, Peso: ${pessoa.peso} kg');
}

class Pessoa {
  // Atributos obrigatórios no construtor com parâmetros nomeados
  String nome;
  double peso;

  // Construtor com parâmetros nomeados
  Pessoa({required this.nome, required this.peso});
}
```
### Explicação

- **Parâmetros nomeados - Vantagem**: O uso de parâmetros nomeados torna o código mais legível, especialmente quando a classe possui muitos atributos. Dessa forma, fica claro quais valores estão sendo atribuídos a quais atributos.

- **required**: O modificador `required` é utilizado para garantir que os parâmetros nomeados sejam passados obrigatoriamente ao instanciar o objeto. Isso evita que o construtor seja chamado sem os dados necessários para a criação do objeto.


📌 **Documentação Oficial - Parâmetros Nomeados**  
[Link para a documentação oficial](https://dart.dev/guides/language/language-tour#named-parameters)


---

## 5º Exemplo: Uso de get e set para Validação

Agora, vamos incluir métodos get e set para validar os dados antes de modificar os atributos da classe.

```dart
import 'dart:io';

void main() {
  // Solicitando o nome via console
  print('Digite seu nome:');
  String nome = stdin.readLineSync() ?? ''; // Lê o nome

  // Solicitando o peso via console
  print('Digite seu peso:');
  double peso = double.tryParse(stdin.readLineSync() ?? '0') ?? 0; // Lê e converte o peso para double

  // Criando a instância da classe Pessoa com parâmetros nomeados
  Pessoa pessoa = Pessoa(nome: nome, peso: peso);

  // Imprimindo os dados da pessoa
  print('Nome: ${pessoa.nome}, Peso: ${pessoa.peso} kg');
}

class Pessoa {
  // Atributos privados para encapsulamento
  String _nome;
  double _peso;

  // Construtor com parâmetros nomeados
  Pessoa({required String nome, required double peso}) : _nome = nome, _peso = peso;

  // Getter para acessar o nome
  String get nome => _nome;

  // Setter para modificar o nome
  set nome(String novoNome) {
    if (novoNome.isNotEmpty) {
      _nome = novoNome; // Se o nome não for vazio, atribui o novo valor
    } else {
      throw Exception('Nome inválido!'); // Se o nome for vazio, exibe um erro
    }
  }

  // Getter para acessar o peso
  double get peso => _peso;

  // Setter para modificar o peso com validação
  set peso(double novoPeso) {
    if (novoPeso > 0) {
      _peso = novoPeso; // Se o peso for válido, atribui o valor
    } else {
      throw Exception('Peso inválido!'); // Se o peso for inválido, exibe um erro
    }
  }
}
```
### Explicação

- **_peso**: O atributo `_peso` é declarado como privado, o que significa que não pode ser acessado diretamente fora da classe. Ele é acessado por meio de um *getter* e um *setter*.

- **Set**: O *setter* é utilizado para realizar uma validação antes de definir o valor do atributo. Neste caso, o *setter* garante que o peso seja sempre positivo antes de ser atribuído ao atributo `_peso`.

📌 **Documentação Oficial - Getters e Setters**  
[Link para a documentação oficial](https://dart.dev/guides/language/language-tour#getters-and-setters)

---

## 6º Exemplo: Parâmetro do tipo função no construtor

Podemos definir um parâmetro do tipo função no construtor. Neste exemplo, criamos a classe Pessoa com os atributos nome, peso e altura, além de um parâmetro do tipo função chamado calcularIMC, que calcula o Índice de Massa Corporal (IMC).

```dart
class Pessoa {
  String nome;
  double peso;
  double altura;
  double Function(double, double) calcularIMC; // Parâmetro do tipo função

  Pessoa(this.nome, this.peso, this.altura, this.calcularIMC);
}

double calcularIMCFunc(double peso, double altura) {
  return peso / (altura * altura);
}

void main() {
  Pessoa pessoa = Pessoa("Carlos", 80.0, 1.75, calcularIMCFunc);

  print("Nome: ${pessoa.nome}");
  print("IMC: ${pessoa.calcularIMC(pessoa.peso, pessoa.altura)}");
}

```

### 📖 Explicação:

Criamos a classe Pessoa com um parâmetro de função calcularIMC.

Definimos uma função nomeada calcularIMCFunc que calcula o IMC.

Passamos essa função como argumento na instância da classe Pessoa.

No main(), chamamos a função armazenada no objeto para calcular o IMC.

📌 Mais sobre funções em Dart: [Funções no Dart](https://dart.dev/language/functions)

---

## 7º Exemplo: Função anônima como parâmetro

A diferença para o exemplo anterior é que agora passamos uma função anônima diretamente no construtor, sem criar uma função nomeada separada.

```dart
class Pessoa {
  String nome;
  double peso;
  double altura;
  double Function(double, double) calcularIMC; // Parâmetro do tipo função

  Pessoa(this.nome, this.peso, this.altura, this.calcularIMC);
}

void main() {
  Pessoa pessoa = Pessoa(
    "Carlos",
    80.0,
    1.75,
    (peso, altura) => peso / (altura * altura), // Função anônima
  );

  print("Nome: ${pessoa.nome}");
  print("IMC: ${pessoa.calcularIMC(pessoa.peso, pessoa.altura)}");
}

```
### 📖 Explicação:
A função anônima (peso, altura) => peso / (altura * altura) é passada diretamente no construtor.

Isso elimina a necessidade de criar uma função nomeada separadamente.

📌 Mais sobre funções anônimas em Dart: [Funções anônimas](https://dart.dev/language/functions#anonymous-functions)

---

##  8º Exemplo: Associação entre classes (instância com referência)

Agora, além do parâmetro do tipo função, introduzimos a associação de classes. Criamos a classe Cidade e a associamos à Pessoa, representando a cidade onde a pessoa mora.

```dart
class Cidade {
  String nome;
  String estado;

  Cidade(this.nome, this.estado);
}

class Pessoa {
  String nome;
  double peso;
  double altura;
  double Function(double, double) calcularIMC;
  Cidade cidade; // Associação com a classe Cidade

  Pessoa(this.nome, this.peso, this.altura, this.calcularIMC, this.cidade);
}

void main() {
  var cidadeNatal = Cidade("São Paulo", "SP"); // Instância com referência
  var pessoa = Pessoa(
    "Carlos",
    80.0,
    1.75,
    (peso, altura) => peso / (altura * altura),
    cidadeNatal,
  );

  print("Nome: ${pessoa.nome}");
  print("Cidade: ${pessoa.cidade.nome}, ${pessoa.cidade.estado}");
  print("IMC: ${pessoa.calcularIMC(pessoa.peso, pessoa.altura)}");
}
```

### 📖 Explicação:

Criamos a classe Cidade, que representa a cidade onde a pessoa mora.

Na classe Pessoa, adicionamos um atributo cidade que recebe um objeto da classe Cidade.

No main(), primeiro criamos uma instância de Cidade e depois passamos essa referência ao instanciar Pessoa.

📌 Mais sobre classes e objetos em Dart: [Classes no Dart](https://dart.dev/language/classes)

---

## 9º Exemplo: Instância anônima na associação

Agora, em vez de criar uma variável separada para Cidade, instanciamos a cidade diretamente no construtor da Pessoa (instância anônima).


```dart
class Cidade {
  String nome;
  String estado;

  Cidade(this.nome, this.estado);
}

class Pessoa {
  String nome;
  double peso;
  double altura;
  double Function(double, double) calcularIMC;
  Cidade cidade; // Associação com a classe Cidade

  Pessoa(this.nome, this.peso, this.altura, this.calcularIMC, this.cidade);
}

void main() {
  var pessoa = Pessoa(
    "Carlos",
    80.0,
    1.75,
    (peso, altura) => peso / (altura * altura),
    Cidade("São Paulo", "SP"), // Instância anônima de Cidade
  );

  print("Nome: ${pessoa.nome}");
  print("Cidade: ${pessoa.cidade.nome}, ${pessoa.cidade.estado}");
  print("IMC: ${pessoa.calcularIMC(pessoa.peso, pessoa.altura)}");
}
```

### 📖 Explicação:

Em vez de armazenar a cidade em uma variável, instanciamos Cidade diretamente no construtor de Pessoa.

Isso torna o código mais abreviado quando a cidade não precisa ser reutilizada em outros lugares.

📌 Mais sobre instâncias e construtores: [Construtores no Dart](https://dart.dev/language/constructors)

### 📌 Resumo das diferenças entre os exemplos

Exemplo	Diferença principal

- 6º	Função nomeada como parâmetro do construtor
- 7º	Função anônima como parâmetro do construtor
- 8º	Associação entre classes com instância por referência
- 9º	Associação entre classes com instância anônima

