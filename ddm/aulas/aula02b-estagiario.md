# Segunda versão do código com merlhorias


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

# Análise do Código

## Melhorias Implementadas:

- **Leitura de Dados:** A função `solicitarDados` centraliza a entrada de informações do usuário, padronizando a coleta de dados e tornando o código mais organizado.  
- **Validação de Entradas:** Agora há verificações que impedem a inserção de valores vazios ou inválidos, garantindo maior robustez.  
- **Conversão Segura:** As funções `solicitarNumero` e `solicitarNumeroDecimal` tratam exceções corretamente, evitando falhas inesperadas.  
- **Correção na Validação de Sim/Não:** A lógica da função `solicitarSimNao` foi ajustada, permitindo apenas respostas válidas.  

## Problemas que Ainda Persistem:

- **Tratamento de Exceções:** Ainda há trechos que podem interromper o programa devido à falta de um `try-catch` adequado. É essencial que erros sejam capturados e tratados corretamente.  
- **Falta de Estrutura Modular:** O código ainda é muito procedural. A ausência de classes dificulta a organização e reaproveitamento de código.  
- **Baixa Reutilização de Código:** Algumas funções poderiam ser melhor estruturadas para evitar repetições e tornar o código mais limpo e compreensível.  
- **Falta de Definição de Responsabilidades Mais Específica:** Embora tenha havido melhora, a separação de responsabilidades ainda é genérica. Algumas funções fazem mais do que deveriam, misturando lógica de negócios com entrada e saída de dados.  
- **Necessidade de Alterações Estruturais ao Invés de Implementações de Novos Módulos:** Quando novas funcionalidades são adicionadas, o código exige mudanças estruturais em vez de apenas incluir novos módulos de forma organizada. Isso indica que o sistema ainda não está bem arquitetado.  

## Nível Esperado para o 3º Ano e Como Melhorar:

Apesar das melhorias, o código ainda está abaixo do esperado para um aluno do 3º ano. Quem chegou até aqui demonstra uma boa capacidade de lógica e algoritmos, mas pouca afinidade com Programação Orientada a Objetos (POO). Essa deficiência pode ser um grande obstáculo para o desenvolvimento de projetos mais complexos e para a entrada no mercado de trabalho.

Agora é o momento de aprofundar-se em POO. Utilizar classes para representar as entidades do sistema, encapsular comportamentos dentro dessas classes e criar interações entre objetos são habilidades fundamentais para qualquer desenvolvedor.

## Por Que POO é Fundamental?

POO não é apenas um conceito de programação; é uma abordagem que facilitará sua vida em qualquer disciplina que envolva desenvolvimento de software. Seja em Engenharia de Software, Banco de Dados, Desenvolvimento Mobile, Web ou até Inteligência Artificial, a POO será sua aliada para estruturar sistemas grandes, reutilizar código e trabalhar de forma mais profissional.

No mercado, dificilmente você desenvolverá um sistema sozinho e do zero. Projetos grandes precisam de código organizado, reutilizável e modularizado para que equipes possam colaborar de forma eficiente. Quem domina POO tem uma vantagem enorme em qualquer área de tecnologia.

## Motivação Final:

Você já demonstrou que tem capacidade lógica e que consegue estruturar algoritmos. Agora é hora de dar o próximo passo! POO vai transformar a forma como você programa, tornando o código mais limpo, reutilizável e profissional. Investir nesse conhecimento não só ajudará a alcançar o nível esperado no curso, mas também abrirá portas para oportunidades incríveis no mercado de trabalho. 🚀

