# 📢 Orientação Inicial – Último Trimestre da Disciplina APS  

## 🔹 Organização das Equipes  
- Diante das desistências ocorridas, **as equipes podem se reorganizar**, respeitando o limite máximo de **4 integrantes por grupo**.  
- Cada equipe deve confirmar sua nova composição **até o final da aula**.  

---

## 🔹 Objetivos Principais do Trimestre  

1. **Prototipação de Telas Navegáveis com Validações – Teste de Aceite do Requisito**  
   - Desenvolver todas as telas do sistema proposto (controle de empréstimos de materiais), de forma **navegável** e com **validações mínimas**.  
   - Cada requisito funcional deve estar representado e validado por meio de **critérios de aceitação**.  
   - **Validações mínimas esperadas (exemplos):**  
     - Campo de justificativa não pode ser vazio e deve ter pelo menos 10 caracteres.  
     - Data prevista de devolução não pode ser anterior à data atual.  
     - Campos obrigatórios devem exibir mensagem clara ao usuário quando não preenchidos.  
   - O objetivo é validar **se o requisito realmente foi atendido** na interação com a interface.  

2. **Correção do Documento de Software**  
   - Revisão do documento já produzido (requisitos, casos de uso, diagramas, testes de aceitação).  
   - Ajustar inconsistências encontradas durante a prototipação e a validação.  
   - Garantir **rastreabilidade**: Requisito ↔ Tela ↔ Evidência (screenshot/teste).  
   - **Gerência de requisitos:** implementar novas validações ou ajustes identificados na prototipação.  

3. **Elaboração do Resumo da SETIF**  
   - Preparar um **resumo científico** para submissão na **SETIF (Semana de Tecnologia da Informação do IFPR)**.  
   - O resumo deve apresentar:  
     - Contexto e problema abordado.  
     - Objetivo do trabalho (controle de empréstimos).  
     - Metodologia utilizada (engenharia de requisitos, modelagem, prototipação com IA).  
     - Resultados alcançados (documento revisado, protótipo navegável).  
     - Considerações finais (aprendizados e desafios).  
   - **Atenção:** seguir normas da SETIF (tamanho máximo, formatação e prazo de submissão).  

---

## 🔹 Critérios de Avaliação  

- **Cobertura de Requisitos** – todas as funcionalidades mapeadas em telas.  
- **Qualidade do Protótipo** – navegabilidade, consistência e feedbacks claros.  
- **Validações e Testes de Aceitação** – regras mínimas implementadas + evidências.  
- **Correção e Clareza do Documento** – revisão coerente com o protótipo.  
- **Resumo SETIF** – clareza, objetividade e aderência às normas do evento.  
- **Uso Crítico da IA** – prompts registrados e revisão crítica das saídas.  

> **Sugestão de pesos:** Protótipo (40%), Documento (30%), Resumo SETIF (20%), Uso crítico da IA (10%).  

---

## 🔹 Guardrails para Uso da IA (obrigatórios)  

A IA pode e deve ser utilizada como **copiloto**, mas com regras claras:  

1. **Prompt ≠ Código final**  
   - Todo trecho gerado deve passar por revisão:  
     - Acessibilidade básica.  
     - Nomes claros e consistentes.  
     - Estados previstos: *loading*, *empty*, *error*.  
     - Remoção de lógica desnecessária.  

2. **Padrão de projeto**  
   - Manter a **estrutura de pastas e nomenclatura fornecidas**.  
   - Não aceitar arquiteturas inventadas ou complexidades desnecessárias.  

3. **Checklist de Pull Request (PR)**  
   Cada PR deve incluir obrigatoriamente:  
   - Requisito/critério atendido.  
   - Screenshots das telas/fluxos.  
   - Explicação do que foi aceito, editado ou rejeitado da sugestão da IA.  
   - `dart analyze` sem erros.  
   - Pelo menos **1 teste passando** (widget ou golden test).  

4. **Uso legítimo da IA**  
   - A IA deve apoiar a geração de **esqueletos de widgets, formulários e validações repetitivas**.  
   - O ganho está em reduzir esforço mecânico e liberar tempo para **reflexão crítica**: verificar se a tela realmente cumpre o requisito.  

---

## 💡 Observação Final  
O objetivo deste trimestre não é construir o sistema completo, mas **validar se os requisitos levantados realmente fazem sentido na prática**.  
Para isso, o protótipo e a correção do documento serão fundamentais, além do resumo que consolida a experiência para apresentação externa.  
