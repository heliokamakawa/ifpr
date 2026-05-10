# Programação assíncrona

## Por que falar de assincronia

Operações de banco de dados podem levar tempo.

Mesmo em um banco local, o aplicativo precisa acessar armazenamento, executar comandos e receber respostas.

Se o aplicativo ficar esperando tudo isso de forma bloqueante, a interface pode travar.

## Operação síncrona

Uma operação síncrona acontece em sequência.

O programa executa uma instrução e espera ela terminar antes de continuar.

Isso é simples de entender, mas pode causar travamentos quando a operação demora.

## Operação assíncrona

Uma operação assíncrona permite iniciar uma tarefa que será concluída depois.

Enquanto isso, o aplicativo pode continuar funcionando.

No Dart e no Flutter, usamos `Future`, `async` e `await` para trabalhar com esse tipo de operação.

## Future

Um `Future` representa um valor que estará disponível no futuro.

Exemplo:

```dart
Future<List<Estado>> listarEstados()
```

Esse método promete devolver uma lista de estados, mas não imediatamente.

## async

A palavra `async` indica que uma função possui operações assíncronas.

Exemplo:

```dart
Future<void> salvar() async {
  // operações assíncronas aqui
}
```

## await

A palavra `await` espera o resultado de um `Future`.

Exemplo:

```dart
final estados = await estadoDao.listarTodos();
```

O código fica com aparência sequencial, mas sem bloquear a aplicação da mesma forma que uma espera síncrona comum.

## Banco de dados e async/await

Bibliotecas de banco em Flutter geralmente usam métodos assíncronos.

Por isso, operações como abrir banco, inserir dados e consultar registros costumam usar `await`.

Exemplo:

```dart
final db = await openDatabase('app.db');
```

## Erro comum

Um erro comum é esquecer o `await`.

Nesse caso, o código pode tentar usar um resultado que ainda não ficou pronto.

Outro erro comum é marcar uma função como `async`, mas não ajustar o tipo de retorno para `Future`.

## Perguntas para verificar entendimento

* Por que uma operação de banco pode ser assíncrona?
* O que é um `Future`?
* Para que serve `await`?
* O que pode acontecer se você esquecer o `await`?
* Por que não queremos travar a interface do aplicativo?

