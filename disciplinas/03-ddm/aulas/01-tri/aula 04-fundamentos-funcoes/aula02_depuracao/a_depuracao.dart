/*
>>> Contexto de Debug/Debugging/Depuração <<<
Processo de encontrar erros (geralmente erros de lógica - runtime error)
Recurso presente em qualquer IDE
- Permite inspecionar o código do projeto, linha a linha, durante a execução
- Pode-se definir o(s) ponto(s) de parada - Break Ponts 
  (para ser o estado atual da execução ou ver o conteúdo de uma variável)

Como fazer a depuração?
→ defina o break point
→ inicie a depração (F5)

Onde definir a depuração?
→ Você tem noção do possível local? defina o break point neste local.
→ Não sabe o local? defina o break point no início.

Como executar a depuração?
→ Navegar somente nos breaks points (F5);
→ Analisar linha a linha sem entrar nas funções (F10);
→ Analisar linha a linha entrando nas funções (F11);
→ Entrou em um bloco ou estrutura de repetição e quer sair (SHIFT+F11)
→ Errou e precisa reiniciar a depuração CTR+SHIFT+F5;

Qual a diferença entre F10 e F11?
→ em locais onde há linhas sem a chamada de funções, não há diferença
→ em locais onde há linhas com a chamada de funções, F11 entra na função e executa linha a linha
Quando utilziar SHIFT+F11?
→ há um bloco de repetição, pule SHIFT+F11 e veja se o teor das variáveis estão ok
  → não está ok, volte e execute passo a passo

Executar a depuração de forma mista (cenário 1)
→ Marque o break point no possível local de erro
→ Vá direto até o break point (F5)
→ Acompanhe as variáveis → O VALOR É APRESENTADO SEMPRE NA EXECUÇÃO POSTERIR DA LINHA 
  as variáveis em variables 
  expressões em watch
  funções em call stack
→ Não encontrou o erro, e há muito o que olhar. Navegue superficialmente (F10) acompanhando as variáveis 
→ Com F10, acompanhando as variáveis notou um valor errado
  → marque o break point, reinicie e navegue (se preciso linha a linha F11)
  → há um bloco de repetição, pule SHIFT+F11 e veja se o teor das variáveis estão ok
    → não está ok, volte e execute passo a passo

Inspecionar o estado de uma variável
 - Quando está no break point olhar o monitor do debug 
 - Passar o mouse em cima de uma variável
 - Janela de Inspeção - adicionando uma expressão 

Em caso de um trecho de código retornar uma expressão - valor sem a definição de uma variável,
podemos inserir a expressão na Janela de Inspeção (Watch)
*/

void main(){
  var escolha = 1;
  var n1 = 7.0;
  var n2 = 8.0;
  var mediaAprovacao = 6.0;
  var resultado = interfaceAprovacao(escolha, n1, n2, mediaAprovacao) ? 'aprovado' : 'reprovado';
  print('cenário 1 → está ok? >>${resultado == 'aprovado'}<<. esperado: aprovado; resultado foi $resultado');

  escolha = 2;
  n1 = 4.0;
  n2 = 3.0;
  mediaAprovacao = 6.0;
  resultado = interfaceAprovacao(escolha, n1, n2, mediaAprovacao) ? 'aprovado' : 'reprovado';
  print('cenário 2 → está ok? >>${resultado == 'reprovado'}<<. esperado: reprovado; resultado foi $resultado');

  escolha = 2;
  n1 = 5.0;
  n2 = 7.0;
  mediaAprovacao = 6.0;
  resultado = interfaceAprovacao(escolha, n1, n2, mediaAprovacao) ? 'aprovado' : 'reprovado';
  print('cenário 2 → está ok? >>${resultado == 'reprovado'}<<. esperado: reprovado; resultado foi $resultado');
}

bool interfaceAprovacao(int escolha, double nota1, double nota2, double mediaAprovacao){
  double nota;
  if(escolha == 1){
    nota = calcularMedia(nota1, nota2);
    
  } else if(escolha == 2){
    nota = calcularMedia(nota1, nota2);
  } else {
    nota = calcularMenorNota(nota1, nota2);
  }
    return  verificarAprovacao(nota, mediaAprovacao);
}

bool verificarAprovacao(double nota, double media){
  return (nota >= media);
}

double calcularMedia(double nota1, double nota2){
  return (nota1 + nota2) / 2;
}

double calcularMaiorNota(double nota1, double nota2){
  double maior = nota1;
  if(nota2 > nota1){
    maior = nota2;
  } 
  return maior;
}

double calcularMenorNota(double nota1, double nota2){
  double menor = nota1;
  if(nota2 < nota1){
    menor = nota2;
  } 
  return menor;
}
