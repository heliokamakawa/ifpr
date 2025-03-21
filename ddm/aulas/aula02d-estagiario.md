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
