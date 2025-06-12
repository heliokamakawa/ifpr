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