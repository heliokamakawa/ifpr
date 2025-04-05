
# Classe Estado

Exemplo de uma classe simples. Repare que todo código/responsabilidade referente a estado está concetrado nesta classe. 
Esta organização facilita a manutenção. Visto que, qualquer refatoração em relação a estado está neste arquivo.

```dart
class Estado{
  late String _nome;
  late String _sigla;

  String get nome => _nome; 
  set nome(String nome){
    if (nome.trim().isEmpty) throw Exception('Erro: nome não pode ser nulo');
    _nome = nome;
  }

  String get sigla => _sigla; 
  set sigla(String sigla){
    if (sigla.trim().isEmpty) throw Exception('Erro: sigla não pode ser nulo');
    if (sigla.length > 2 || sigla.length < 2) throw Exception('Erro: sigla deve ter 2 caracteres.');
    _sigla = sigla;
  }

  Estado({required String nome, required String sigla}){
    this.nome = nome;
    this.sigla = sigla;
  } 
}

```
**Encapsulamento:** Os atributos _nome e _sigla são privados, acessíveis apenas através dos getters e setters.
**Validação:** Os setters garantem que os dados inseridos sejam válidos (nome e sigla não vazios, sigla com 2 caracteres).
**Construtor Nomeado:** O construtor utiliza parâmetros nomeados "{}", facilitando a criação de instâncias e melhorando a legibilidade do código.
**Inicialização:** não é possível iniciarliar uma propriedade na lista de inicialização - a lista roda antes do construtor e propriedades não estão prontas.
**late:** o modificador late é necessário em _nome e _sigla porque a inicialização ocorre indiretamente, através dos setters nome e sigla. O construtor tenta atribuir valores a esses atributos por meio dos setters, que podem lançar uma exceção se a validação falhar. O late garante que o compilador considere esses campos como definitivamente atribuídos, mesmo que a atribuição possa não ocorrer em todos os fluxos de execução (devido a uma possível exceção). Isso evita erros de compilação relacionados à não inicialização de variáveis não anuláveis, sem comprometer a segurança, pois o programa falhará se os campos forem acessados antes de uma atribuição bem-sucedida - uso correto do late.

### Classe Cidade
Exemplo de classe com associação. Repare que todo código/responsabilidade referente à cidade está concentrado nesta classe.  Observe que Estado faz parte da responsabilidade de Cidade, mas é sub-organizado com uma associação, visto que tem uma importância (tamanho do código) que justifica a definição de uma classe à parte. Devido ao volume de código, colocar tudo na classe Cidade a tornaria confusa e difícil de entender e manter. A associação permite que Cidade utilize a classe Estado para representar o estado em que se localiza, promovendo a reutilização de código e a organização. O construtor de Cidade recebe um objeto Estado já instanciado, demonstrando essa relação.

```dart
import 'package:flutter_introducao/estado.dart';

class Cidade{
  late String _nome;
  Estado estado;

  set nome(String nome){
    if (nome.trim().isEmpty) throw Exception('Erro: nome não pode ser nulo');
    _nome = nome;
  }
  String get nome => _nome; 

  Cidade({required String nome, required this.estado}){
    this.nome = nome;
  }
}

```
**Declaração de parâmetros diferentes no construtor* 
"required String nome" → é um parâmetro comum sem relação com a classe. 
"this.estado" faz a referência que se deve atribuir o parametro para o atributo estado.


### Classe Pessoa
Exemplo de classe com associação aninhada, pessoa associado com cidade, que por sua vez tem uma associação com estado.
Nesta classe temos a oportunidade de ver, além das propriedades, o mótodo calcular idade.
Uma classe é a organização (gaveta) do código, seja validação (propriedade), definição de características (atributos), como criar (construtores) e suas ações (métodos - calcular idade).



```dart
import 'package:flutter_introducao/cidde.dart';

class Pessoa{
  late String _nome;
  late String _sobrenome;
  late int _anoNascimento;
  late double _peso;
  bool ativo;
  Cidade cidade;

  String get nome => _nome; 
  set nome(String nome){
    if (nome.trim().isEmpty) throw Exception('Erro: nome não pode ser nulo');
    _nome = nome;
  }

  String get sobrenome => _sobrenome; 
  set sobrenome(String sobrenome){
    if (sobrenome.trim().isEmpty) throw Exception('Erro: sobrenome não pode ser nulo');
    _sobrenome = sobrenome;
  }

  int get anoNascimento => _anoNascimento; 
  set anoNascimento(int anoNascimento){
    int anoAtual = DateTime.now().year;
    if (anoNascimento > anoAtual+1 || anoNascimento < anoAtual-120) throw Exception('Erro: ano inválido.');
    _anoNascimento = anoNascimento;
  }

  double get peso => _peso; 
  set peso(double peso){
    if (peso > 0 || peso < 200) throw Exception('Erro: peso inválido.');
    _peso = peso;
  }

  Pessoa({required String nome, required String sobrenome, required int anoNascimento, required double peso, required this.ativo, required this.cidade}){
    this.nome = nome;
    this.sobrenome = sobrenome;
    this.anoNascimento = anoNascimento;
    this.peso = peso; 
  } 

  int calcularIdade(){
    return DateTime.now().year - _anoNascimento;
  }
}
/**
 Faça uma reflexão!
 1) No construtor:
  - Por que temos declarações vaiadas de parâmetros? (diferença entre this e o que não tem this)
  - Estamos utilizando parâmetros nomeados ou posicionais? Qual a diferença?
 */

```

### Classe PessoaConsole → Tela/Interface
Observe a orgaização "das gavetas":
→ classe estado, cidade e pessoa com responsabilidades especifícas sem dependencia de outras coisas (console, print, readline).
→ classe PessoaConsole com especificações de tela, como por exemplo: entrada de dados (readlinesync), saída de dados (print) e mostrar erros (print).
Poderia ser melhor?
r: com certeza! sempre pode! Mas aqui vai um começo simples e didático para aprender e refletir

```dart
import 'dart:io';
import 'package:flutter_introducao/cidde.dart';
import 'package:flutter_introducao/estado.dart';
import 'package:flutter_introducao/pessoa.dart';

class PessoaConsole{
  late Pessoa pessoa;

  solicitarDados(){
    try {
      var nome = _entrada('Nome:');
      var sobrenome = _entrada('sobrenome:');
      var anoNascimento = int.parse(_entrada('Ano Nascimento:'));
      var peso = double.parse(_entrada('Peso:'));
      var nomeCidade = _entrada('Nome Estado:');
      var siglaEstado = _entrada('Sigla Estado:');
      var nomeEstado = _entrada('Nome Estado');
      var pessoaEAtivo = _entradaSimNao();

      var estado = Estado(nome: nomeEstado, sigla: siglaEstado);
      var cidade = Cidade(nome: nomeCidade, estado: estado);
      pessoa = Pessoa(nome: nome, sobrenome: sobrenome, anoNascimento: anoNascimento, peso: peso, ativo: pessoaEAtivo, cidade: cidade);
      
    } catch (e) {
      print(e);
      solicitarDados();
    }
  }

  gerarSaida(){
    print('''
      Nome: ${pessoa.nome}
      Sobrenome: ${pessoa.sobrenome}
      Ano de Nascimento: ${pessoa.anoNascimento}
      Peso: ${pessoa.peso} kg
      Cidade: ${pessoa.cidade.nome}
      Estado: ${pessoa.cidade.estado.nome} (${pessoa.cidade.estado.sigla})
      Status: ${pessoa.ativo}
      Idade: ${pessoa.calcularIdade()}
    ''');
  }

  String _entrada(String rotulo){
    print(rotulo);
    var entrada = stdin.readLineSync();
    if(entrada == null){
      print('Erro: entrada nula');
      throw Exception();
    }
    return entrada;
  }

  bool _entradaSimNao(){
    var rotulo = 'É ativo? (S/N)';
    var entrada = _entrada(rotulo).toUpperCase();
    if(entrada != 'S' || entrada != 'N'){
      print('Erro: entrada inválida');
      throw Exception();
    }
    return entrada == 'S';
  }
}

```
A classe PessoaConsole atua como uma interface de console para interagir com o usuário. Ela é responsável por solicitar os dados de uma pessoa, criar os objetos necessários (Estado, Cidade e Pessoa) e exibir os dados da pessoa. A classe utiliza a classe Pessoa e suas dependências (Cidade e Estado) para realizar suas operações.

A classe PessoaConsole demonstra o **princípio da separação de responsabilidades**. Ela lida com a entrada e saída de dados, enquanto as outras classes (Estado, Cidade e Pessoa) lidam com a lógica de negócios e a representação dos dados.

A **aparente redundância** na declaração de variáveis na classe PessoaConsole é necessária para coletar e ter os dados necessários construir os objetiso que exigem a inicialização no construtor. Embora possa parecer repetitivo, essa prática cria objetos com todas as inicializações feitas no construtor! 

Isso garante a integridade dos dados e a segurança nula, pois evita a criação de objetos com valores nulos e assegura que todos os campos obrigatórios sejam inicializados no momento da criação do objeto. Essa prática promove a criação de objetos em um estado válido desde o início, reduzindo a possibilidade de erros e comportamentos inesperados devido à falta de inicialização adequada.

A organização do código em "gavetas" (classes) facilita a manutenção e a extensibilidade. Se houver necessidade de alterar a forma como os dados são exibidos ou coletados, basta modificar a classe PessoaConsole. Se a lógica de negócios mudar, as classes Estado, Cidade e Pessoa podem ser modificadas sem afetar a interface do usuário.

O código apresentado é um exemplo de como estruturar uma aplicação usando os princípios de POO. A separação de responsabilidades, o encapsulamento e a validação de dados tornam o código mais robusto, flexível e fácil de manter.

Poderia ser melhor?
r: com certeza! sempre pode! Mas aqui vai um começo simples e didático para aprender e refletir

Materiais Complementares
Encapsulamento em Dart: [Documentação Oficial do Dart](https://dart.dev/effective-dart/design#encapsulation)
Getters e Setters em Dart: [Documentação Oficial do Dart](https://dart.dev/effective-dart/design#getters-and-setters)
Construtores em Dart: [Documentação Oficial do Dart](https://dart.dev/language/constructors)
Separação de Responsabilidades: [The Single Responsibility Principle - Clean Coder Blog - Uncle Bob](https://blog.cleancoder.com/uncle-bob/2014/05/08/SingleReponsibilityPrinciple.html)


