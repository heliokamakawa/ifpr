# Aula 01 - Fundamentos de POO em Dart

## Objetivo da aula

Apresentar a base de orientacao a objetos que o restante do projeto reutiliza o tempo todo.

O foco aqui nao e Flutter ainda.
O foco e fazer o aluno reconhecer:

- classe;
- objeto;
- atributo;
- construtor;
- variavel que referencia objeto;
- acesso a membros com `.`;
- diferenca entre "classe" e "instancia".

## Arquivos do projeto relacionados

- `lib/poo/aula01.dart`
- `lib/poo/aula01.md`

## Ideia central

Antes de entender widget, o aluno precisa entender que widget tambem e objeto.

Por isso, esta aula serve como base para responder perguntas como:

- o que e uma classe?
- o que e um objeto criado a partir dela?
- o que significa acessar `estado.nome`?
- por que um objeto pode nascer incompleto?

## Conceitos abordados

### 1. Classe

Classe e o molde usado para definir estrutura e comportamento.

Exemplo conceitual:

```dart
class Estado {
  int? id;
  String? nome;
  String? sigla;
}
```

Pontos para destacar:

- a classe define o tipo;
- ela ainda nao e o objeto concreto em uso;
- ela descreve o que um objeto desse tipo pode ter.

### 2. Objeto

Objeto e a instancia concreta criada a partir da classe.

Exemplo:

```dart
Estado estado = Estado();
```

Pontos para destacar:

- `Estado` e a classe;
- `Estado()` e a chamada do construtor;
- `estado` e a variavel que guarda a referencia do objeto.

### 3. Atributos

Atributos guardam dados do objeto.

Exemplo:

```dart
estado.nome = 'Parana';
```

Pontos para destacar:

- o operador `.` acessa membros;
- o objeto pode receber dados depois de ser criado;
- isso funciona, mas pode deixar o modelo fragil.

### 4. Objeto incompleto

Esta primeira modelagem existe para mostrar um problema didatico importante:

- o objeto nasce vazio;
- os dados sao preenchidos aos poucos;
- durante parte da execucao ele pode estar inconsistente.

Essa percepcao prepara naturalmente a aula seguinte.

## O que vale enfatizar em sala

- funcionar nao significa estar bem modelado;
- um objeto vazio pode existir, mas isso pode abrir espaco para erro;
- o aluno deve primeiro enxergar o problema antes de decorar a solucao melhor.

## Perguntas formativas uteis

- Onde esta a classe?
- Onde esta o objeto?
- Onde esta a variavel que aponta para o objeto?
- O que acontece se algum atributo nao for preenchido?

## Referencias oficiais

- Dart: Classes  
  https://dart.dev/language/classes

- Dart: Constructors  
  https://dart.dev/language/constructors

- Dart: Variables  
  https://dart.dev/language/variables

## Resultado esperado da aula

Ao fim desta aula, o aluno deve conseguir olhar para um trecho simples e identificar:

- qual e a classe;
- qual e o objeto;
- quais sao os atributos;
- por que um objeto criado vazio pode ser um risco.
