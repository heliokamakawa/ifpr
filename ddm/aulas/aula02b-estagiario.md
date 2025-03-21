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
  if(entrada != 'S' || entrada != 'N'){ 
    print("Valor inválido. Insira 'S' para sim ou 'N' para não.");
    throw Exception();
  }
  return entrada == 'S';
}

void main() {
  var nome = solicitarDados("Digite seu nome:");
  var sobrenome = solicitarDados("Digite seu sobrenome:");
  var anoNascimento = solicitarNumero("Digite o ano de nascimento:");
  var peso = solicitarNumeroDecimal("Digite seu peso:");
  var nomeCidade = solicitarDados("Digite o nome da cidade onde mora:");
  var nomeEstado = solicitarDados("Digite o nome do estado onde mora:");
  var siglaEstado = solicitarDados("Digite a sigla do estado:");
  var ativo = solicitarSimNao("Digite se é ativo (S/N):");
  
  var idade = DateTime.now().year - anoNascimento; // Cálculo da idade

  // Exibindo os dados
  print('Nome completo (concatenação): ' + nome + ' ' + sobrenome); //contatenação
  print('Nome completo (interpolação): $nome $sobrenome'); //interpolação
  print('Dados completos:');
  print('Nome: $nome\nSobrenome: $sobrenome\nAno de Nascimento: $anoNascimento\nPeso: $peso kg\nCidade: $nomeCidade\nEstado: $nomeEstado ($siglaEstado)\nStatus: $ativo \nIdade: $idade');
}
```
