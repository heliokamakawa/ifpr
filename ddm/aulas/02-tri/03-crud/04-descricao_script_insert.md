Para um projeto flutter que utiliza sqflite, escreva o sql para criar a tabela, considerando todos os cuidados e caracteristicas necessárias para o sqlite. Considere o seguinte DTO: 

abstract class DTO {
  final int? id;
  final String nome;

  DTO({this.id,required this.nome});
}

import 'package:spin_flow/dto/dto.dart';

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

telefoneContato com máscara.

script tabela:

CREATE TABLE fabricante (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nome TEXT NOT NULL,
  descricao TEXT,
  nome_contato_principal TEXT,
  email_contato TEXT,
  telefone_contato TEXT,
  ativo INTEGER NOT NULL DEFAULT 1
)

crie 5 inserções no contexto coeso (fabricantes de spinning). 
telefone com máscara e DD. Exemplo: (44) 99999-9999

