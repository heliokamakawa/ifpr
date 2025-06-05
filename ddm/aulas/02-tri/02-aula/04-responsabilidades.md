# Protocolo de Responsabilidade no Uso de IA para Desenvolvimento Móvel
- O uso de IA para auxiliar no desenvolvimento de software é uma realidade incontornável e em constante evolução.  
- Vamos adaptar e aprender para que utilizem essa ferramenta de forma ética, produtiva e responsável.  
- É crucial entender que, embora a IA possa acelerar e otimizar o processo de codificação, a **responsabilidade** final e o **domínio técnico** permanecem integralmente com o desenvolvedor, seja ele um profissional experiente ou um aluno em formação.

## Considerando os diferentes níveis de maturidade, as seguintes obrigações e cuidados são esperados de cada aluno:
- Domínio Essencial (Independentemente do Apoio da IA)
1. Interpretar o Código
Descrição: Capacidade de ler, compreender e explicar o funcionamento de cada linha, bloco ou componente do código gerado pela IA ou por qualquer outra fonte. Isso inclui entender a lógica, o fluxo de dados e a interação entre as partes.  
Exemplo: Se a IA gerar um ListView.builder, você deve ser capaz de explicar como ele renderiza itens dinamicamente, como funciona o itemBuilder e por que ele é mais eficiente que um ListView simples para listas longas. Você também deve identificar se o código gerado está usando o tipo de dado correto ou se há alguma conversão implícita.
2. Responsabilidade (Autoria e Confiabilidade)
Descrição: Assumir a autoria do código entregue, garantindo sua qualidade, funcionalidade e segurança. Isso significa que você é o garante do que foi submetido, verificando a ausência de erros, bugs, vulnerabilidades ou comportamentos inesperados, mesmo que a origem seja a IA.
Exemplo: A IA gerou um formulário de login. Você é responsável por testar todas as validações (campos vazios, formatos inválidos de email, senhas) e garantir que as credenciais estejam sendo tratadas de forma segura (por exemplo, hashing de senhas, não enviando em texto puro). Se houver uma falha de segurança no código gerado, a responsabilidade é sua.
3. Manutenção   
Descrição: Habilidade de modificar, refatorar, depurar e estender o código, independentemente de quem o originou. Isso envolve adicionar novas funcionalidades, corrigir bugs, otimizar o desempenho ou adaptar-se a novas especificações e atualizações de bibliotecas/frameworks.
Exemplo: Você pediu à IA para criar um BottomNavigationBar. Posteriormente, a especificação do projeto mudou e você precisa adicionar um quinto item ou alterar a cor de seleção. Você deve ser capaz de localizar as partes relevantes do código e fazer as alterações necessárias sem precisar que a IA gere o código novamente do zero.
4. Layout e Escolha do Widget
Descrição: Entendimento dos princípios de design de interface de usuário (UI) e experiência do usuário (UX), bem como conhecimento sobre a vasta gama de widgets disponíveis no Flutter. A IA pode sugerir, mas a decisão final sobre qual widget usar e como organizar o layout para atender aos requisitos de design e usabilidade é sua.
Exemplo: A IA sugere um Column com vários Text e Image widgets. Você, com seu conhecimento de design, deve avaliar se um ListTile, Card ou outro widget mais semanticamente apropriado e eficiente seria uma escolha melhor para a representação visual dos dados.
5. Componentização e Reuso do Código  
Descrição: Capacidade de identificar partes do código que podem ser encapsuladas em widgets ou funções reutilizáveis, promovendo um código mais limpo, modular e fácil de manter. A IA pode gerar código repetitivo; cabe a você refatorá-lo para promover a modularidade.
Exemplo: A IA gerou três telas de cadastro diferentes, e em cada uma há um AppBar com um título e um botão de voltar. Você deve ser capaz de criar um CustomAppBar (um widget reutilizável) e aplicá-lo em todas as telas, evitando duplicação de código.
6. Conhecimento Fundamentado (Algoritmos, Sintaxe, POO, Bibliotecas, Padrões, Arquitetura)  
Descrição: A IA é uma ferramenta que opera com base em grandes volumes de dados. Seu conhecimento sobre os fundamentos da programação (estruturas de dados, algoritmos, sintaxe da linguagem, paradigmas como Orientação a Objetos, uso de bibliotecas/frameworks, padrões de projeto e arquiteturas de software) é o que permite avaliar, validar e corrigir o código gerado pela IA, além de ser o motor para suas próprias soluções criativas.
Exemplo: A IA gerou um algoritmo de ordenação. Você deve saber qual algoritmo é, sua complexidade (O notation) e se ele é adequado para a quantidade de dados que seu aplicativo irá manipular. Se a IA sugerir uma abordagem de gerenciamento de estado (ex: Provider, BLoC), você deve entender os princípios por trás dela e como ela se encaixa na arquitetura geral do seu aplicativo.

## Minimanamente: Gerenciando o Código Gerado por IA
Para garantir o domínio e a responsabilidade sobre o código, mesmo com o auxílio da IA, é fundamental adotar uma abordagem estratégica:

**Localizar o Código de Forma Rápida:** Ser capaz de identificar e navegar eficientemente pelas seções do código, sejam elas geradas pela IA ou escritas manualmente. Isso é vital para depuração, manutenção e para entender o impacto de qualquer alteração.
Dicas e Cuidados:
**Não gere tudo de uma vez - Evite pedir à IA para gerar um aplicativo completo de uma só vez. Peça em partes:** primeiro a estrutura básica, depois um widget específico, em seguida, a lógica de uma função.
Comentários e Documentação: Mesmo para código gerado, adicione seus próprios comentários explicativos onde necessário. A IA pode não gerar comentários suficientes ou claros para sua compreensão futura.
Organização de Pastas e Arquivos: Mantenha uma estrutura de projeto organizada. Isso ajuda a localizar não só o código gerado, mas todo o seu projeto.
**Uso de Ferramentas da IDE:** Familiarize-se com as funcionalidades da sua IDE (IntelliJ/VS Code) para navegação rápida (ir para definição, encontrar referências, busca global).
**Fazer Alterações e Validar:** Capacidade de modificar o código gerado, adaptando-o às necessidades específicas do projeto, corrigindo imperfeições ou adicionando funcionalidades, e em seguida, testar exaustivamente para garantir que as mudanças não introduziram novos problemas.

### Dicas e Cuidados
Gere aos Poucos e Valide: Peça à IA para gerar pequenas porções de código (um widget, uma função, uma parte da lógica) e valide imediatamente. Execute o aplicativo, teste a funcionalidade e observe o comportamento.
**Compreensão e Integração:** Nunca copie e cole um bloco de código da IA sem antes compreendê-lo completamente. Se não entender, pesquise, pergunte à própria IA (com perguntas específicas sobre o trecho), ou peça ajuda ao professor/colegas, ou refaça de forma que domine.
Testes, Testes, Testes: Após qualquer alteração, seja ela manual ou via IA, execute seus testes unitários, de widget e de integração. Se não tiver testes automatizados, realize testes manuais rigorosos.
**Iteração e Refinamento:** Veja o código da IA como um rascunho. Ele raramente será perfeito de primeira. Esteja preparado para iterar, refinar e otimizá-lo, incorporando seu conhecimento e as boas práticas de desenvolvimento.
**Controle de Versão:** Use Git (ou outro sistema de controle de versão) diligentemente. Faça commits pequenos e frequentes. Se uma alteração (incluindo as geradas por IA) quebrar o projeto, você pode facilmente reverter.

# Como validar com professor?:

Execute o código e deixe tudo pronto, antes de chamar o professor. E assim, seguiremos as seguintes checagens:
1 - localização rápida de um código ou funcionalidade escolhida dinamicamente.
2 - alteração rápida de um código ou funcionalidade escolhida dinamicamente.
3 - alteração longa de um código ou funcionalidade escolhida dinamicamente (entregue depois - de preferência na mesma aula, caso não consiga na próxima aula).
concretização da valiação: criar uma pasta check em lib-descricao do projeto e solicitar a reação do commit ou um comentário simples.

Para este trimestre teremos vários checks
a realização de todos garante o conceito mínimo
e uma avaliação será realizada para definir o nível de conhecimento com a garantia do conceito mínimo.
