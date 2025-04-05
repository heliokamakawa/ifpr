
## Classe Estado

```dart
class Estado{
  final String nome;
  final String sigla;

  Estado({required this.nome, required this.sigla}){
    if (nome.trim().isEmpty) throw Exception('Erro: nome não pode ser nulo');
    if (sigla.trim().isEmpty) throw Exception('Erro: sigla não pode ser nulo');
    if (sigla.length > 2 || sigla.length < 2) throw Exception('Erro: sigla deve ter 2 caracteres.');
  } 
}
```
## Classe Cidade

```dart
import 'package:flutter_introducao/estado.dart';

class Cidade{
  String nome;
  Estado estado;

  Cidade({required this.nome, required this.estado}){
    if (nome.trim().isEmpty) throw Exception('Erro: nome não pode ser nulo');
  }
}
```
## Classe Pessoa

Exemplo de classe com associação aninhada, pessoa associado com cidade, que por sua vez tem uma associação com estado.
Nesta classe temos a oportunidade de ver, além das propriedades, o método calcular idade.

Uma classe é a organização (gaveta) do código, seja validação (propriedade), definição de características (atributos), como criar (construtores) e suas ações (métodos - calcular idade).

```dart
import 'package:flutter_introducao/cidde.dart';

class Pessoa{
  String nome;
  String sobrenome;
  int anoNascimento;
  double peso;
  bool ativo;
  Cidade cidade;

  Pessoa({required this.nome, required this.sobrenome, required this.anoNascimento, required this.peso, required this.ativo, required this.cidade}){
    if (nome.trim().isEmpty) throw Exception('Erro: nome não pode ser nulo');
    if (sobrenome.trim().isEmpty) throw Exception('Erro: sobrenome não pode ser nulo');
    var anoAtual = DateTime.now().year;
    if (anoNascimento > anoAtual+1 || anoNascimento < anoAtual-120) throw Exception('Erro: ano inválido.');
    if (peso < 0 || peso < 200) throw Exception('Erro: peso inválido.');
  } 

  int calcularIdade(){
    return DateTime.now().year - anoNascimento;
  }
}

```

### Classe PessoaConsole → Tela/Interface

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
    if(entrada != 'S' && entrada != 'N'){
      print('Erro: entrada inválida');
      throw Exception();
    }
    return entrada == 'S';
  }
}

```

