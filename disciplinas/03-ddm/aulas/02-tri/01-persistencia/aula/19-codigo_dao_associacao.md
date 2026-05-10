# Código completo do DAO com associação

Este é o código completo do DAO de `Cidade`.

Ele trabalha com a associação entre `cidade` e `estado`.

```dart
import 'package:sqflite/sqflite.dart';

import '../dtos/cidade_com_estado_dto.dart';
import '../models/cidade.dart';

class CidadeDao {
  CidadeDao(this._bancoDados);

  final Database _bancoDados;

  static const String _tabela = 'cidade';

  static const String _selecionarComEstado = '''
    SELECT
      cidade.id,
      cidade.nome,
      cidade.estado_id,
      estado.nome  AS estado_nome,
      estado.sigla AS estado_sigla
    FROM cidade
    INNER JOIN estado ON estado.id = cidade.estado_id
  ''';

  Future<List<CidadeComEstadoDto>> buscarTodos() async {
    final List<Map<String, dynamic>> resultado = await _bancoDados.rawQuery(
      '$_selecionarComEstado ORDER BY cidade.nome',
    );

    return resultado.map(CidadeComEstadoDto.fromMap).toList();
  }

  Future<List<CidadeComEstadoDto>> buscarPorEstado(int estadoId) async {
    final List<Map<String, dynamic>> resultado = await _bancoDados.rawQuery(
      '$_selecionarComEstado WHERE cidade.estado_id = ? ORDER BY cidade.nome',
      [estadoId],
    );

    return resultado.map(CidadeComEstadoDto.fromMap).toList();
  }

  Future<Cidade?> buscarPorId(int id) async {
    final List<Map<String, dynamic>> resultado = await _bancoDados.rawQuery(
      'SELECT id, nome, estado_id FROM $_tabela WHERE id = ?',
      [id],
    );

    if (resultado.isEmpty) {
      return null;
    }

    return Cidade.fromMap(resultado.first);
  }

  Future<void> inserir(Cidade cidade) async {
    await _bancoDados.insert(_tabela, cidade.toMap());
  }

  Future<void> atualizar(Cidade cidade) async {
    await _bancoDados.update(
      _tabela,
      cidade.toMap(),
      where: 'id = ?',
      whereArgs: [cidade.id],
    );
  }

  Future<void> excluir(int id) async {
    await _bancoDados.delete(_tabela, where: 'id = ?', whereArgs: [id]);
  }
}
```

## Ligação com o próximo assunto

Este arquivo mostra o código inteiro do DAO com associação.

No próximo, vamos explicar o `JOIN`, o DTO e a diferença em relação ao DAO simples.

