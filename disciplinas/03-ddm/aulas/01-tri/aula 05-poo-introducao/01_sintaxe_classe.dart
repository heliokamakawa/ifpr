main(){
  // sintaxe parecida com java
  MinhaClasse minhaClasse1 = new MinhaClasse();

  //em dart, o new é opcional - existe por questão de adaptação
  MinhaClasse minhaClasse2 = MinhaClasse();

  //neste caso, em dart, recomenda-se utilizar a inferência de tipo
  var minhaClasse = MinhaClasse();
}

/*
MODIFICADOR DE ACESSO 
- por padrão já é pública

NOME DA CLASSE
- para o nome da classe utilizamos o padrão UpperCamelCase 
- https://dart-lang.github.io/linter/lints/camel_case_types.html
  
ARQUIVO
  - Recomenda-se (não precisa) que o nome do arquivo seja o mesmo nome da classe 
  - Coloque uma classe para cada arquivo - facilita o trabalho e a manutenção
    - especificamente nesta aula, não colocamos o mesmo nome por questão de didática/organização
  - Não é possível definir 2 classes com o mesmo nome no mesmo arquivo
*/
class MinhaClasse1{
  /*
  sem a definição explícita de um construtor - mas ela existe!
  Toda classe tem construtor, mesmo que não se defina explicitamente
  */
}

class MinhaClasse{
  /*
  construtor é o mesmo nome da classe - por padrão é pública
  utilizado para criar um objeto
  definimos todo código que é necessário para o objeto - inicialização
  */
  MinhaClasse(){
    print('testando a classe MinhaClasse');
  }
}