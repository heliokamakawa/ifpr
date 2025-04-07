# Análise de Requisitos

**Identificação de Entidades e Relacionamentos**
**Descrição:** Consiste em determinar os principais cadastros/entidades e suas interdependências no sistema, estabelecendo uma base sólida para o desenvolvimento do modelo de dados.

**Definição de Campos e Características das Entidades**
**Descrição:** Envolve especificar os atributos de cada entidade, incluindo suas propriedades, tipos de dados e restrições, garantindo que as necessidades de informação sejam atendidas adequadamente.

**Estabelecimento de Regras de Negócio**
**Descrição:** Refere-se à identificação e documentação das regras que regem as operações do sistema, assegurando que os processos de negócios sejam corretamente implementados e mantidos.

**Análise Estruturada**
**Descrição:** Foca na decomposição funcional do sistema, utilizando ferramentas como o Diagrama de Fluxo de Dados (DFD) para representar processos e fluxos de informação, facilitando a compreensão e a comunicação entre os envolvidos no projeto.

# Processo de Análise de Requisitos

Agora que os requisitos estão definidos, é fundamental **validar** e **verificar** cada um deles. Após essa etapa, seguimos para a Análise de Requisitos. Para cada requisito específico, realizamos a análise conforme as fases descritas.

***Documentação dos Requisitos (SRS – Software Requirements Specification)**
Modelos de documentação:
- IEEE 830 (ou ISO/IEC/IEEE 29148, versão mais moderna)
Formato simples: ID, descrição, prioridade, origem, critérios de aceitação

| ID      | Descrição                                          | Prioridade | Origem      | Critérios de Aceitação                                      |
|---------|----------------------------------------------------|------------|-------------|-------------------------------------------------------------|
| REQ-001 | Funcionalidade de login de usuário com autenticação de dois fatores. | Alta       | Stakeholder | Usuários podem fazer login usando senha e código de verificação enviado por e-mail. |
| REQ-002 | O sistema deve suportar exportação de dados em formato CSV. | Média      | Compliance  | Usuários podem exportar relatórios em formato CSV na seção de relatórios. |

**Prioritização de Requisitos**
Técnicas simples de priorização:
- MoSCoW (Must, Should, Could, Won’t - Deve, deveria, poderia, não vai)
- Kano Model
- Pontos de Valor x Custo

**Rastreamento e Controle de Mudanças**
- A importância da rastreabilidade
- Ferramentas simples como planilhas, Trello ou até GitHub Issues
- Como lidar com mudanças de requisitos

**Requisitos como base para o design e testes**
- Como os requisitos bem definidos orientam o projeto da arquitetura e os testes?

**Exemplo:**
Requisito:
O sistema deve ter uma função que multiplique dois inteiros e retorne o resultado.
Implementação:
Crie uma função chamada multiplicar que receba dois inteiros como parâmetros e retorne seu produto.
```dart
int multiply(int a, int b) {
  return a * b;
}

void main() {
  test('multiply two positive numbers', () {
    expect(multiply(3, 4), equals(12));
  });

  test('multiply a positive and a negative number', () {
    expect(multiply(-3, 4), equals(-12));
  });

  test('multiply two negative numbers', () {
    expect(multiply(-3, -4), equals(12));
  });

  test('multiply by zero', () {
    expect(multiply(0, 5), equals(0));
  });
}

```
  
**Formato**: AR00-000 
- AR → ANÁLISE DE REQUITO;
- 00 → NÚMERO REQUISITO LEVANTADO;
- 000 → SEQUENCIA DA ANÁLISE DE REQUISITO.


**Fase 01 - Identificação de Cadastros/Entidades**
- Nesta etapa, identificamos as principais entidades envolvidas no sistema.
- Para o requisito de permitir que o cliente realize a gestão de reservas de quadras de beach tennis, as entidades podem ser: cliente, quadra e reserva.
  
[LRP001] Realizar a gestão de reserva de quadras esportivas de beach tennis e futebol society.
	[LRE001] Permitir que o cliente realize a gestão de reserva de quadras de beach.
		[AR01-001] Cadastro de Cliente
		[AR01-002] Cadastro de Quadra
		[AR01-003] Cadastro de Reserva



#### Fase 02 - Identificação de Dependências/Correlações

Aqui, determinamos as relações entre as entidades identificadas:
- Um Cliente pode ter várias Reservas.
- Uma Quadra pode estar associada a várias Reservas.
  
[LRP001] Realizar a gestão de reserva de quadras esportivas de beach tennis e futebol society.
	[LRE001] Permitir que o cliente realize a gestão de reserva de quadras de beach.
		[AR01-001] Cadastro de Cliente
		[AR01-002] Cadastro de Quadra
		[AR01-003] Cadastro de Reserva
		[AR01-004] Relacionamento entre Cliente e Reserva 
		[AR01-005] Relacionamento entre Quadra e Reserva 

#### Fase 03 - Definição de Campos e Características das Entidades

Para cada cadastro/entidade identificar/definir os campos e suas caracteríticas - pode-se definir símbolos: * campo obrigatório, & campo de opções, outros.

[LRP001] Realizar a gestão de reserva de quadras esportivas de beach tennis e futebol society.
	[LRE001] Permitir que o cliente realize a gestão de reserva de quadras de beach.
		[AR01-001] Cadastro de Cliente - campos: *Nome, *CPF, Telefone
		[AR01-002] Cadastro de Quadra - campos: *Identificação, *Tipo de Piso, *Localização
		[AR01-003] Cadastro de Reserva - campos: *Data e Hora, &Status
		[AR01-004] Relacionamento entre Cliente e Reserva 
		[AR01-005] Relacionamento entre Quadra e Reserva 

#### Fase 04 - Identificação de Regras de Negócio

Para cada cadastro/entidade identificar/definir regras. Aqui é comum que altere os números para ficar organizado.

[LRP001] Realizar a gestão de reserva de quadras esportivas de beach tennis e futebol society.
	[LRE001] Permitir que o cliente realize a gestão de reserva de quadras de beach.
		[AR01-001] Cadastro de Cliente - campos: *Nome, *CPF, Telefone	
			[AR01-002] Regra: Validar CPF do cliente no momento do cadastro.
		[AR01-003] Cadastro de Quadra - campos: *Identificação, *Tipo de Piso, *Localização
		[AR01-004] Cadastro de Reserva - campos: *Data e Hora, &Status
			[AR01-005] Regra: Verificar disponibilidade da quadra antes de confirmar a reserva.
		[AR01-006] Relacionamento entre Cliente e Reserva 
		[AR01-007] Relacionamento entre Quadra e Reserva 


#### FORMATAÇÃO
Com a análise defina, basta formatar com um padrão reconhecível e iquestionável.

**Especifique a fonte**
Padrão utilizada: IEEE 830 (ou ISO/IEC/IEEE 29148, versão mais moderna)
Formato simples: ID, descrição, prioridade, origem, critérios de aceitação

| ID      | Descrição                                          | Prioridade | Origem      | Critérios de Aceitação                                      |
|---------|----------------------------------------------------|------------|-------------|-------------------------------------------------------------|
| REQ-001 | Funcionalidade de login de usuário com autenticação de dois fatores. | Alta       | Stakeholder | Usuários podem fazer login usando senha e código de verificação enviado por e-mail. |
| REQ-002 | O sistema deve suportar exportação de dados em formato CSV. | Média      | Compliance  | Usuários podem exportar relatórios em formato CSV na seção de relatórios. |


Exemplo:

| LRP001: Realizar a gestão de reserva de quadras esportivas de beach tennis e futebol society.                                      |
|-------------------------------------------------------------------------------------------------------------------------------------------------------|
| LRE001: Permitir que o cliente realize a gestão de reserva de quadras de beach.                                      |

| ID      | Descrição                                          | Prioridade | Origem      | Critérios de Aceitação                                      |
|---------|----------------------------------------------------|------------|-------------|-------------------------------------------------------------|
| REQ-001 |Cadastro de Cliente - campos: *Nome, *CPF, Telefone | Alta       | AR01-001 | |
| REQ-002 |Validar CPF do cliente no momento do cadastro. | Alta      | AR01-002  | Realização do cadastro com dados válidos via navegador.  |

# Materiais de Estudo
## Bibliografias Recomendadas
- **SOMMERVILLE, Ian. Engenharia de Software. 9. ed. São Paulo: Pearson Education do Brasil, 2011.**
  - **Capítulo 5: System Modeling (Modelagem de Sistemas)**

    Este capítulo aborda técnicas de modelagem de sistemas, incluindo a identificação de entidades e seus relacionamentos, fundamentais para a análise de requisitos.

- **MACHADO, Felipe Nery Rodrigues. Análise e Gestão de Requisitos de Software: Onde Nascem os Sistemas. 1. ed. São Paulo: Érica, 2011.**

  - **Capítulo 4: Modelagem de Requisitos**

    Discute métodos para modelagem eficaz de requisitos, enfatizando a importância da identificação de entidades e definição de seus atributos.

- **PFLEEGER, Shari Lawrence; ATLEE, Joanne M. Engenharia de Software: Teoria e Prática. 4. ed. São Paulo: Pearson Prentice Hall, 2010.**

  - **Capítulo 4: Eliciting Requirements (Levantamento de Requisitos)**

    Explora técnicas para elicitação e especificação de requisitos, incluindo a definição de campos e características das entidades.

- **BEZERRA, Eduardo. Princípios de Análise e Projetos de Sistemas com UML. 3. ed. Rio de Janeiro: Elsevier, 2014.**

  - **Capítulo 5: Modelagem de Classes**

    Apresenta a modelagem de classes utilizando UML, focando na definição de atributos e relacionamentos entre entidades.

- **DENNIS, Alan; WIXOM, Barbara Haley; ROTH, Roberta M. Análise e Projeto de Sistemas. 5. ed. São Paulo: LTC, 2014.**

  - **Capítulo 3: Determinação dos Requisitos**

    Aborda o processo de determinação e análise de requisitos, incluindo a identificação de regras de negócio.

- **SCHACH, Stephen R. Engenharia de Software. 7. ed. Porto Alegre: McGraw-Hill - Artmed, 2009.**

  - **Capítulo 6: Engenharia de Requisitos**

    Discute a engenharia de requisitos e a importância das regras de negócio no desenvolvimento de sistemas.

- **TONSIG, Sérgio Luiz. Engenharia de Software: Análise e Projeto de Sistemas. 2. ed. Rio de Janeiro: Futura, 2008.**

  - **Capítulo 4: Análise Estruturada**

    Explora a técnica de análise estruturada, incluindo o uso de Diagramas de Fluxo de Dados (DFDs) para decomposição funcional.

- **SBROCCO, José Henrique Teixeira de Carvalho; MACEDO, Paulo Cesar de. Metodologias Ágeis: Engenharia de Software Sob Medida. 1. ed. São Paulo: Érica, 2012.**

  - **Capítulo 3: Engenharia de Software: Conceitos Básicos**

    Introduz conceitos fundamentais de engenharia de software, abordando metodologias ágeis e sua relação com a análise de requisitos.

## Materiais Adicionais Acessíveis e Gratuitos

- **Engenharia de Software Moderna**

  - **Capítulo 3: Requisitos**

    Este capítulo trata da engenharia de requisitos, definindo os tipos de requisitos funcionais e não funcionais e as atividades relacionadas à especificação e gerenciamento de requisitos.

    Disponível em: [https://engsoftmoderna.info/cap3.html](https://engsoftmoderna.info/cap3.html)

- **Engenharia de Software - Ian Sommerville**

  - **Capítulo 4: Engenharia de Requisitos**

    Este capítulo aborda a engenharia de requisitos, incluindo processos de elicitação, análise, especificação e validação de requisitos.

    Disponível em: [https://www.facom.ufu.br/~william/Disciplinas%202018-2/BSI-GSI030-EngenhariaSoftware/Livro/engenhariaSoftwareSommerville.pdf](https://www.facom.ufu.br/~william/Disciplinas%202018-2/BSI-GSI030-EngenhariaSoftware/Livro/engenhariaSoftwareSommerville.pdf)

- **Princípios de Análise e Projeto de Sistemas com UML - Eduardo Bezerra**

  - **Capítulo 5: Modelagem de Classes de Análise**

    Este capítulo apresenta a modelagem de classes de análise utilizando UML, enfatizando a identificação de classes, atributos e relacionamentos.

    Disponível em: [https://www.tecgraf.puc-rio.br/ftp_pub/lfm/EduardoBezerra-PrincipiosAnaliseProjetoSistemasComUML-2aEd.pdf](https://www.tecgraf.puc-rio.br/ftp_pub/lfm/EduardoBezerra-PrincipiosAnaliseProjetoSistemasComUML-2aEd.pdf)
