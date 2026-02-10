Para um projeto flutter que utiliza sqflite defina o dao do fabricante
- nome da classe deve ser DAOFabricante
- deverá ter os métodos, salvar, consultarTodos, consultarPorId e excluir.
- o método salvar e alterar deve ser o mesmo - caso tenha id será alteração.
- o conjunto de dados necessários para as operações do dao deve ser o DTOFabricante. 
- os sqls devem ser definidos como atributos no início da classe. Não use atributos static.
- o dto não tem fromMap ou Json - devem ser definidas no dao. Assim, defina um método para fazer o mapeamento do json para o dto e vice versa dentro do dao.
- No projeto já tem a classe Conexao com o método static get que retorna o Database.

segue o dto: 

import 'package:spimflow/banco/dto/dto.dart';

class DTOFabricante extends DTO{
  final String? descricao;
  final String? nomeContatoPrincipal;
  final String? emailContato;
  final String? telefoneContato;
  final bool ativo;

  DTOFabricante({
    super.id,
    required super.nome,
    this.descricao,
    this.nomeContatoPrincipal,
    this.emailContato,
    this.telefoneContato,
    this.ativo = true,
  });
}

segue o script da tabela: 

CREATE TABLE Fabricante (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL UNIQUE,
    descricao TEXT,
    nome_contato_principal TEXT,
    email_contato TEXT,
    telefone_contato TEXT,
    ativo INTEGER NOT NULL DEFAULT 1
)


