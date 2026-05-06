# SQL

## Para que serve

Manipular dados no banco.

## Onde aparece

Dentro das chamadas do sqflite.

## Exemplos

### Criar tabela

```dart
await db.execute('''
CREATE TABLE estado (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nome TEXT,
  sigla TEXT
)
''');
```

---

### Inserir dados

```dart
await db.rawInsert(
  'INSERT INTO estado (nome, sigla) VALUES (?, ?)',
  ['Paraná', 'PR'], // valores dos campos: nome, sigla
);
```

---

### Consultar dados

```dart
final result = await db.rawQuery(
  'SELECT * FROM estado',
);
```

---

### Atualizar dados

```dart
await db.rawUpdate(
  'UPDATE estado SET nome = ? WHERE id = ?',
  ['Novo Nome', 1], // valores dos campos: nome, id
);
```

---

### Excluir dados

```dart
await db.rawDelete(
  'DELETE FROM estado WHERE id = ?',
  [1], // valor do campo: id
);
```

## Observação

* O SQL define o que será feito
* O sqflite executa no banco
* Os `?` são substituídos pelos valores na ordem

## Referências

https://sqlite.org/lang.html
https://pub.dev/packages/sqflite
