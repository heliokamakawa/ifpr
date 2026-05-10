# Código completo do DAO simples

Este é o código completo do DAO de `Estado`.

Ele representa um CRUD simples, sem associação.

```dart
import 'package:sqflite/sqflite.dart';

import '../models/estado.dart';

class EstadoDao {
  EstadoDao(this._bancoDados);

  final Database _bancoDados;

  static const String _tabela = 'estado';

  Future<List<Estado>> buscarTodos() async {
    final List<Map<String, dynamic>> resultado = await _bancoDados.rawQuery(
      'SELECT id, nome, sigla FROM $_tabela ORDER BY nome',
    );

    return resultado.map(Estado.fromMap).toList();
  }

  Future<Estado?> buscarPorId(int id) async {
    final List<Map<String, dynamic>> resultado = await _bancoDados.rawQuery(
      'SELECT id, nome, sigla FROM $_tabela WHERE id = ?',
      [id],
    );

    if (resultado.isEmpty) {
      return null;
    }

    return Estado.fromMap(resultado.first);
  }

  Future<void> inserir(Estado estado) async {
    await _bancoDados.insert(_tabela, estado.toMap());
  }

  Future<void> atualizar(Estado estado) async {
    await _bancoDados.update(
      _tabela,
      estado.toMap(),
      where: 'id = ?',
      whereArgs: [estado.id],
    );
  }

  Future<void> excluir(int id) async {
    await _bancoDados.delete(_tabela, where: 'id = ?', whereArgs: [id]);
  }
}
```

## Ligação com o próximo assunto

Este arquivo mostra o código inteiro do DAO simples.

No próximo, vamos explicar o papel de cada método.

