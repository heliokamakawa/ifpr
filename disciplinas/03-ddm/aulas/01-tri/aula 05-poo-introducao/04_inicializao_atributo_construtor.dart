main(){
  //criando objeto exemplo01 do tipo Exemplo01Aluno
  //na criação do objeto estamos atribuíndo "Marcos" no atributo nome
  var aluno1 = Exemplo01Aluno('Marcos'); 
  print(aluno1.nome);

  //neste exemplo, estamos inicializando todos os atributos
  var aluno2 = Exemplo02Aluno(111,'Marcos',false);
  print(aluno2.nome);

  //inicializando todos os atributos com nomes sugestivo
  var aluno3 = Exemplo03Aluno(111,'Marcos',false);
  print(aluno3.nome);

  //inicializando todos os atributos com o uso formal de inicialização
  var aluno4 = Exemplo04Aluno(111,'Marcos',false);
  print(aluno4.nome);

  //inicializando todos os atributos com o uso formal de inicialização
  var aluno5 = Exemplo05Aluno(
    registroAcademico: 111,
    nome: 'Marcos',
    casado: false);
  print(aluno5.nome);
}

/*
Podemos utilizar o construtor para inicializar uma variável
Geralmente fazemos isso quando não sabemos o valor de atribuição de um atributo na definição de uma classe
*/
class Exemplo01Aluno{
  int? registroAcademico;
  String? nome;
  bool? casado;

  /*
  Definindo um cosntrutor que recebe como parâmetro uma valor do tipo String
  O valor recebido no parâmetro (valor) é atribuído no atributo nome
  */
  Exemplo01Aluno(String valor){
    nome = valor;
  }
}

//definindo classe com contrutor para inicializar todos os atributos
class Exemplo02Aluno{
  int? registroAcademico;
  String? nome;
  bool? casado;

  // podemos fazer o mesmo para todas as variáveis
  Exemplo02Aluno(int valor1, String valor2, bool valor3){
    registroAcademico = valor1;
    nome = valor2;
    casado = valor3;
  }
}

// Em relação ao exemplo anterior, é importante colocar nomes sugestivos nos parâmetros
class Exemplo03Aluno{
  int? registroAcademico;
  String? nome;
  bool? casado;
  
  /*
  Como nome sugestivo, definimos o mesmo nome do atributo
  Porém, desta forma, termos o parâmetro e o atributo com o mesmo nome
  Assim, para diferenciar o atributo com o parâmetro, utilizamos this.nomeAtributo
  */
  Exemplo03Aluno(int registroAcademico, String nome, bool casado){
    this.registroAcademico = registroAcademico;
    this.nome = nome;
    this.casado = casado;
  }
}

/*
Uso Formal de Inicialização - prefer_initializing_formals
https://dart-lang.github.io/linter/lints/prefer_initializing_formals.html
*/
class Exemplo04Aluno{
  int? registroAcademico;
  String? nome;
  bool? casado;
  
  //O uso formal de inicialização quando possível torna seu código mais conciso.
  Exemplo04Aluno(this.registroAcademico, this.nome, this.casado);
}

//parâmetros nomeados no construtor
class Exemplo05Aluno{
  int? registroAcademico;
  String? nome;
  bool? casado;
  
  //para definir parâmetros nomeados utilizamos {}
  Exemplo05Aluno({this.registroAcademico, this.nome, this.casado});
}
