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
# Análise do Código e Melhorias Possíveis

## 1. **Acoplamento de Interface**
### Problema:
O código está fortemente acoplado à interface, o que significa que, caso você precise mudar a tecnologia de interface (por exemplo, de terminal para interface gráfica ou web), será necessário alterar todo o código.

**Exemplo:**  
Se a lógica de coleta de dados e exibição de informações está diretamente ligada à interface do usuário (por exemplo, no `main()`), qualquer mudança na forma como a interface é construída pode quebrar a funcionalidade.

### O que o aluno do 3º ano já deveria saber:
Neste ponto, você já aprendeu sobre **abstração** e **desacoplamento**. Isso significa que a lógica de negócios e a interface de usuário devem ser separadas. Você pode usar conceitos como **injeção de dependências** e **padrões de projeto**, como o **MVC (Model-View-Controller)**, para isolar a lógica de negócios da interface.

### Como melhorar:
1. **Desacoplar a interface** da lógica de negócios.
2. Utilizar **interfaces** ou **classes abstratas** para que o código de negócios não dependa diretamente de tecnologias específicas de UI.
3. Aprofundar seus estudos em padrões de projeto como **MVC** e **MVVM** para separar ainda mais responsabilidades.

### Motivação:
Ao se aprofundar em boas práticas de desacoplamento, você estará criando um código que é mais fácil de manter e adaptar, seja para mudanças de tecnologia, seja para novos requisitos. Isso é uma habilidade valorizada por empresas, que buscam profissionais capazes de escrever código que evolui facilmente sem grandes riscos de quebrar a funcionalidade existente.

---

## 2. **Falta de Definição de Responsabilidades**
### Problema:
O código está muito concentrado, com múltiplas responsabilidades em um único local, como a coleta de dados, processamento e exibição. Isso cria um **módulo único** e grande, tornando o código difícil de entender e manter.

**Exemplo:**  
Tudo está dentro do `main()`, sem um padrão claro de responsabilidades. Isso dificulta a manutenção e a localização de partes específicas do código, além de aumentar o risco de erros quando for necessário modificar algo.

### O que o aluno do 3º ano já deveria saber:
Você já aprendeu sobre **separação de responsabilidades**, o que significa dividir seu código em **funções** e **classes** pequenas e focadas, cada uma com uma única responsabilidade.

### Como melhorar:
1. **Dividir o código** em **módulos menores**, cada um com uma responsabilidade clara.
2. Utilizar o conceito de **classes** com responsabilidades únicas, como classes para **controle**, **lógica de negócios**, e **dados**.
3. **Refatorar** o código para que ele siga a ideia do **Princípio da Responsabilidade Única (SRP)**.

### Motivação:
Quando você divide seu código de forma estruturada e clara, o código se torna muito mais fácil de entender e de modificar. Isso é essencial não apenas para a manutenção do código ao longo do tempo, mas também para **colocar novas funcionalidades rapidamente**, o que é uma habilidade muito demandada no mercado de trabalho.

---

## 3. **Dificuldade para Testes (Problemas com Testabilidade)**
### Problema:
Com o código atual, testar partes da lógica de negócios de forma independente se torna impossível. Se a interface de usuário e a lógica estão acopladas, você não consegue realizar **testes unitários** eficazes sem envolver toda a interface.

**Exemplo:**  
Testar a lógica de negócios sem interagir com a interface se torna inviável, o que complica a criação de testes eficientes e aumenta o risco de bugs não detectados.

### O que o aluno do 3º ano já deveria saber:
Por mais que, talvez, ainda não tenha aprendido realizar testes unitários, conceitos de POO bem aplicados definem em códigos com responsabilidade bem definidas que geralmente não requer alterações estruturais - que facilita os testes, compreensão e manutenção (é importante que o aluno do 3º ano tenha essa ciência e capacidade).

### Como melhorar:
1. **Separar a lógica de negócios da interface** para que você possa testar componentes de forma independente.
2. **Criar mocks** para simular partes do sistema que não estão diretamente relacionadas ao código que você deseja testar.
3. Estudar o uso de ferramentas como o **Mockito** (para Dart) para mockar dependências durante os testes.

### Motivação:
A habilidade de escrever código testável é uma das mais valorizadas no mercado de trabalho. Testes bem feitos garantem que o código funciona corretamente e facilita a **manutenção contínua** sem a introdução de novos erros. Isso também torna você um profissional mais confiável e capacitado.

---

## 4. **Necessidade de Alterações Estruturais ao Invés de Implementações de Novos Módulos**
### Problema:
Devido à falta de modularização e separação de responsabilidades, qualquer alteração ou novo recurso exige modificações estruturais em todo o código, ao invés de simplesmente adicionar novos módulos independentes.

**Exemplo:**  
Para adicionar uma nova funcionalidade ou corrigir um erro em uma parte do código, você acaba alterando a estrutura inteira, aumentando o risco de introduzir novos bugs.

### O que o aluno do 3º ano já deveria saber:
Você já estudou sobre **modularização** e como dividir o código em componentes que podem ser modificados ou atualizados de forma independente, sem afetar o restante da aplicação.

### Como melhorar:
1. **Aplicar a modularização** criando componentes independentes e reutilizáveis.
2. Aprender a usar **pacotes** e **bibliotecas** externas para expandir o funcionalidade do seu código sem modificar a estrutura principal.
3. Refatorar o código para que as alterações não afetem outras partes, utilizando **interfaces** e **herança** para garantir a independência dos módulos.

### Motivação:
Ter a capacidade de trabalhar com **módulos independentes** significa que você será capaz de adicionar novos recursos ou modificar o sistema sem comprometer a estabilidade do que já está funcionando. Isso é um diferencial importante para **entrar no mercado de trabalho** com boas oportunidades, pois a maioria das empresas busca desenvolvedores que possam **escalar** e **manter** sistemas de forma eficiente.

---

## **Conclusão e Dicas para Evoluir**
Você já tem a base necessária para escrever código limpo e bem estruturado, mas agora é hora de começar a aplicar essas práticas de forma consistente. A maneira mais eficiente de evoluir como programador é **praticando sempre** e aplicando os conceitos aprendidos, como **modularização**, **testabilidade** e **desacoplamento**.

Ao investir em melhorar a qualidade do seu código, você se torna um profissional mais **preparado** para enfrentar os desafios do mercado de trabalho. Empresas estão em busca de desenvolvedores que saibam escrever código não apenas para funcionar, mas para **manter, evoluir e escalar** de maneira eficiente.

Se você se dedicar a aprimorar essas habilidades, com certeza terá uma **grande vantagem competitiva** ao se candidatar a boas oportunidades profissionais, seja em grandes empresas de tecnologia ou startups inovadoras. O mercado está cheio de oportunidades para quem sabe **aplicar boas práticas**!

**Lembre-se**: **A qualidade do seu código é o reflexo da sua qualificação como profissional**. Quanto mais você investir no seu conhecimento, mais chances terá de **se destacar** e conquistar boas colocações no mercado.


# 📢 Mensagem Final  

O aprendizado contínuo é essencial para se tornar um desenvolvedor eficiente. Identifique seus pontos fracos e aprofunde-se neles. A complexidade dos conceitos tende a aumentar, e a prática constante, aliada a materiais complementares, é a chave para a evolução no desenvolvimento em Dart. 🚀



  
