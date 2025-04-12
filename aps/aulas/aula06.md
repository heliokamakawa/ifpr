# Diagrama de Casos de Uso

## 📌 O que é?

O **Diagrama de Casos de Uso** (ou *Use Case Diagram*) é um tipo de diagrama da UML (Unified Modeling Language) que descreve as funcionalidades do sistema do ponto de vista dos usuários (atores). Ele ajuda a entender *o que* o sistema deve fazer sem se preocupar com *como* isso será feito.

---

## 🎯 Objetivos

- Representar graficamente as funcionalidades do sistema.
- Identificar os atores que interagem com o sistema.
- Especificar o relacionamento entre atores e casos de uso.
- Ajudar na comunicação entre desenvolvedores e usuários.

---

## 🧩 Elementos do Diagrama

| Elemento         | Símbolo     | Descrição                                                                 |
|------------------|-------------|---------------------------------------------------------------------------|
| **Ator**         | Boneco      | Representa o usuário ou sistema externo que interage com o sistema.      |
| **Caso de Uso**  | Elipse      | Representa uma funcionalidade ou serviço oferecido pelo sistema.         |
| **Sistema**      | Retângulo   | Representa o escopo do sistema e contém os casos de uso.                 |
| **Associação**   | Linha reta  | Conecta ator ao caso de uso com o qual interage.                         |
| **Include**      | Linha tracejada com `<<include>>` | Indica que um caso de uso sempre inclui outro.     |
| **Extend**       | Linha tracejada com `<<extend>>`  | Indica que um caso de uso pode estender outro.     |

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
