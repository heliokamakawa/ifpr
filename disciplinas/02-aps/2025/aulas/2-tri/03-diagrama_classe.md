# Diagrama de Classe

Representação visual/gráfica **estática** de um sistema, essencial no **Paradigma Orientado a Objetos (POO)**. Exibe as classes que compõem o sistema, seus atributos (dados), métodos (comportamentos) e os relacionamentos estruturais entre elas (como associações, herança e composição).

---

## 1. Representação Gráfica em UML
Notação gráfica padronizada para especificação, visualização, construção e documentação de artefatos de sistemas de software, com foco na modelagem de sistemas complexos.

- **Notação de Classe UML:**
  > Representação gráfica padrão de uma classe como um retângulo com três compartimentos: nome da classe, atributos e métodos.

- **Sintaxe de Atributos e Métodos:**
  > Convenções para expressar nome, tipo, multiplicidade (para atributos), parâmetros e tipo de retorno (para métodos) na notação UML (ex: +nome: String) .
  
- **Relacionamentos:**
  > Representa relação entre 2 objetos.


## 2. Relacionamentos Estruturais e Comportamentais

- **Associação:**
  > Vínculo estrutural entre classes que descreve uma conexão entre suas instâncias.
  > - Na UML, a associação é representada por uma linha simples entre as classes.

- **Multiplicidade:**
  > Especifica o número de instâncias de uma classe que podem se relacionar com uma instância da outra classe em uma associação (ex: `1`, `0..1`, `1..*`, `*`).

- **Navegabilidade (Direcionalidade):**
  > Indica a capacidade de uma instância de uma classe acessar instâncias de outra através de uma associação, podendo ser unidirecional ou bidirecional.

- **Papel (Role Name):**
  > Nome opcional que descreve a função de uma classe na associação.

- **Agregação:**
  > Tipo fraco de associação todo-parte, onde a parte pode existir independentemente do todo. Representada por um losango vazio no lado do "todo".

- **Composição:**
  > Tipo forte de associação todo-parte, onde a parte possui dependência de existência em relação ao todo (ciclo de vida compartilhado). Representada por um losango preenchido no lado do "todo".

- **Dependência:**
  > Relacionamento de uso em que uma mudança na definição de uma classe (o "fornecedor") pode afetar outra classe (o "cliente") que a utiliza, tipicamente por meio de parâmetros, variáveis locais ou chamadas de métodos.

- **Generalização (Herança):**
  > Relacionamento "é-um" (is-a) entre uma superclasse (generalização) e uma ou mais subclasses (especializações), onde as subclasses herdam características e comportamentos da superclasse.

---

## 3. Princípios de Design e Análise de Modelos

- **Coesão (Cohesion):**
  > Grau em que os elementos de um módulo (classe) pertencem funcionalmente um ao outro. Alta coesão indica uma classe bem definida e focada em uma única responsabilidade.

- **Acoplamento (Coupling):**
  > Medida da dependência mútua entre módulos de software. Baixo acoplamento é um objetivo de design para facilitar manutenção, reuso e testabilidade.

- **Princípios SOLID:**
  > Conjunto de cinco princípios de design que promovem a construção de sistemas mais compreensíveis, flexíveis e de fácil manutenção:
  > - **S**ingle Responsibility Principle (SRP)
  > - **O**pen/Closed Principle (OCP)
  > - **L**iskov Substitution Principle (LSP)
  > - **I**nterface Segregation Principle (ISP)
  > - **D**ependency Inversion Principle (DIP)

- **Refatoração (Refactoring):**
  > Processo de reestruturação interna de um sistema de software para melhorar seu design (ex: coesão, acoplamento) e legibilidade, sem alterar seu comportamento externo.

- **Padrões de Projeto (Design Patterns):**
  > Soluções reutilizáveis para problemas comuns de design de software em contextos específicos.

- **Análise de Domínio (Domain Analysis):**
  > Processo de identificação, estudo e documentação das entidades, relacionamentos e regras de negócio de um domínio de aplicação específico para a criação de um modelo conceitual.

---

## 4. Desafios e Práticas de Modelagem

- **Identificação de Entidades e Seus Papéis:**
  > Metodologias para extrair classes, atributos e métodos a partir de requisitos funcionais e regras de negócio.

- **Granularidade da Modelagem:**
  > Decisão sobre o nível de detalhe apropriado para as classes e atributos, evitando excesso ou falta de informação.

- **Análise Crítica de Modelos:**
  > Avaliação da adequação, consistência e conformidade de Diagramas de Classe com os princípios de design e as necessidades do domínio.

- **Antipadrões de Modelagem:**
  > Identificação e discussão de práticas de modelagem que levam a designs subótimos ou problemáticos (ex: herança mal aplicada, classes anêmicas).