# Motivação

## Por que estudar persistência com base técnica?

O objetivo não é apenas fazer um cadastro funcionar.

O objetivo é entender o que acontece quando um aplicativo salva, consulta, altera e exclui dados.

Essa base ajuda em três situações muito comuns:

* usar frameworks com mais consciência
* usar IA sem aceitar qualquer código
* trabalhar em projetos sem ORM ou com SQL mais direto

## 1. Usar frameworks com base técnica

Frameworks e bibliotecas ajudam muito.

Eles aceleram o desenvolvimento e reduzem trabalho repetitivo.

Mas eles não substituem entendimento.

Quando algo dá errado, é preciso saber investigar:

* a conexão foi aberta corretamente?
* a tabela existe?
* o SQL está correto?
* o relacionamento entre os dados faz sentido?
* o erro está na tela, no DAO, no model ou no banco?

Quem entende a base usa melhor o framework.

## 2. Usar IA com base técnica

IA pode gerar código rapidamente.

Isso é útil.

Mas código gerado precisa ser validado.

É preciso conseguir responder:

* o código faz o que foi pedido?
* o SQL está correto?
* o model representa bem os dados?
* o DAO está organizado?
* existe risco de erro ou inconsistência?

Sem base técnica, a IA vira uma caixa-preta.

Com base técnica, a IA vira uma ferramenta de apoio.

## 3. Trabalhar sem ORM

ORM significa Object-Relational Mapping.

Um ORM ajuda a mapear objetos do código para tabelas do banco.

Mas nem todo projeto usa ORM.

Às vezes o projeto trabalha diretamente com SQL por causa de:

* simplicidade
* desempenho
* manutenção de código legado
* limitações da biblioteca
* necessidade de mais controle

Nesses casos, saber SQL, conexão, model e DAO é essencial.

## Ideia principal

Aprender persistência manualmente não é andar para trás.

É construir fundamento.

Depois, ao usar um framework, uma biblioteca ou uma IA, você entende melhor o que está acontecendo por baixo.

```text
Base técnica
|
+-- ajuda a usar frameworks
+-- ajuda a validar IA
+-- ajuda a diagnosticar problemas
+-- ajuda a tomar decisões técnicas
```

## Perguntas para reflexão

* Eu saberia explicar o SQL que meu aplicativo executa?
* Eu saberia corrigir um código gerado por IA?
* Eu saberia identificar se o erro está na tela, no DAO, no model ou no banco?
* Eu saberia dizer quando um framework está ajudando e quando está escondendo um problema?

## Ligação com o próximo assunto

Agora que o motivo está claro, o próximo passo é entender onde os dados podem ficar:

```text
no dispositivo
no servidor
nos dois lugares
```
