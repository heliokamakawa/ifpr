class Categoria{
  final String nome; 
  final String descricao;
  Categoria({required this.nome,required this.descricao});
}

class Produto{
  final String nome; 
  final double precoCusto;
  final Categoria categoria;
  Produto({required this.nome,required this.precoCusto, required this.categoria});
}

main(){
  //definindo objetos e pegando a referência
  var categoria = Categoria(
    nome: 'Esporte', 
    descricao: 'descricao');
  var produto1 = Produto(
    nome: 'Nike Evolution', 
    precoCusto: 320.50, 
    categoria: categoria);

  //definindo objetos direto 
  var produto2 = Produto(
    nome: 'Camiseta Polo', 
    precoCusto: 90.50, 
    categoria: Categoria(
      nome: 'Vestuário', 
      descricao: 'descricao'));
}