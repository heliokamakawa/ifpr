# Desafio do Tempo Real: Do Sorteio à Execução

## Objetivo do Desafio
O objetivo desse desafio é avaliar suas habilidades de programação com Dart, lidando com associações de objetos, funções anônimas, e compreensão das estruturas propostas. O desafio será sorteado na hora, e você terá um tempo determinado para realizá-lo **ao vivo**, utilizando o computador do professor, enquanto explica seu raciocínio.


## Tabela do Desafio do Tempo Real: Do Sorteio à Execução


| **Categoria**     | **Critérios de Avaliação**                                                                                                                                                                      |
|-------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Pleno**         | - Realiza o desafio com precisão, sem falhas críticas.                                                                                                                                            |
|                   | - Explica de forma clara e concisa durante a execução.                                                                                                                                          |
|                   | - Completa o desafio dentro do tempo estipulado.                                                                                                                                                  |
| **DEV**           | - Realiza o desafio com pequenas falhas, mas sem comprometer o funcionamento geral.                                                                                                               |
|                   | - Explica a solução, mas apresenta alguma dificuldade em comunicar detalhes técnicos de forma clara.                                                                                             |
|                   | - Não ultrapassa muito o tempo estipulado.                                                                                                                                                       |
| **Júnior**        | - Não consegue submeter à pressão e tem dificuldades na execução ou na explicação.                                                                                                               |
|                   | - Realiza todos os desafios no papel, mas não consegue aplicar as soluções no computador, sendo mais conceitual.                                                                                   |
|                   | - Demonstra esforço, mas com grande dificuldade para terminar o desafio dentro do tempo.                                                                                                          |


### Detalhamento das Categorias

### **Pleno**
- **Execução sem falhas:** O aluno completa o desafio de forma eficaz, sem erros críticos, e cumpre o tempo determinado.
- **Explicação clara:** O aluno consegue explicar a solução de forma simples e compreensível, mostrando domínio do conteúdo.
- **Cumpre o tempo:** Não só consegue resolver o problema, como também faz isso dentro do tempo estipulado sem correr.

### **DEV**
- **Explicação parcial:** A explicação é boa, mas não tão fluida quanto a do aluno "Pleno". O aluno pode ter dificuldades em detalhar todas as etapas.
- **Cumpre quase o tempo:** O aluno leva um pouco mais de tempo, mas ainda é capaz de entregar uma solução funcional.

### **Júnior**
- **Faz no papel:** O aluno consegue realizar todos os desafios no papel (com explicações e soluções), mas não consegue aplicar na pressão em frente de todos.

---

## Observações Importantes
- **Tempo para a execução:** O aluno deve ter um tempo determinado para completar o desafio (3 minutos).
- **Solução no papel:** Caso o aluno não consiga executar no computador, ele deve apresentar todos os desafios no papel. Porém, isso será avaliado como Júnior.
- **Dificuldade do Desafio:** O nível de complexidade dos desafios será variável, o que exige que os alunos estejam bem preparados.

---

## Estrutura do Desafio

1. **O que você vai fazer:**
   Você deverá **escolher um dos desafios**, de acordo com o sorteio, e **codificá-lo no computador** enquanto explica suas escolhas e raciocínios de forma clara. O desafio vai envolver a criação de objetos, associações entre eles, uso de funções anônimas e cálculos dinâmicos.

2. **Tempo de execução:**
   Você terá um **tempo limitado** para realizar a atividade. O tempo varia dependendo da dificuldade do desafio sorteado:
   - **Desafios mais simples (1, 2, 3)**: Você terá **10 minutos** para concluir.
   - **Desafios mais complexos (4, 5)**: O tempo será de **15 minutos**.
   
   Durante esse tempo, você precisará **codificar** e **explicar** o seu código. Se for necessário, você poderá ganhar **2 minutos extras** no caso de estar indo bem, mas precisar de um ajuste no código ou na explicação.

3. **O que se espera de você:**
   - **Codificação eficiente**: Mostrar que você consegue aplicar os conceitos que foram discutidos nas aulas, como criação de objetos, associações de classes, e uso de funções anônimas.
   - **Explicação clara**: Enquanto você codifica, precisa **explicar** seu raciocínio de maneira simples, detalhando as escolhas que fez, como as associações entre objetos funcionam, e como utilizou as funções anônimas.
   - **Entrega dentro do prazo**: Você deve **finalizar dentro do tempo** proposto. Caso não consiga concluir ou se atrasar, será considerado "Dev" (nível abaixo do pleno).
   - **Qualidade do código**: O código precisa ser **organizado** e **legível**. Utilize **nomes claros** para as variáveis e funções.


---

## Como se Preparar

- **Revise os conceitos de Dart** que trabalhamos nas aulas:
  - Como **criar classes**, **associar objetos**, **utilizar funções anônimas**.
  - Entenda como **passar parâmetros para funções** e como **fazer cálculos dinâmicos** (como descontos ou impostos).
  - Entenda bem os conceitos e pratique muito antes de encarar o desafio.

---

# Desafio 1: Sistema Complexo de Venda Multinível
Enunciado:
Crie um objeto de Venda que englobe um Cliente cujo endereço possui hierarquia completa (Endereço → Cidade → Estado → País). O produto vendido deve estar associado a um Fornecedor com sua própria hierarquia de endereço. Utilize funções anônimas para:

Calcular um imposto dinâmico com base no valor do produto.

Concluir a venda com uma função que valide todas as associações.

Dica: Utilize parâmetros nomeados para facilitar a leitura, mas mantenha alguns parâmetros posicionais para simular a diversidade de construtores.

---

# Desafio 2: Pedido de Compra com Cálculo de Frete e Pagamento
Enunciado:
Crie um objeto de PedidoCompra com as seguintes condições:

O Fornecedor deve ter um endereço completo (incluindo Cidade, Estado e País).

O Produto deve possuir detalhes como Tipo, Categoria e Unidade de Medida.

Implemente funções anônimas para:

Calcular o valor do frete com base na distância (simulada) e quantidade.

Realizar o pagamento, que deve validar o pedido e registrar a data do pagamento.

Dica: Estruture as associações de forma a refletir uma cadeia de valor completa e encadeada.

---

# Desafio 3: Sistema Integrado de Empresa e Folha de Pagamento
Enunciado:
Crie um objeto de Empresa que contenha múltiplos Departamentos. Cada Departamento deve incluir vários Funcionarios, onde cada funcionário tem uma função anônima para calcular seu bônus (baseado em seu cargo e salário). Além disso, a empresa deve ter um endereço hierárquico (Endereço → Cidade → Estado → País).
Utilize funções anônimas para:

Calcular a folha de pagamento total da empresa.

Exibir relatórios de desempenho dos departamentos.

Dica: Combine parâmetros nomeados e posicionais para criar construtores que permitam flexibilidade e clareza na instanciação dos objetos.

---

# Desafio 4: Armazém com Estoque Dinâmico e Rastreamento
Enunciado:
Crie um objeto de ArmazemEstoque que contenha:

Um objeto Armazem com localização detalhada.

Produtos com informações completas (incluindo Tipo, Categoria, Unidade de Medida e dados de Garantia).

Implemente funções anônimas para:

Atualizar o estoque dinamicamente (exemplo: diminuir a quantidade ao vender).

Registrar um histórico de alterações no estoque, com data e quantidade modificada.

Dica: Garanta que as funções anônimas sejam utilizadas para simular a integração entre vendas e a atualização do estoque.

---

# Desafio 5: Sistema Integrado de Compras, Vendas e Logística
Enunciado:
Desenvolva um objeto de “Sistema Integrado” que una os seguintes módulos:

Compras: Utilize um objeto de Compra que contenha um PedidoCompra com Fornecedor, Produto, e um lote específico, usando função anônima para verificar a validade do lote.

Vendas: Crie um objeto de PedidoVendaEntrega que contenha todas as associações do Cliente (incluindo endereço completo) e Produto, com funções anônimas para concluir a venda e organizar a entrega.

Logística: Implemente um módulo de logística (pode ser representado por uma classe ArmazemEstoque ou similar) que integre informações de estoque, com funções anônimas para calcular rotas de entrega e ajustar o estoque automaticamente.
Utilize funções anônimas para simular:

Cálculos dinâmicos de frete, impostos e descontos.

A integração entre os módulos, validando que os dados do módulo de compras impactam o módulo de vendas e vice-versa.

Dica: Este desafio exige a criação de uma estrutura que englobe múltiplas associações e módulos do sistema. Considere criar classes auxiliares para modularizar as funções (ex: classe Logistica, classe IntegracaoSistema) e, então, utilizar funções anônimas para orquestrar a comunicação entre elas.
