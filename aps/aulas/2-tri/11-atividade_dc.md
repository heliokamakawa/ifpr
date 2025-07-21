# 🧠 Atividade: "Revisão Invasiva: Salvem o Diagrama!"

## 🎯 Objetivo

Revisar, analisar criticamente e aprimorar diagramas de classe com base em critérios técnicos de qualidade, promovendo o raciocínio crítico, a colaboração e a consolidação de boas práticas em modelagem orientada a objetos.

---

## 🧪 Descrição da Atividade

Cada equipe deve:

1. **Entregar um Diagrama de Classes**, baseado em um estudo de caso em andamento, até o início da aula 29/07.
2. O professor irá **sortear** em que cada equipe analisará anonimamente o diagrama de outra equipe.
3. **Identificar e justificar erros ou sugestões de melhorias**, utilizando um checklist técnico.
4. **Discutir e validar os apontamentos** com a equipe proprietária do diagrama. O professor atuará como árbitro técnico em caso de divergências.
5. **Corrigir e entregar a versão final** do diagrama até o fim do trimestre, incorporando os ajustes necessários.

---

## 🔎 Avaliação e Pontuação

### ✅ Qualidade do seu Diagrama
Pontuação baseada no número de erros válidos encontrados por outra equipe:

| Erros Identificados | Pontuação |
|---------------------|-----------|
| 0                   | 100 pts   |
| 1–2                 | 90 pts    |
| 3–5                 | 70 pts    |
| 6-10           | 50 pts    |
| 10-20           | 30 pts    |
| 20-30           | 10 pts    |

### 🔍 Correções Encontradas
Pontuação baseada nos erros válidos identificados na análise do diagrama alheio:

- **+10 pts por erro identificado e aceito**
- **+5 pts por justificativa técnica fundamentada**
- **–2 pts por apontamento incorreto ou infundado**

---

## 🧩 Checklist Técnico para Revisão de Diagramas de Classe

Use o checklist abaixo para analisar criticamente os diagramas. Justifique com base em boas práticas e nos conceitos estudados.

### 1. Relacionamentos e Cardinalidade
- ❌ Ausência de cardinalidade nas associações.
- ❌ Cardinalidade genérica ou imprecisa (ex: `1..*` sem justificar o mínimo).
- ❌ Cardinalidade mínima incorreta: conferir se o valor mínimo deve mesmo ser `1` (obrigatoriedade) ou `0` (opcional).
- ❌ Má interpretação do domínio ao definir relacionamentos obrigatórios.
- ❌ Uso incorreto de associação, agregação ou composição.
- ❌ Relações bidirecionais sem necessidade.
- ❌ Relações redundantes ou cíclicas sem justificativa.

### 2. Coesão
- ❌ Classe com múltiplas responsabilidades não relacionadas.
- ❌ Métodos sem ligação com os atributos da classe.
- ❌ Lógica misturada (ex: regras de negócio + persistência + interface).

### 3. Acoplamento
- ❌ Dependência excessiva entre classes.
- ❌ Falta de encapsulamento (atributos públicos).
- ❌ Referências desnecessárias entre classes que deveriam ser independentes.

### 4. Granularidade e Organização
- ❌ Classes muito genéricas ou sem significado claro (ex: `Coisa`, `Dado`).
- ❌ Classes excessivamente detalhadas.
- ❌ Ausência de abstração (falta de uso de herança ou interfaces).
- ❌ Classes com muitas responsabilidades (violação do princípio da responsabilidade única).

### 5. Herança e Polimorfismo
- ❌ Herança usada quando composição seria mais adequada.
- ❌ Falta de generalização para comportamentos comuns.
- ❌ Classes filhas sem especialização ou implementação adicional.
- ❌ Uso de herança múltipla em UML, quando não suportada.

### 6. Nomenclatura e Semântica
- ❌ Nomes genéricos, vagos ou inconsistentes.
- ❌ Mistura de idiomas ou padrões (ex: `Cliente` e `Customer`).
- ❌ Métodos com nomes que não expressam ação (`dados()`, `info()`).
- ❌ Atributos com nomes ambíguos.

### 7. Encapsulamento e Visibilidade
- ❌ Atributos públicos (`+`), violando o encapsulamento.
- ❌ Falta de modificadores de visibilidade (ex: `+`, `-`, `#`).
- ❌ Métodos privados utilizados fora da classe.

### 8. Atributos e Métodos
- ❌ Ausência de tipos nos atributos e métodos.
- ❌ Métodos sem parâmetros ou com parâmetros mal justificados.
- ❌ Atributos desnecessários ou repetidos.
- ❌ Métodos que não realizam ações claras.

### 9. Notação UML
- ❌ Uso incorreto da notação UML.
- ❌ Falta de separação entre atributos e métodos na classe.
- ❌ Relacionamentos representados com setas ou linhas incorretas.
- ❌ Elementos gráficos mal formatados ou inconsistentes.

### 10. Outros Problemas de Modelagem
- ❌ Classes isoladas, sem relacionamento com o restante do sistema.
- ❌ Classes apenas com atributos, sem métodos (a menos que sejam DTOs).
- ❌ Elementos modelados que não refletem os requisitos do estudo de caso.
- ❌ Modelagem voltada à implementação, não ao domínio do problema.

---

## 🗂️ Entrega Final

Cada equipe deverá incorporar as melhorias discutidas e entregar, ao final do trimestre, a **versão corrigida e final** do Diagrama de Classes. Essa entrega será avaliada de forma complementar à APS e influenciará positivamente na nota final.

---

## 👨‍🏫 Mediação

O professor atuará como **árbitro técnico** nas discussões e também responsável por validar os apontamentos e definir pontuações nas situações controversas.

---
