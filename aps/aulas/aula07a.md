# 📘 Diagrama de Casos de Uso – Guia Completo

## 📌 O que é?

O **Diagrama de Casos de Uso** (*Use Case Diagram*) é um tipo de diagrama da UML (Unified Modeling Language) que descreve as funcionalidades de um sistema sob a perspectiva dos usuários (atores). Seu foco está **no comportamento externo do sistema** – ou seja, **o que o sistema faz**, não como ele faz.

---

## 🎯 Objetivos

- Representar graficamente as funcionalidades do sistema;
- Identificar os atores (usuários/sistemas externos);
- Especificar o relacionamento entre atores e funcionalidades (casos de uso);
- Facilitar a comunicação entre desenvolvedores, clientes e stakeholders.

### 📝 Observações
Use esse diagrama para comunicar as funcionalidades com clientes, professores ou colegas de equipe.  
Pode ser usado no início do projeto, durante o levantamento de requisitos.  
Ideal para documentar sistemas de forma simples e compreensível.  

### 📎 Dica
Sempre comece o diagrama identificando os atores principais e os serviços essenciais que o sistema precisa oferecer. A partir disso, vá refinando os casos de uso e relacionamentos.

## Boas Práticas
- Nomear claramente os casos de uso com verbos no infinitivo;
- Manter simplicidade e foco no comportamento externo do sistema;
- Utilizar relacionamentos com moderação para não poluir o diagrama.

## Ferramentas Gratuitas para Criação de Diagramas de Casos de Uso

### Ferramentas Online
- [Draw.io (diagrams.net)](https://www.diagrams.net/): editor gratuito e online de diagramas com suporte a UML.
- [Lucidchart (versão gratuita limitada)](https://www.lucidchart.com/): ferramenta colaborativa online com suporte a diagramas UML.
- [Creately](https://www.creately.com/): ferramenta online com suporte a UML (versão gratuita limitada).
- [PlantUML Online Demo](http://www.plantuml.com/plantuml/uml/): para gerar diagramas a partir de texto com sintaxe PlantUML.

### Ferramentas para Instalação
- [StarUML](https://staruml.io/): ferramenta poderosa para modelagem UML (versão gratuita com limitações).
- [UMLet](https://www.umlet.com/): leve e simples, ideal para diagramas rápidos.
- [Modelio](https://www.modelio.org/): software livre com suporte completo a UML.
- [PlantUML](https://plantuml.com/): gera diagramas a partir de texto, pode ser integrado a IDEs e editores de texto como VS Code.

---

## 🧩 Elementos do Diagrama

| Elemento         | Símbolo     | Descrição                                                                 |
|------------------|-------------|---------------------------------------------------------------------------|
| **Ator**         | Boneco      | Entidade externa que interage com o sistema (usuário, sistema, dispositivo).      |
| **Caso de Uso**  | Elipse      | Funcionalidade ou serviço oferecido pelo sistema.                         |
| **Sistema**      | Retângulo   | Representa o escopo do sistema e contém os casos de uso.                 |
| **Associação**   | Linha reta  | Conecta um ator ao caso de uso com o qual interage.                      |
| **Include**      | Linha tracejada com `<<include>>` | Um caso de uso inclui sempre o comportamento de outro.     |
| **Extend**       | Linha tracejada com `<<extend>>`  | Um caso de uso pode opcionalmente estender outro.     |
| **Generalização**| Linha com seta aberta | Relaciona atores ou casos de uso com comportamentos similares. |

---

## 🎭 Atores

Entidades que interagem com o sistema. Podem ser:
- Pessoas (usuários);
- Dispositivos;
- Sistemas externos.

---
## 📘 Exemplo Textual

### Sistema de Reservas de Quadras Esportivas

#### 🎭 Atores:
- **Cliente**
- **Administrador**

#### ✅ Casos de uso:
- Realizar reserva de quadra
- Cancelar reserva
- Consultar disponibilidade
- Confirmar presença
- Gerenciar reservas
- Cadastrar quadra
- Visualizar calendário geral

#### 🔗 Relacionamentos:
- O cliente pode realizar, cancelar e consultar reservas.
- O administrador pode consultar disponibilidade, gerenciar reservas e cadastrar quadras.
- "Realizar reserva" inclui "Consultar disponibilidade".
- "Cancelar reserva" pode estender "Consultar disponibilidade".

---

## 🌐 Diagrama em PlantUML

Para visualizar o diagrama, você pode usar uma extensão no VS Code como **PlantUML** ou sites como [PlantUML Online Server](https://www.plantuml.com/plantuml).

```plantuml
@startuml "Diagrama de Casos de Uso – Gestão de Reservas de Quadras"
actor "Cliente" as Cliente
actor "Administrador" as Admin

rectangle "Sistema de Reservas" {

  usecase "Realizar reserva de quadra" as CU01
  usecase "Cancelar reserva" as CU02
  usecase "Consultar disponibilidade" as CU03
  usecase "Confirmar presença" as CU04
  
  usecase "Gerenciar reservas" as CU05
  usecase "Cadastrar quadra" as CU06
  usecase "Visualizar calendário geral" as CU07

  CU01 .> CU03 : <<include>>
  CU02 .> CU03 : <<extend>>
}

Cliente --> CU01
Cliente --> CU02
Cliente --> CU03
Cliente --> CU04

Admin --> CU03
Admin --> CU05
Admin --> CU06
Admin --> CU07
@enduml
```



## 🔗 Relacionamentos

- **Associação**: ator interage com um caso de uso.
- **\<\<include\>\>**: um caso de uso sempre **invoca** outro. Ex: "Realizar Reserva" sempre inclui "Verificar Disponibilidade".
- **\<\<extend\>\>**: um caso de uso pode **opcionalmente** estender outro. Ex: "Cacelar Reserva" pode estender "Verificar disponibilidade".
- **Generalização (herança)**: usada quando há **atores semelhantes** ou **casos de uso com comportamento comum**.

---

## 🌐 Diagrama Simples: Sistema de Reservas de Quadras

```plantuml
@startuml "Diagrama de Casos de Uso – Sistema de Reservas"
left to right direction

actor "Cliente" as Cliente
actor "Administrador" as Admin

rectangle "Sistema de Reservas" {
  usecase "Realizar reserva de quadra" as CU01
  usecase "Cancelar reserva" as CU02
  usecase "Consultar disponibilidade" as CU03
  usecase "Confirmar presença" as CU04
  usecase "Gerenciar reservas" as CU05
  usecase "Cadastrar quadra" as CU06
  usecase "Visualizar calendário geral" as CU07

  CU01 .> CU03 : <<include>>
  CU02 .> CU03 : <<extend>>
}

Cliente --> CU01
Cliente --> CU02
Cliente --> CU03
Cliente --> CU04

Admin --> CU03
Admin --> CU05
Admin --> CU06
Admin --> CU07
@enduml
```

## 📚 Exemplo – \<\<include\>\> vs \<\<extend\>\>
📌 Situação:
O usuário pode realizar uma reserva, mas isso sempre exige verificação de disponibilidade (<<include>>).  
Se for uma reserva para horário fora do expediente, é necessário solicitar aprovação (<<extend>>).  

```plantuml
@startuml
left to right direction

actor "Usuário" as Usuario

rectangle "Sistema de Reservas de Quadras" {
  usecase "Realizar reserva" as UC1
  usecase "Verificar disponibilidade" as UC2
  usecase "Solicitar aprovação extra-horário" as UC3

  UC1 .> UC2 : <<include>>
  UC1 .> UC3 : <<extend>>
}

Usuario --> UC1
@enduml

```

### 🧠 Explicação:
  - \<\<include\>\>: "Verificar disponibilidade" sempre será executado quando o usuário quiser reservar.  
  - \<\<extend\>\>: "Solicitar aprovação extra-horário" só acontece se o horário estiver fora do expediente padrão.

## 🧬 Exemplo – Herança entre Atores no Sistema de Quadras
📌 Situação:
No sistema há vários tipos de usuários, como "Aluno", "Servidor" e "Visitante". Todos herdam de "Usuário", que tem funcionalidades básicas como "Realizar reserva".
Mas alguns têm casos de uso exclusivos, como "Prioridade de agendamento" para servidores.

```plantuml
@startuml
left to right direction

actor "Usuário" as User
actor "Aluno" as Aluno
actor "Servidor" as Servidor
actor "Visitante" as Visitante

rectangle "Sistema de Reservas de Quadras" {
  usecase "Realizar reserva" as UC1
  usecase "Cancelar reserva" as UC2
  usecase "Solicitar prioridade de agendamento" as UC3
}

User --> UC1
User --> UC2
Servidor --> UC3

Aluno --|> User
Servidor --|> User
Visitante --|> User
@enduml

```
### 🧠 Explicação:
Todos os atores especializados herdam os direitos e interações do ator "Usuário".  
Somente "Servidor" pode realizar ações específicas como solicitar prioridade de agendamento, o que reflete políticas institucionais, por exemplo.  



## Material de Estudo

### Base Bibliográfica Oficial
- **LARMAN, Craig.** *Utilizando UML e padrões: uma introdução à análise e ao projeto orientados a objetos e ao desenvolvimento iterativo.* 3. ed. Porto Alegre: Bookman, 2005.
- **PRESSMAN, Roger S; MAXIM, Bruce R.** *Engenharia de Software: uma abordagem profissional.* 9. ed. Porto Alegre: McGraw-Hill, 2021.
- **MACHADO, Felipe Nery Rodrigues.** *Análise e gestão de requisitos de software: onde nascem os sistemas.* São Paulo: Érica, 2011.

### Bibliografia Complementar
- **BEZERRA, Eduardo.** *Princípios de análise e projeto de sistemas com UML.* 2. ed. Rio de Janeiro: Campus, 2007.
- **COHN, Mike; SILVA, Aldir José Coelho Corrêa da.** *Desenvolvimento de software com Scrum.* Porto Alegre: Bookman, 2011.
- **DENNIS, Alan; WIXOM, Barbara Haley.** *Análise e projeto de sistemas.* 2. ed. Rio de Janeiro: LTC, 2011.
- **MCLAUGHLIN, Brett; POLLICE, Gary; WEST, David.** *Use a cabeça: análise e projeto orientado ao objeto.* Rio de Janeiro: Alta Books, 2007.
- **SBROCCO, José Henrique Teixeira de Carvalho; MACEDO, Paulo Cesar de.** *Metodologias ágeis: engenharia de software sob medida.* São Paulo: Érica, 2012.

### Materiais Complementares Online
- Site oficial do PlantUML: [https://plantuml.com/](https://plantuml.com/)
- Repositório de exemplos do PlantUML: [https://github.com/plantuml/plantuml](https://github.com/plantuml/plantuml)


