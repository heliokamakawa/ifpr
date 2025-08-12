# 🧩 Exercícios de Modelagem - Diagrama de Classe (UML)
Respostas com explicações passo a passo.

---

## 1. 🌊 Universo Bob Esponja - Abstração

**Classes Abstratas (conceitos gerais, não instanciáveis)**
1. Personagem
2. AnimalMarinho
3. VeículoMarinho
4. Habitação
5. Comida

**Classes Concretas (objetos reais que podem ser instanciados)**
1. BobEsponja
2. LulaMolusco
3. SiriCascudo
4. CasaAbacaxi
5. HambúrguerDeSiri

**Explicação:** Classes abstratas representam conceitos gerais; classes concretas representam instâncias possíveis. Ex.: "Personagem" é abstrato, mas "BobEsponja" é um personagem concreto.

---

## 2. 🧪 Laboratório - Características e Ações

**Classe 1:** Microscópio  
- **Atributos:** marca, modelo, aumentoMáximo, tipoDeIluminação, numeroDeSerie  
- **Métodos:** ligar(), ajustarFoco(), capturarImagem()

**Classe 2:** ReagenteQuímico  
- **Atributos:** nome, fórmulaQuímica, pureza, quantidade, dataValidade  
- **Métodos:** armazenar(), medir(), descartar()

**Classe 3:** TécnicoDeLaboratório  
- **Atributos:** nome, cpf, especialidade, registroProfissional, turno  
- **Métodos:** prepararAmostra(), realizarExperimento(), registrarResultado()

**Explicação:** Cada classe foi pensada com atributos essenciais e métodos que representam ações reais no contexto de laboratório.

---

## 3. ⚽ Jogo de Futebol - Diagrama de Classe UML

**Classes:**
- Time(nome, cidade, lista<Jogador>)  
  - Métodos: adicionarJogador(), removerJogador(), escalarTime()
- Jogador(nome, posição, numeroCamisa)  
  - Métodos: chutar(), passar(), defender()
- Partida(data, local, timeMandante, timeVisitante)  
  - Métodos: iniciar(), registrarGol(), finalizar()

**Associações:**
- Um **Time** tem *muitos* **Jogadores** (1..*).
- Um **Jogador** pertence a *um único* **Time** (1).
- Uma **Partida** envolve *dois* **Times** (2).
- Um **Time** pode participar de *muitas* **Partidas** (0..*).

---

## 4. 🚗 Sistema de Locação de Carros

**Classes:**
- Cliente(nome, cpf, telefone)  
  - Métodos: alugarCarro(), devolverCarro(), pagar()
- Carro(placa, modelo, ano)  
  - Métodos: ligar(), abastecer(), registrarKilometragem()
- Locacao(dataInicio, dataFim, valor)  
  - Métodos: calcularValor(), gerarContrato(), encerrar()

**Associações:**
- Cliente realiza *muitas* Locacoes (0..*).
- Cada Locacao envolve *um* Cliente (1) e *um* Carro (1).
- Carro pode estar em *muitas* Locacoes (0..*).

**Desafio Extra - incoerentes em Carro:**
- Atributos incoerentes: corFavoritaDoMotorista, playlistDoMotorista, humorDoMotorista  
- Métodos incoerentes: cozinhar(), tocarMusicaFavorita(), enviarMensagemNoWhatsApp()

**Explicação:** Apesar de serem “possíveis” no mundo real, esses atributos/métodos não fazem sentido na modelagem de um sistema de locação.

---

## 5. 🧾 Análise de Modelagem - Classe Cliente

**a) Presencial:** INCORRETO  
- Problema: "registro_acadêmico" não faz sentido em carrinho de lanche presencial.  
- Correção: Cliente(id, nome, cpf, identidade, endereço, número, complemento, referência, bairro, cep)

**b) Delivery:** INCORRETO  
- Problema: Mesmo erro do presencial, “registro_acadêmico” não se aplica.  
- Correção: Cliente(id, nome, cpf, identidade, endereço, número, complemento, referência, bairro, cep)

---

## 6. Análise de Modelagem - Estrutura de Classes

**a) Sorveteria:** INCORRETO  
- Problema: Criar uma classe para cada sabor repete atributos.  
- Correção: Classe Sorvete(sabor, id, data_vencimento, lote, fornecedor)

**b) Fábrica de Peças:** INCORRETO  
- Problema: Criar uma classe por filial repete atributos.  
- Correção: Classe Filial(id, razão_social, inscrição_estadual, endereço, nome_fantasia, telefone, atividade_economica, clientes)

---

## 7. 🎓 Modelagem de Classe - Correções

**a) Aluno:** INCORRETO  
- Correção: Aluno(id, nome, registro_acadêmico, cpf, curso)

**b) Cliente (Loja de Roupas):** CORRETO  
- Observação: Pode incluir preferências, desde que sejam relevantes para personalização.

**c) Serviço (Agendamento):** CORRETO  
- Estrutura bem definida para agendamento.

---

## 8. Associações

**a) Time e Jogador:** CORRETO  
- Multiplicidade adequada e associação coerente.

**b) Lanche/Pedido/Cliente:** CORRETO  
- Cliente faz muitos pedidos; pedido tem muitos produtos.

---

## 9. Atributos com valores exemplificados

**a) Pessoa:** INCORRETO  
- Não se coloca valor literal na modelagem. Correto: Pessoa(id, nome, cpf, endereço, telefone, cidade)

**b) Cliente Pizza Delivery:** INCORRETO  
- Mesmo erro. Correto: Cliente(id, nome, cpf, endereço, telefone, cidade)

**c) Aluno:** INCORRETO  
- Mesmo erro. Correto: Aluno(id, nome, cpf, serie, curso)

---

## 10. Erros comuns em associação e herança

- **Associação equivocada:** Criar herança entre classes que deveriam ter apenas associação (ex.: Cliente herda de Endereço → errado; deveria ter relação de composição).  
- **Herança equivocada:** Criar classe "CarroElétrico" herdando de "Bateria" (erro conceitual; carro *tem* uma bateria, não *é* uma bateria).

---

## 11. Análise Crítica de Herança

**a) Produto e Cliente:** INADEQUADO  
- Compartilhar apenas “id” e “nome” não justifica herança; eles não têm relação semântica.

**b) Calculadoras:** INADEQUADO  
- Financeira não é um tipo de Científica. Correto: ambas herdam de Calculadora, mas não entre si.

---

## 12. Sistema Escolar - UML

**Classes:**
- Professor(nome, horasAula, numeroDisciplinas, mediaAlunos)  
  - Métodos: ministrarAula(), corrigirProvas(), calcularMediaAlunos()
- Disciplina(nome, cargaHoraria, numeroAlunos)  
  - Métodos: adicionarAluno(), removerAluno()
- Aluno(nome, matricula)  
  - Métodos: assistirAula(), realizarProva()

**Associações:**
- Professor leciona muitas Disciplinas (1..*).  
- Disciplina é lecionada por um Professor (1).  
- Disciplina tem muitos Alunos (0..*).  
- Aluno pode estar em muitas Disciplinas (0..*).

---

## 13. Correções do projeto em equipe
*(Essa parte deve ser feita em conjunto pelo grupo, analisando o diagrama criado e aplicando correções segundo as boas práticas estudadas.)*
