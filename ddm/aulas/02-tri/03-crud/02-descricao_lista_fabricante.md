Crie um widget flutter que liste todos os DTOs. 
- crie um mock de lista do dto fora da classe (antes do widget) - insira dados contextualizados - trata de frabricantes de spinning (bike in door)
- utilize FutureBuilder (para futuramente utilizar banco de dados)
- utilize ListView.builder e ListTile para os itens
- Para cada item da lista, defina no final da linha a direita, ícones de excluir  (vermelho) e alterar (laranjado).
- defina um método alterar que imprima o dto em ScaffoldMessenger.
- defina um método excluir que imprima o dto em ScaffoldMessenger.

Nome da classe deverá ser: ListaFabricante.

considere a seguinte estrutura do dto:

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