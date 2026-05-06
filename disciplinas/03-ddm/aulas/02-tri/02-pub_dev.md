# Dependências no Flutter (pub.dev)

## Objetivo

Entender o que são dependências, como avaliar pacotes e como adicionar ao projeto.

## O que são dependências

Dependências são bibliotecas externas que adicionam funcionalidades ao projeto.

No Flutter, são gerenciadas pelo sistema de pacotes (pub).

## O que é o pub.dev

É o repositório oficial de pacotes do Dart/Flutter.

https://pub.dev

Permite:

* buscar bibliotecas
* verificar documentação
* analisar qualidade e manutenção
* decidir se vale usar um pacote

## Como avaliar um pacote

Antes de usar, observar:

* popularidade (likes, downloads)
* manutenção (data da última atualização)
* versão estável
* documentação disponível
* quem mantém o projeto
* issues abertas (problemas recorrentes)

Esses pontos ajudam a decidir se o pacote é confiável.

## Exemplo: sqflite

https://pub.dev/packages/sqflite

Verificar:

* número de downloads
* frequência de atualização
* documentação
* exemplos de uso

## Como adicionar uma dependência

No terminal:

flutter pub add sqflite
flutter pub add path

Ou diretamente no arquivo pubspec.yaml.

## O que acontece ao adicionar

* o pacote é baixado
* o projeto é atualizado
* pode ser importado no código

## Onde isso aparece no projeto

* arquivo pubspec.yaml
* importações no código
* uso de funções do pacote

## Boas práticas

* evitar adicionar pacotes sem necessidade
* preferir pacotes bem mantidos
* ler a documentação antes de usar
* entender o que o pacote faz

## Perguntas para reflexão

* Você realmente precisa desse pacote?
* Esse pacote é confiável?
* O que aconteceria se ele deixasse de ser mantido?
* Você entende o que ele está fazendo?

## Referências

https://docs.flutter.dev/packages-and-plugins/using-packages
https://pub.dev
https://pub.dev/packages/sqflite
