import 'dart:io';

void main(List<String> arguments) {
  print('sample data input');
  /*
    para fazer a entrada de dados é necessário fazer a importação 'dart:io'
  */

  stdin.readByteSync(); //realizando a leitura de linha
  /*
    apesar de realizar a leitura está faltando 2 coisas: 
    → imprimir o que é desejado; e
    → armazenar o valor
  */
  var nomeProduto;
  print('informe o nome do produto:');                //imprimindo o que é desejado
  nomeProduto = stdin.readLineSync();                 //amazendo a leitura em nomeProduto
  print('o nome digitado foi $nomeProduto');          //imprimindo o resultado
  print('informe a descrição do produto:');           //imprimindo o que é desejado
  var descricaoProduto = stdin.readLineSync();        //declarando e amazendo a leitura na variável
  print('o nome digitado foi $descricaoProduto');     //imprimindo o resultado
}

/** 
>>>> REGRA PARA TODOS: não pode solicitar valores calculados
solicitar os dados de um curso. Imprima o nome do curso a carga horária do Curso, quantidade de série, % mínimo de presença, a quantidade máixima de faltas e a média para a aprovação do curso.
solicitar os dados de um aluno. Imprima o nome, RA, a série atual e idade.
solicitar os dados de uma disciplina. Imprima o nome da discplina, a carga horária da disciplina, % mínimo de presença e a quantidade mínima de presença.
*/