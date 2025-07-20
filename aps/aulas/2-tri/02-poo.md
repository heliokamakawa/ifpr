# Paradigma Orientado a Objetos (POO)
  Abordagem de desenvolvimento de software baseada na organização de componentes em objetos, que são instâncias de classes. Ênfase nos pilares:

- **Classe Abstrata:**
  > Classe que não pode ser instanciada e que serve como base para subclasses, podendo conter métodos abstratos (sem implementação).
  
- **Abstração:**
  > Focar no que realmente importa, retirando detalhes irrelevantes e/ou fora do contexto.

- **Polimorfismo:**
  > Capacidade de diferentes classes responderem a uma mesma mensagem (chamada de método) de maneiras distintas, dependendo de sua implementação específica, possibilitada pela herança ou interfaces.

- **Encapsulamento:**
  > Expor interface para acesso, protegendo/modularizando detalhes internos. Reduz acoplamento, facilita manutenção e evolução, pois alterações internas não afetam quem interage com a interface pública.

- **Sobrescrita (Overriding):**
  > Redefinição da implementação de um método herdado em uma subclasse.

- **Realização (Interfaces):**
  > Relacionamento onde uma classe concreta ou abstrata se compromete a implementar as operações declaradas em uma Interface (um contrato de comportamento).

---

## Elementos Estruturais da Classe

- **Classe:**
  > Estrutura de um conjunto de dados/atributos (características) e métodos (ações) associados - define um tipo (de objeto).

- **Objeto (Instância):**
  > Instância concreta de uma Classe em tempo de execução, com estado único definido pelos valores de seus atributos e capaz de executar seus métodos.

- **Atributo:**
  > Característica, descrição, tipo de dados.

- **Método (Operação):**
  > Ação, função, procedimento.

- **Visibilidade (Modificadores de Acesso):**
  > Mecanismo de controle de acesso a membros de uma classe:
  > - `+` (público)
  > - `-` (privado)
  > - `#` (protegido)
  > - `~` (pacote)

