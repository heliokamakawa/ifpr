# Aula 08 - Formularios, botoes e interacao basica

## Objetivo da aula

Encerrar a trilha inicial mostrando como montar formularios simples sem perder o foco principal do projeto: criar widgets e ler suas assinaturas.

## Arquivos do projeto relacionados

- `lib/widgets/form_estado.dart`
- `lib/widgets/form_cidade.dart`

## Ideia central

Nesta etapa, o foco nao precisa ser transformar o app em sistema completo.
O foco pode continuar sendo:

- reconhecer widgets de entrada de dados;
- entender diferenca entre campos e botoes;
- ler parametros;
- perceber quando a simplicidade e intencional.

## Conceitos abordados

### 1. `Form`
 
O `Form` funciona como agrupador de campos relacionados.

No projeto, ele pode ser lido primeiro como estrutura de organizacao.
Nao e necessario, neste momento, mergulhar em todo o ciclo de validacao se isso atrapalhar a clareza da turma.

### 2. `TextFormField`

Exemplo:

```dart
TextFormField(
  decoration: InputDecoration(
    label: Text('Nome:'),
    hintText: 'Nome do estado',
  ),
)
```

Pontos para destacar:

- o campo tambem e widget;
- `decoration` e outro objeto;
- `label` e `hintText` ajudam a discutir responsabilidade de parametros.

### 3. `DropdownButton`

Exemplo conceitual:

```dart
DropdownButton<String>(
  items: [...],
  onChanged: (value) {},
)
```

Pontos para destacar:

- o dropdown apresenta opcoes;
- `items` ajuda a revisar lista de widgets;
- `onChanged` recebe funcao.

### 4. `ElevatedButton`

Exemplo:

```dart
ElevatedButton(
  onPressed: () {
    print('teste');
  },
  child: Text('Enviar'),
)
```

Pontos para destacar:

- botao tambem recebe funcao por parametro;
- o projeto pode manter submissao simples de forma proposital;
- o essencial aqui e o aluno entender composicao e evento.

## Observacao didatica importante

Neste projeto, manter formularios simples faz sentido pedagogico.

Adicionar logo de inicio:

- validacao completa;
- controllers;
- gerenciamento mais elaborado;
- persistencia;

pode desviar do objetivo principal, que e ganhar fluencia na criacao de widgets.

## Quando aprofundar depois

Depois que a base estiver firme, a turma pode avancar para:

- validacao de formulario;
- `GlobalKey<FormState>`;
- leitura do valor dos campos;
- feedback visual com `SnackBar`;
- versoes mais completas de dropdown em formularios.

## O que vale enfatizar em sala

- simplicidade aqui e escolha pedagogica, nao desconhecimento tecnico;
- o aluno deve sair desta aula conseguindo montar campos, botoes e uma estrutura minima de formulario;
- a documentacao oficial continua sendo o lugar certo para aprofundar quando a base estiver pronta.

## Perguntas formativas uteis

- Qual widget agrupa os campos?
- Quais parametros ajudam a descrever o campo para o usuario?
- Que tipo de dado `onPressed` e `onChanged` recebem?
- O que esta simples por estrategia didatica e o que ainda pode evoluir depois?

## Referencias oficiais

- Flutter API: `Form`  
  https://api.flutter.dev/flutter/widgets/Form-class.html

- Flutter API: `TextFormField`  
  https://api.flutter.dev/flutter/material/TextFormField-class.html

- Flutter API: `DropdownButton`  
  https://api.flutter.dev/flutter/material/DropdownButton-class.html

- Flutter API: `DropdownButtonFormField`  
  https://api.flutter.dev/flutter/material/DropdownButtonFormField-class.html

- Flutter API: `ElevatedButton`  
  https://api.flutter.dev/flutter/material/ElevatedButton-class.html

- Flutter cookbook: Build a form with validation  
  https://docs.flutter.dev/cookbook/forms/validation

## Resultado esperado da aula

Ao fim desta aula, o aluno deve conseguir montar formularios introdutorios, entender o papel dos widgets de entrada de dados e perceber que ha espaco para aprofundamento futuro sem perder a base.
