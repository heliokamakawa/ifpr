# Avaliação – 2º Trimestre
**Tema central:** Persistência de dados com boas práticas e padrões de desenvolvimento.

## Cronograma

- **14/08/2025** – Avaliação Trimestral *(Dissertativa)*
- **21/08/2025** – Retomada de conteúdos  
- **28/08/2025** – Recuperação *(Codelab)*

---

## Projeto – Desenvolvimento Flutter com IA

**Pontuação de Complexidade mínima: 26 pontos**
| Critério | Pontos | Descrição |
|---------|--------|-----------|
| **Cadastro simples** | 1 ponto (máx. 5) | CRUD básico, sem relações entre entidades. <br>Ex.: cadastro de produtos, clientes. |
| **Cadastro com associação (1:N)** | 3 pontos | Relacionamento pai-filho. <br>Ex.: cliente → pedidos. |
| **Cadastro com associação (N:N)** | 6 pontos | Cadastro com tabela intermediária (relacionamento muitos-para-muitos). <br>Ex.: aluno ↔ disciplinas. |
| **Consumo de API externa com persistência local e remota sincronizada** | 3 pontos | Consumo de dados externos (via `http`, `dio` etc.) com salvamento local (`Hive`, `SQLite`) e/ou remoto (Firebase). |
| **Notificações (locais ou push)** | 1 ponto | Ex.: `flutter_local_notifications`, Firebase Messaging. |
| **Chamada externa de aplicativos** | 1 ponto | Abertura de apps como e-mail, telefone, WhatsApp ou navegador. <br>Ex.: `url_launcher`. |
| **Organização em camadas (MVC, MVVM ou similar)** | 2 pontos | Separação entre interface, lógica de negócio e dados. <br>Ex.: uso de controllers, services, models. |
| **Integração com mapas, geolocalização ou sensores** | 3 pontos | Uso de recursos do dispositivo. <br>Ex.: `google_maps_flutter`, `geolocator`, `camera`, `sensor_plus`. |
| **Dashboard com gráficos dinâmicos** | 3 pontos | Gráficos que representam dados atualizados. <br>Ex.: `fl_chart`, `syncfusion_flutter_charts`. |
| **Relatórios com filtros e agrupamentos** | 2 pontos | Relatórios interativos com filtros por data, categoria etc. |
| **Componentização com campo de opções inteligentes** | 2 pontos | Campos com busca otimizada, cadastro rápido e atualização automática. <br>Ex.: `DropdownSearch`, `autocomplete`, `TextFormField` + `showDialog`. |
| **CI/CD – Integração e entrega contínua** | 8 pontos | Testes automatizados, uso de GitHub Actions (CI) e distribuição com Firebase App Distribution (CD). |

---
  > ⚠️ É obrigatório ter pelo menos **uma funcionalidade** com persistência associativa.

Foco em produtividade e validação objetiva de habilidades essenciais para um **Dev Júnior**, com ênfase na capacidade de:

- Identificar rapidamente partes do código
- Realizar manutenções eficientes
- Evoluir projetos com clareza e responsabilidade

### Dois Projetos
**Demonstração** (Projeto em Equipe com o Professor)
- Praticar em grupo e consolidar aprendizagens  
- 1 projeto por equipe → commit até o intervalo   
- Desenvolvimento com acompanhamento e tira-dúvidas em aula   
  
**Personal**
- Principal evidência de autoria e aprendizagem. Como um avaliação, necessário realizar sozinho sem ajuda  
- 1 projeto por aluno → commit até o final da aula  
- Entregas contínuas e autorais sem ajuda  

### Checks Obrigatórios
Os checks funcionam como validação final de que sabe o que ocorre no projeto. Cada aluno deverá realizar **2 checks técnicos**:
  
**Widgets (1:1 ou 1:N)**
- Localização e alteração eficiente e rápida de um código simples;    
- Refatoração signficativa com tempo limitado.    
  
**Persistência (1:1 ou 1:N)** 
- Localização e alteração eficiente e rápida de um código simples;    
- Refatoração signficativa com tempo limitado.      
  
**Salvar os resultados em:**  
- `lib-descricao/check`
- O professor fará a verificação com **reação via Git**
  
**Prazos**
- **Check de Widgets**: até **03/07/2025**  
- **Check de Persistência**: até **02/08/2025**  
  
**Os commits são pré-requisitos para os checks.**  
- A entrega contínua incentiva estudo periódico e organização.  
- Somente os commits não serão suficientes.
- Alunos que precisarem faltar podem antecipar suas entregas em casa.
  
**Calendário**
- Não será possível aplicar os checks a todos os alunos no mesmo dia.  
- Caso não haja organização espontânea entre os alunos, será definido um **calendário de atendimento**.

