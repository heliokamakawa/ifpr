# Pacote path

## O que é

Biblioteca para montar caminhos de arquivos corretamente.

## Onde encontrar

https://pub.dev/packages/path

## Como adicionar

No terminal:

```bash
flutter pub add path
```

## Para que serve

Definir o caminho do banco sem erro entre diferentes plataformas.

## Exemplo

```dart
join(diretorio, 'app.db');
```

## Onde aparece

* definição do caminho do banco
* uso com getDatabasesPath()

## Observação

Evita erro ao montar caminhos manualmente.

## Referências

https://pub.dev/packages/path

## Ligação com o próximo assunto

Com a conexão pronta e o caminho do banco entendido, podemos usar o banco em uma classe DAO.

O próximo arquivo mostra o código completo de um DAO simples.
