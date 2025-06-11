# 🧩 Exercícios de Modelagem - Diagrama de Classe (UML)

Este conjunto de exercícios foi elaborado para desenvolver suas habilidades em modelagem de classes com base na UML (Unified Modeling Language). Explore diferentes contextos e reflita criticamente sobre as boas práticas de abstração, associação, atributos e herança.

---

## 1. 🌊 Universo Bob Esponja - Abstração

Pensando no universo do desenho animado **Bob Esponja**, identifique:

- ✅ 5 **classes abstratas**
- ✅ 5 **classes concretas**

---

## 2. 🧪 Laboratório - Características e Ações

Identifique **3 classes** comuns ao contexto de um laboratório. Para cada classe, defina:

- 🔷 **5 atributos** (características)
- 🔸 **3 métodos** (ações que a classe pode realizar)

---

## 3. ⚽ Jogo de Futebol - Diagrama de Classe UML

Modele, utilizando os padrões da UML:

- 🔹 **3 classes principais** que representem a estrutura de um jogo de futebol
- ✍️ Atributos e métodos relevantes para cada classe
- 🔗 Associações entre as classes, com **multiplicidades corretas**
  > Exemplo: Um time tem muitos jogadores; um jogador pertence a um time.

---

## 4. 🚗 Sistema de Locação de Carros

Modele um sistema básico de locação de carros com UML, incluindo:

- ✅ 3 classes com associações corretas (e.g., `Cliente`, `Carro`, `Locação`)
- ✍️ Atributos e métodos relevantes para cada classe
- 🚫 **Desafio Extra:** Para a classe `Carro`, liste **3 atributos e 3 métodos incoerentes ou desnecessários** no contexto de um sistema de locação de veículos.

---

## 5. 🧾 Análise de Modelagem - Classe Cliente

Analise os seguintes cenários. Diga se a modelagem da **classe Cliente** está **CORRETA** ou **INCORRETA**. Se estiver INCORRETA, justifique e proponha a modelagem adequada da classe (apenas atributos).

a) Carrinho de Lanche (Presencial)
Cliente(id, nome, endereço, número, complemento, referência, bairro, cep, cpf, identidade, registro_acadêmico)
b) Lanche (Delivery)
Cliente(id, nome, endereço, número, complemento, referência, bairro, cep, cpf, identidade, registro_acadêmico)

## 6. Análise de Modelagem - Estrutura de Classes
Analise os casos abaixo. Indique se estão CORRETOS ou INCORRETOS. Em caso de erro, explique o problema e proponha uma modelagem correta (classe(s) e atributos).

a) Sorveteria com as seguintes classes:  
baunilha(id, data_vencimento, lote, fornecedor)  
chocolate(id, data_vencimento, lote, fornecedor)  
limão(id, data_vencimento, lote, fornecedor)  

b) Fábrica de Peças 
Filial_Maringá(id, endereço, nome_fantasia, telefone)  
Filial_Paranavaí(id, endereço, nome_fantasia, telefone)  
Filial_Cianorte(id, endereço, nome_fantasia, telefone)  

## 7. 🎓 Modelagem de Classe - Correções
Analise os exemplos abaixo. Indique se estão CORRETOS ou INCORRETOS e proponha uma modelagem adequada da classe.

a) Controle Escolar
Aluno(id, nome, endereço, número, complemento, referência, bairro, cep, cpf, identidade, registro_acadêmico)   

b) Loja de Roupas - Cliente  
Cliente(id, nome_completo, idade, cpf)  

c) Agendamento de Serviços  
Serviço(id, descrição, hora_inicial, hora_final, tempo_de_serviço)  
  

## 8. Analise as associações abaixo. Estão CORRETAS ou INCORRETAS?
* indica associação
a) Jogador e Time  
Jogador(nome)  
Time(nome, descricao, lista<Jogador>*)  

b) Produto, Cliente e Venda
Produto(nome, preço)  
Cliente(nome, cpf)  
Venda(data, cliente*, lista<Produto>*)  

## 9. Analise o modelo abaixo. Ele está adequado para um Diagrama de Classe UML?  
Cliente
id: 1
Nome: Pedro Silva
cpf: 187.564.698-85
endereço: Rua Dom Pedro, 8942 - Jardim Olimplo, 87702-584
telefone: (44) 98854-8547
cidade: Paranavaí, Paraná-PR

## 10. Analise os exemplos abaixo e verifique a conformidade com UML. Em caso de erro, proponha a modelagem correta da CLASSE.

a) Pizza Delivery 
Cliente  
id: 1  
Nome: Pedro Silva  
cpf: 187.564.698-85  
endereço: Rua Dom Pedro, 8942 - Jardim Olimplo, 87702-584  
telefone: (44) 98854-8547  
cidade: Paranavaí, Paraná-PR  

b) Escola
Aluno  
id: 1  
Nome: Marcos Gold  
cpf: 287.564.698-85  
série: 2  
curso: engenharia de software  

## 11. Dê exemplos de erros comuns relacionados ao uso de associação e herança. Adote exmplos em que os conceitos parecem estar corretos à primeira vista.  

## 12. Análise Crítica de Herança em Modelagem de Classes
Nesta atividade, analise criticamente o uso de herança em dois cenários distintos. Para cada caso, argumente se a herança proposta é correta, coerente e justificável do ponto de vista da modelagem orientada a objetos.
a) Considere as seguintes classes: 
- Produto(id, nome, sku, preço)  
- Cliente(id, nome, endereço, cpf)  
Pergunta:  
Seria adequado criar uma classe pai abstrata para reaproveitar os atributos id e nome?  

b) Herança entre calculadoras   
Considere a seguinte hierarquia:  
- CalculadoraCientifica extends Calculadora  
- CalculadoraFinanceira extends CalculadoraCientifica  
Pergunta:  
Essa estrutura de herança é válida e coerente?


## 13. Modele, utilizando UML, um sistema escolar no qual seja necessário representar as seguintes informações sobre o professor: Quantidade de horas de aula ministradas; Número de disciplinas que leciona; Média de alunos por disciplin. Identifique as classes envolvidas, os atributos e métodos relevantes, além das associações com multiplicidades adequadas.
