# Aula 09 - Projeto Flutter (Widgets + POO)

## Objetivo (didatico)

- Revisar POO em Dart: classe, objeto, atributos, construtores, `required`, `final`, composicao
- Entender widgets como objetos (instancias) e ganhar fluencia em parametros nomeados
- Praticar organizacao do app: `main()`, `MaterialApp`, rotas e navegacao (`Navigator`)
- Evoluir para telas reais: formularios, listas, detalhes e estado quando necessario

## Objetivo (projeto)

Desenvolver um app Flutter **individual** com **10 telas navegaveis**, escolhendo um dominio livre (academia, clinica, biblioteca, pet shop, etc.).

## Onde esta o projeto

O Flutter project (pasta que contem `pubspec.yaml`) esta em:

`aula-09-projeto/flutter_widgets_poo-main/flutter_widgets_poo-main`

## Como executar

1. Verifique o ambiente:
   - `flutter doctor`
2. Dentro da pasta do projeto:
   - `flutter pub get`
   - `flutter run`

## Como estudar (ordem recomendada)

Use como guia principal:

- `lib/COMO_ESTUDAR.md`

Resumo da sequencia:

1. `lib/poo/*` (aula01..aula04 + `.md`)
2. Entrada e organizacao: `lib/main.dart`, `lib/configuracoes/*`
3. Widgets/telas: `lib/widgets/*`
4. Atividades: `lib/atividade/*`
5. Repertorio/consulta: `lib/dicas_hardcore/*`

Dica pratica: leia primeiro o `.dart`, tente explicar com suas palavras, depois leia o `.md` correspondente e volte ao codigo.

## O que ja existe (para usar como referencia)

- Rotas e navegacao: `lib/configuracoes/rotas.dart` e `lib/configuracoes/my_app.dart`
- Tela principal (menu) com `Navigator.pushNamed`: `lib/widgets/principal.dart`
- Exemplos simples de formulario: `lib/widgets/form_estado.dart` e `lib/widgets/form_cidade.dart`
- Exemplo de estado e `setState`: `lib/widgets/my_home_page.dart`

## Atividades (orientacoes)

- Treino de criacao de objetos/instancias anonimas: `lib/atividade/01-atividade_poo.md`
- Projeto do app com 10 telas: `lib/atividade/02-poo_widget.md`

