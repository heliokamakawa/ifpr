@startuml "Diagrama de Casos de Uso – Gestão de Reservas de Quadras"
!define USECASE_FONT_SIZE 12

' Definição dos Atores
actor "Cliente" as Cliente
actor "Administrador" as Admin

' Desenho do Sistema (retângulo com nome)
rectangle "Sistema de Reservas" {

  ' Casos de uso para Cliente
  usecase "Realizar reserva de quadra" as CU01
  usecase "Cancelar reserva" as CU02
  usecase "Consultar disponibilidade" as CU03
  usecase "Confirmar presença" as CU04
  
  ' Casos de uso para Administrador
  usecase "Gerenciar reservas" as CU05
  usecase "Cadastrar quadra" as CU06
  usecase "Visualizar calendário geral" as CU07
  
  ' Relacionamentos <<include>> ou <<extend>> podem ser adicionados aqui:
  CU01 .> CU03 : <<include>>
  CU02 .> CU03 : <<extend>>
}

' Associação dos Atores com os Casos de Uso
Cliente --> CU01
Cliente --> CU02
Cliente --> CU03
Cliente --> CU04

Admin --> CU03
Admin --> CU05
Admin --> CU06
Admin --> CU07

@enduml
