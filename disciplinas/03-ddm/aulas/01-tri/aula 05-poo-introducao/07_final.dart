
/*
O QUE É - atribuição única 
uma variável ou atributo final pode ser inicializada em algum momento após a sua declaração, 
porém uma vez atribuído um valor, este não poderá mais ser alterado

A atribuição pode ser definida em tempo de execução.

O fato de não permitir alterações após a inicialização do código traz segurança e estabilidade - principalmente trabalhando em equipe.

*/
class AlunoExemplo01{
  final int registroAcademico; 
  final String nome;
  
  AlunoExemplo01(this.registroAcademico,this.nome);
}

main(){   
  var aluno = AlunoExemplo01(1,'Joaquim');
  //aluno.nome = 'Pedro'; // gera erro, pois não podemos alterar um atributo final
  print(aluno.nome); 
}
