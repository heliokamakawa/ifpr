# Solução do Desafio 01: Implementar CRUD Real com SQLite para Vídeo-aula

## 📋 Descrição do Desafio

O desafio consiste em implementar o CRUD real (Create, Read, Update, Delete) para a entidade Vídeo-aula usando SQLite, substituindo os dados mockados por persistência real no banco de dados.

## 🎯 Objetivos de Aprendizagem

- Entender a diferença entre dados mockados e persistência real
- Praticar integração de formulários e listas com banco de dados SQLite
- Implementar operações CRUD completas com Flutter e SQLite
- Aplicar boas práticas de desenvolvimento com persistência local

## 🔍 Análise da Situação Atual

### O que já existe:
- ✅ DTO `DTOVideoAula` implementado
- ✅ Tabela `video_aula` criada no script SQLite
- ✅ DAO `DAOVideoAula` com métodos CRUD implementados
- ✅ Formulário `FormVideoAula` funcional
- ✅ Lista `ListaVideoAula` funcional
- ✅ Dados iniciais inseridos no banco

### O que precisa ser corrigido:
- ❌ DAO ainda importa dados mockados (linha 2 do arquivo)
- ❌ Método `inserirDadosIniciais` usa dados mockados

## 🛠️ Solução Implementada

### 1. Correção do DAO (dao_video_aula.dart)

```dart
import 'package:sqflite/sqflite.dart';
// REMOVER: import '../../mock/mock_video_aula.dart';
import '../../../dto/dto_video_aula.dart';
import '../conexao.dart';

class DAOVideoAula {
  static const String _nomeTabela = 'video_aula';

  Future<void> criarTabela(Database db) async {
    await db.execute('''
      CREATE TABLE IF NOT EXISTS $_nomeTabela (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nome TEXT NOT NULL,
        link_video TEXT,
        ativo INTEGER NOT NULL DEFAULT 1
      )
    ''');
  }

  // REMOVER este método ou adaptá-lo para não usar mock
  // Future<void> inserirDadosIniciais(Database db) async {
  //   final dados = mockVideoAulas;
  //   for (final dto in dados) {
  //     await inserir(db, dto);
  //   }
  // }

  Future<int> inserir(Database db, DTOVideoAula dto) async {
    return await db.insert(_nomeTabela, {
      'nome': dto.nome,
      'link_video': dto.linkVideo,
      'ativo': dto.ativo ? 1 : 0,
    });
  }

  Future<List<DTOVideoAula>> listarTodos(Database db) async {
    final List<Map<String, dynamic>> maps = await db.query(_nomeTabela);
    return List.generate(maps.length, (i) {
      return DTOVideoAula(
        id: maps[i]['id'],
        nome: maps[i]['nome'],
        linkVideo: maps[i]['link_video'],
        ativo: maps[i]['ativo'] == 1,
      );
    });
  }

  Future<DTOVideoAula?> buscarPorId(Database db, int id) async {
    final List<Map<String, dynamic>> maps = await db.query(
      _nomeTabela,
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return DTOVideoAula(
        id: maps[0]['id'],
        nome: maps[0]['nome'],
        linkVideo: maps[0]['link_video'],
        ativo: maps[0]['ativo'] == 1,
      );
    }
    return null;
  }

  Future<int> atualizar(Database db, DTOVideoAula dto) async {
    return await db.update(
      _nomeTabela,
      {
        'nome': dto.nome,
        'link_video': dto.linkVideo,
        'ativo': dto.ativo ? 1 : 0,
      },
      where: 'id = ?',
      whereArgs: [dto.id],
    );
  }

  Future<int> deletar(Database db, int id) async {
    return await db.delete(
      _nomeTabela,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<List<DTOVideoAula>> buscarPorNome(Database db, String nome) async {
    final List<Map<String, dynamic>> maps = await db.query(
      _nomeTabela,
      where: 'nome LIKE ? AND ativo = 1',
      whereArgs: ['%$nome%'],
    );
    
    return List.generate(maps.length, (i) {
      return DTOVideoAula(
        id: maps[i]['id'],
        nome: maps[i]['nome'],
        linkVideo: maps[i]['link_video'],
        ativo: maps[i]['ativo'] == 1,
      );
    });
  }

  // Métodos de conveniência para uso com a conexão singleton
  Future<void> salvar(DTOVideoAula dto) async {
    final db = await ConexaoSQLite.database;
    if (dto.id == null) {
      await inserir(db, dto);
    } else {
      await atualizar(db, dto);
    }
  }

  Future<List<DTOVideoAula>> listarTodosAtual() async {
    final db = await ConexaoSQLite.database;
    return await listarTodos(db);
  }

  Future<DTOVideoAula?> buscarPorIdAtual(int id) async {
    final db = await ConexaoSQLite.database;
    return await buscarPorId(db, id);
  }

  Future<void> deletarAtual(int id) async {
    final db = await ConexaoSQLite.database;
    await deletar(db, id);
  }
}
```

### 2. Adicionar Debug no Formulário (form_video_aula.dart)

```dart
Future<void> _salvar() async {
  if (_formKey.currentState?.validate() ?? false) {
    try {
      final dto = DTOVideoAula(
        id: widget.videoAula?.id,
        nome: _nomeController.text.trim(),
        linkVideo: _linkController.text.trim().isEmpty ? null : _linkController.text.trim(),
        ativo: _ativo,
      );
      
      // Debug: Mostrar o DTO criado
      debugPrint(dto.toString());
      
      await _daoVideoAula.salvar(dto);
      
      if (!mounted) return;
      
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(widget.videoAula == null 
            ? 'Vídeo-aula criada com sucesso!' 
            : 'Vídeo-aula atualizada com sucesso!'),
          backgroundColor: Colors.green,
        ),
      );
      
      Navigator.pushReplacementNamed(context, Rotas.listaVideoAula);
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Erro ao salvar vídeo-aula: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
```

### 3. Melhorar o DTO para Debug (dto_video_aula.dart)

```dart
import 'package:spin_flow/dto/dto.dart';

class DTOVideoAula implements DTO{
  @override
  final int? id;
  @override
  final String nome;
  final String? linkVideo;
  final bool ativo;

  DTOVideoAula({
    this.id,
    required this.nome,
    this.linkVideo,
    this.ativo = true,
  });

  @override
  String toString() {
    return 'DTOVideoAula{id: $id, nome: "$nome", linkVideo: "$linkVideo", ativo: $ativo}';
  }
}
```

## 🧪 Como Testar a Solução

### 1. Executar o Aplicativo
```bash
flutter run
```

### 2. Navegar para Vídeo-aulas
- Acesse a aba "Listas"
- Clique em "Vídeo-aulas"

### 3. Testar Operações CRUD

#### **Create (Criar)**
- Clique no botão "+" (FloatingActionButton)
- Preencha o formulário:
  - Nome: "Aula de Teste"
  - Link: "https://youtu.be/teste"
  - Ativo: true
- Clique em "Salvar"
- Verifique se aparece no console: `DTOVideoAula{id: null, nome: "Aula de Teste", linkVideo: "https://youtu.be/teste", ativo: true}`
- Confirme que a vídeo-aula aparece na lista

#### **Read (Ler)**
- A lista deve mostrar todas as vídeo-aulas do banco
- Dados iniciais já estão inseridos via script SQLite

#### **Update (Atualizar)**
- Clique em uma vídeo-aula na lista
- Modifique algum campo
- Clique em "Salvar"
- Verifique se as alterações persistem

#### **Delete (Deletar)**
- Clique no ícone de lixeira em uma vídeo-aula
- Confirme a exclusão
- Verifique se a vídeo-aula é removida da lista

## 📚 Documentação Oficial Referenciada

### Flutter
- [Flutter Documentation](https://docs.flutter.dev/)
- [Flutter Widgets](https://docs.flutter.dev/development/ui/widgets)
- [Flutter State Management](https://docs.flutter.dev/development/data-and-backend/state-mgmt/intro)
- [Flutter Navigation](https://docs.flutter.dev/development/ui/navigation)

### Dart
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)
- [Dart Asynchronous Programming](https://dart.dev/codelabs/async-await)
- [Dart Collections](https://dart.dev/guides/libraries/library-tour#collections)

### SQLite
- [SQLite Documentation](https://www.sqlite.org/docs.html)
- [SQLite Data Types](https://www.sqlite.org/datatype3.html)
- [SQLite SQL Syntax](https://www.sqlite.org/lang.html)

### sqflite (Flutter SQLite Plugin)
- [sqflite Package](https://pub.dev/packages/sqflite)
- [sqflite API Reference](https://pub.dev/documentation/sqflite/latest/)
- [sqflite Examples](https://github.com/simolus3/sqfite/tree/master/example)

### sqflite_common_ffi (Desktop Support)
- [sqflite_common_ffi Package](https://pub.dev/packages/sqflite_common_ffi)
- [Desktop Database Support](https://github.com/simolus3/sqfite/tree/master/sqflite_common_ffi)

### sqflite_common_ffi_web (Web Support)
- [sqflite_common_ffi_web Package](https://pub.dev/packages/sqflite_common_ffi_web)
- [Web Database Support](https://github.com/simolus3/sqfite/tree/master/sqflite_common_ffi_web)

## 🔧 Conceitos Técnicos Aplicados

### 1. **Padrão DAO (Data Access Object)**
- Separação de responsabilidades entre lógica de negócio e acesso a dados
- Interface unificada para operações de banco de dados
- Facilita testes e manutenção

### 2. **Singleton Pattern**
- Conexão SQLite implementada como singleton
- Garante uma única instância do banco de dados
- Otimiza uso de recursos

### 3. **CRUD Operations**
- **Create**: `INSERT` via método `inserir()`
- **Read**: `SELECT` via métodos `listarTodos()`, `buscarPorId()`
- **Update**: `UPDATE` via método `atualizar()`
- **Delete**: `DELETE` via método `deletar()`

### 4. **Async/Await Pattern**
- Operações de banco são assíncronas
- Uso de `Future<T>` para operações não-bloqueantes
- Tratamento adequado de erros com try/catch

### 5. **State Management**
- `setState()` para atualizar UI após operações de banco
- Verificação de `mounted` para evitar erros de widget desmontado
- Loading states para melhor UX

## 🎯 Benefícios da Solução

1. **Persistência Real**: Dados são salvos permanentemente no banco SQLite
2. **Performance**: Consultas otimizadas com índices automáticos
3. **Escalabilidade**: Estrutura preparada para crescimento
4. **Manutenibilidade**: Código organizado e bem documentado
5. **Testabilidade**: Separação clara entre camadas

## 🚀 Próximos Passos

Após implementar esta solução, você estará preparado para:

1. **Desafio 02**: Corrigir links de navegação
2. **Desafio 03**: Substituir mocks em campos de seleção
3. **Desafio 04**: Implementar CRUD com associações
4. **Desafio 06**: Implementar múltiplos CRUDs com relacionamentos

## 💡 Dicas Importantes

1. **Sempre use debugPrint()** para verificar dados durante desenvolvimento
2. **Teste todas as operações CRUD** antes de considerar implementação completa
3. **Mantenha backup dos dados** importantes durante desenvolvimento
4. **Documente mudanças** no banco de dados
5. **Use transações** para operações complexas que envolvem múltiplas tabelas

---

**Tempo estimado de implementação**: 30-45 minutos
**Nível de dificuldade**: Intermediário
**Pré-requisitos**: Conhecimento básico de Flutter, Dart e SQL 