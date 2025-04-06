# Análise de Requisitos

## Identificação de Entidades e Relacionamentos

**Descrição:** Consiste em determinar os principais cadastros/entidades e suas interdependências no sistema, estabelecendo uma base sólida para o desenvolvimento do modelo de dados.

## Definição de Campos e Características das Entidades

**Descrição:** Envolve especificar os atributos de cada entidade, incluindo suas propriedades, tipos de dados e restrições, garantindo que as necessidades de informação sejam atendidas adequadamente.

## Estabelecimento de Regras de Negócio

**Descrição:** Refere-se à identificação e documentação das regras que regem as operações do sistema, assegurando que os processos de negócios sejam corretamente implementados e mantidos.

## Análise Estruturada

**Descrição:** Foca na decomposição funcional do sistema, utilizando ferramentas como o Diagrama de Fluxo de Dados (DFD) para representar processos e fluxos de informação, facilitando a compreensão e a comunicação entre os envolvidos no projeto.

# Processo de Análise de Requisitos

## [LRP001] Levantamento de Requisito Principal

### [LRE001] Levantamento de Requisito Específico 01

#### Fase 01 - Identificação de Cadastros/Entidades

- **[AR01-001]** Cadastro A
- **[AR01-002]** Cadastro B
- **[AR01-003]** Cadastro C

#### Fase 02 - Identificação de Dependências/Correlações

- **[AR01-004]** Cadastro E (Depende de [AR01-002])

#### Fase 03 - Definição de Campos e Características das Entidades

- **[AR01-001] Cadastro A**: Campos: *a, *f, g
- **[AR01-002] Cadastro B**: Campos: *b, *c, d, e, &f

#### Fase 04 - Identificação de Regras de Negócio

- **[AR01-001] Cadastro A**: Campos: *x, *y, z, a
  - **[AR01-002]** Regra K (Exemplo: O cadastro pode ser confirmado somente com autorização do gerente)
  - **[AR01-003]** Regra O
- **[AR01-004] Cadastro B**: Campos: *b, *c, d, e, &f
  - **[AR01-005]** Regra L
  - **[AR01-006]** Regra M

### [LRE002] Levantamento de Requisito Específico 02

#### Fase 01 - Identificação de Cadastros/Entidades

- **[AR02-001]** Cadastro D
- **[AR02-002]** Cadastro E
- **[AR02-003]** Cadastro F

### [LRE003] Levantamento de Requisito Específico 03

#### Fase 01 - Identificação de Cadastros/Entidades

- **[AR03-001]** Cadastro G
- **[AR03-002]** Cadastro H
- **[AR03-003]** Cadastro I

#### Fase 02 - Identificação de Dependências/Correlações

- **[AR03-004]** Cadastro K (Depende de [AR03-002])

### [LRE004] Levantamento de Requisito Específico 04

#### Fase 01 - Identificação de Cadastros/Entidades

- **[AR04-001]** Cadastro J
- **[AR04-002]** Cadastro K
- **[AR04-003]** Cadastro L

## Iniciando a Análise de Requisitos

Agora que os requisitos estão definidos, é fundamental **validar** e **verificar** cada um deles. Após essa etapa, seguimos para a Análise de Requisitos. Para cada requisito específico, realizamos a análise conforme as fases descritas.

## Exemplo Prático

### [LRP001] Realizar a Gestão de Reserva de Quadras Esportivas de Beach Tennis e Futebol Society

#### [LRE001] Permitir que o Cliente Realize a Gestão de Reserva de Quadras de Beach Tennis

**Fase 01 - Identificação de Cadastros/Entidades**

- **[AR01-001]** Cadastro de Cliente
- **[AR01-002]** Cadastro de Quadra
- **[AR01-003]** Cadastro de Reserva

**Fase 02 - Identificação de Dependências/Correlações**

- **[AR01-004]** Relacionamento entre Cliente e Reserva
- **[AR01-005]** Relacionamento entre Quadra e Reserva

**Fase 03 - Definição de Campos e Características das Entidades**

- **[AR01-001] Cadastro de Cliente**: Campos: *Nome, *CPF, Telefone
- **[AR01-002] Cadastro de Quadra**: Campos: *Identificação, *Tipo de Piso, *Localização
- **[AR01-003] Cadastro de Reserva**: Campos: *Data e Hora, &Status

**Fase 04 - Identificação de Regras de Negócio**

- **[AR01-001] Cadastro de Cliente**: Campos: *Nome, *CPF, Telefone
  - **[AR01-002]** Regra: Validar CPF do cliente no momento do cadastro.
- **[AR01-003] Cadastro de Reserva**: Campos: *Data e Hora, &Status
  - **[AR01-005]** Regra: Verificar disponibilidade da quadra antes de confirmar a reserva.

*Legenda:*

- **\*** Campo obrigatório
- **&** Campo de opções


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
