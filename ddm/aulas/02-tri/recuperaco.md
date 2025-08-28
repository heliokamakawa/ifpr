# 📱 Prova de Recuperação – Desenvolvimento para Dispositivos Móveis  

## 🎯 Objetivo da Avaliação  

Esta prova de recuperação tem como finalidade verificar a capacidade do aluno em desenvolver um **aplicativo Flutter funcional com persistência em SQLite**, aplicando:  

- **Validação de formulários** com regras de negócio;  
- **Salvar uma entidade**;  
- **Listar todos os registros de uma entidade** (a inserção pode ser feita via SQL diretamente no banco) e realizar a operação **excluir**;  
- **Editar uma entidade**: seleção do registro, exibição dos dados antigos nos campos e atualização correta no banco e na listagem.  

O aluno deverá demonstrar domínio suficiente para comprovar que pode acompanhar a disciplina nos próximos trimestres.  

---

## 💻 Recursos Disponíveis  

- A prova será realizada no **papel almaço**, entregue pelo professor no início da atividade. Essa é a versão oficial da avaliação, garantindo que todos tenham uma forma segura de registrar suas respostas.  

- **Opcionalmente**, o aluno poderá utilizar seu **computador pessoal** com IDE, autocomplemento e bibliotecas para consulta e apoio.  

- Caso escolha apresentar diretamente no computador:    
  - O registro no papel é recomendado como segurança, mas a opção de não fazê-lo é uma decisão do aluno, que deverá assumir essa escolha.  

### 📵 Uso de Celulares  
Durante a avaliação, o celular deve permanecer **desligado e guardado dentro da mochila**.  
Não é permitido portar o aparelho no bolso ou sobre a mesa.  

---

## 📌 Contexto Geral  

O aplicativo a ser desenvolvido será um **CRUD simples com persistência em SQLite**.  
A entidade a ser utilizada depende do último dígito do RA do aluno:  

- **RA ímpar → Categoria**  
  - Atributos:  
    - `id` (inteiro, autoincremento)  
    - `nome` (obrigatório, mínimo 3–4 caracteres, UNIQUE)  
    - `descricao` (opcional, mínimo 5 caracteres se informado)  

- **RA par → Estado**  
  - Atributos:  
    - `id` (inteiro, autoincremento)  
    - `nome` (obrigatório, mínimo 3 caracteres)  
    - `sigla` (obrigatório, exatamente 2 letras maiúsculas, UNIQUE)  

---

## ✅ Definição dos *Checks*  

No início da prova, cada aluno deverá definir **4 *checks*** que representarão as entregas funcionais mínimas do seu aplicativo.  

O aluno tem **liberdade e responsabilidade** para definir cada *check*. Cada um deve:  

- Ser **relevante** para os objetivos da avaliação;  
- Ser **funcional e demonstrável**;  
- Respeitar a **sequência lógica das operações**, garantindo a coerência do aplicativo;  
- Dividir a **complexidade em partes**, de modo que cada entrega represente um passo concreto no desenvolvimento.  

O registro dos *checks* pode ser sucinto, mas deve orientar claramente a execução em etapas.  

- Caso um *check* não funcione durante a demonstração, ele **não será considerado**.  
- O aluno deve **gerenciar o tempo de cada entrega**, assegurando que todas possam ser apresentadas dentro do prazo da avaliação.  

---
