main(){
  /*
  Mesmo sendo uma classe privada, conseguimos instanciar o objeto >>NESTE ARQUIVO<<
  Se tentarmos fazer mesmo em outro arquivo gera erro
  */
  var minhaClasse = _MinhaClasse();
}

/*
para tornar a classe privada, basta colocar "_" antes da classe
o modificador de acesso privado em dart restringe o acesso por arquivo e não pela classe
*/
class _MinhaClasse{
  _MinhaClasse(){
    print('testando a classe privada');
  }
}