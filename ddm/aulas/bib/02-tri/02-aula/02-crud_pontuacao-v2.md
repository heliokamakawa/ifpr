# Cadastros SpinFlow

## Padrões de Definição

### 1. Identificação de Entidades
Cada entidade (cadastro) é identificada por um código único no formato `eXX` (ex: `e01`, `e02`).

### 2. Campos Padrão
- **id**: Identificador único da entidade. SNão poderá ser obrigatório porque o valor será gerado pelo banco de dados. Deverá ser um campo de texto prevendo uso do firebase. 

- **ativo**: Campo booleano (true/false) indicando se o registro está ativo ou não (para soft delete ou controle de visibilidade). Onde aplicável, o padrão é `true`.

### 3. Uso de Caracteres Especiais na Definição de Campos
Os seguintes caracteres podem ser usados ao lado do nome do campo ou em sua descrição para denotar padrões específicos:

- `*` **Campo Obrigatório:** Indica que a informação é essencial e o campo não pode ficar vazio.
  Exemplo: `nome_completo* (String)`

- `&` **Campo Enum (Opções Definidas):** Indica que o campo possui um conjunto fixo de valores possíveis. As opções devem ser listadas na descrição do campo.
  Exemplo: `status_bike*& (String, opções: 'Disponível', 'Em Utilização', 'Danificado', 'Aguardando Manutenção')`

- `+` **Criação Rápida em Associações:** Aplicado a campos de associação, sugere a funcionalidade na interface de permitir cadastrar um novo item para a entidade associada diretamente da tela atual. O novo item deve ser adicionado à lista de opções e selecionado.
  Exemplo: `fabricante*+ {e03-1:1}`

- `@` **Tratamento de Campos de Data:** Este símbolo na seção de padrões indica regras gerais para campos do tipo `Date`. Não é usado como prefixo nos nomes dos campos, mas as regras se aplicam a eles.
  - **Exibição (Máscara):** `DD/MM/AAAA` (para relatórios e interfaces gráficas).
  - **Armazenamento (Banco de Dados):** Padrão ISO 8601 (`AAAA-MM-DD` para Date, `AAAA-MM-DDTHH:mm:ssZ` para Timestamp).
  - **Validações Comuns (Exemplos):**
    - Um campo de data de empréstimo não pode ser anterior à data atual.
    - Um campo de data de devolução prevista deve ser igual ou posterior à data de empréstimo.

O termo **"Manutenir"** refere-se ao conjunto completo de operações de gerenciamento de uma entidade do sistema, incluindo **criar, consultar, atualizar e excluir** (CRUD).

### 4. Associação entre Entidades
- **Sintaxe**: `nome_do_campo_de_associacao{MODIFICADORES} {eXX_associada-cardinalidade}`
  - `nome_do_campo_de_associacao`: Nome do campo na entidade atual que estabelece a relação.
  - `{MODIFICADORES}`: Opcional. Pode incluir `*` para obrigatório, `+` para criação rápida, etc. Ex: `fabricante*+`
  - `eXX_associada`: ID da entidade externa com a qual este campo se associa.
  - `cardinalidade`: Define a natureza da relação:
    - `1:1` (um para um): O registro da entidade atual se associa a exatamente um registro da entidade associada. Geralmente, armazena-se o `id` da entidade associada. Na interface gráfica, um campo de opções (select/dropdown) geralmente resolve.
    - `1:n` (um para muitos): O registro da entidade atual ("lado 1") pode estar associado a múltiplos registros de outra entidade ("lado n"). A entidade do "lado n" geralmente armazena o `id` da entidade do "lado 1". Para interfaces, pode envolver seleção múltipla ou visualização de listas.
    - `n:n` (muitos para muitos): Múltiplos registros da entidade atual podem se associar a múltiplos registros da entidade associada.
        - Em Firebase/NoSQL, isso geralmente implica que o campo conterá uma lista de IDs (Strings) da `eXX_associada`.
        - Em bancos relacionais, isso normalmente requer uma tabela de junção (associativa) para normalização.
        - Na interface, requer uma forma de seleção múltipla.

**Exemplo de Associação:**
`e20-Bike`:
  `fabricante*+ {e03-1:1}`
Neste exemplo:
- `fabricante` é o nome do campo na entidade `e20-Bike`.
- É um campo obrigatório (`*`) e sugere funcionalidade de criação rápida (`+`).
- Este campo representa uma associação com a entidade `e03-Fabricante`.
- A cardinalidade é `1:1`, significando que uma `Bike` está associada a exatamente um `Fabricante`. O campo `fabricante` em `Bike` armazenaria o `id` (String) de um registro de `Fabricante`.


## Diretrizes para criar DTO (Data Transfer Object):
- não coloque comentários explicativos.
- Padrão de Nomenclatura: Adote o formato DTO seguido do NomeClasse em maiúsculas (exemplo: DTOVideoAula).  
- Campo ID Opcional: O atributo id deve ser definido como opcional, uma vez que sua geração será de responsabilidade do banco de dados.  
- Estrutura Clássica de DTO: A classe deve ser um DTO puramente clássico, sem a inclusão de métodos adicionais como toMap, fromMap, ou qualquer outra conversão. 

## Diretrizes para criar Formulário (cadastro):
- Padrão do nome da classe: Form e NomeCadastro → exemplo: FormCategoriaProduto.  
- No clique de salvar os dados devem estar validados e encapsulados no objeto DTO e ser apresentar os dados em um AlertDialog.  
- Não crie DTO na classe Formulário, visto que já estará criado em outra pasta. Para o uso do DTO no formulário siga o seguinte padrão de nomenclatura: DTO em maiúscula concatenando com o NomeEntidade. Exemplo: DTOCategoriaProduto.
- Não defina campo para o id, visto que será gerado de forma automática pelo banco de dados.
- as mensagens de erro devem ser em pt-br (português brasil).

---

# Catálogo de Entidades

## Cadastro Simples (Complexidade: 1 ponto)

**e01-VideoAula:**
- id(String)
- nome* (String)
- link_video (URL String)
- ativo* (Boolean, padrão true)

**e02-Aluno:**
- id(String)
- nome* (dica: nome completo, String)
- email* (String, formato email, único)
- data_nascimento* (Date, formato AAAA-MM-DD)
- genero*& (String, opções: 'Masculino', 'Feminino', 'Outro', 'Prefiro não informar')
- telefone_contato* (String, formato nacional com DDD, máscala (##) #####-####)
- perfil_instagram (String, opcional)
- perfil_facebook (String, opcional)
- perfil_tiktok (String, opcional)
- ativo* (Boolean, padrão true)

**e03-Fabricante:**
- id(String)
- nome* (dica: nome fantasia, String)
- descricao (Text, opcional)
- nome_contato_principal (String, opcional)
- email_contato (String, formato email, opcional)
- telefone_contato (String, opcional)
- ativo* (Boolean, padrão true)

**e04-Sala:**
- id(String)
- nome* (String, ex: "Sala Principal", "Sala Anexa")
- capacidade_total_bikes* (Integer)
- numero_filas* (Integer)
- numero_bikes_por_fila* (Integer)
- ativo* (Boolean, padrão true)

**e05-TipoManutencao:**
- id(String)
- nome* (String, ex: "Preventiva", "Corretiva", "Limpeza")
- descricao (Text, opcional)
- ativo* (Boolean, padrão true)

**e06-CategoriaMusica:**
- id(String)
- nome* (String, ex: "Cadência", "Coordenação", "Força", "Potência", "Resistência")
- descricao (Text, opcional)
- ativo* (Boolean, padrão true)

**e07-BandaArtista:**
- id(String)
- nome* (String)
- descricao_curta (Text, opcional)
- link_relacionado (URL String, opcional, ex: Spotify, site oficial)
- url_foto_perfil (URL String, opcional)
- ativo* (Boolean, padrão true)

**e08-Turma:**
- id(String)
- nome* (String, ex: "Spin Matinal Seg/Qua", "Power Spin Noturno")
- descricao (Text, opcional)
- dias_semana*& (Array de Strings, opções: "segunda", "terca", "quarta", "quinta", "sexta", "sabado", "domingo", ex_selecao: ["segunda", "quarta"])
- hora_inicio* (Time, formato HH:MM)
- duracao_minutos* (Integer)
- sala* {e04-1:1} // Uma turma ocorre em uma sala específica
- ativo* (Boolean, padrão true)

---

## Cadastro com Associação 1:1 (Complexidade: 3 pontos)

**e20-Bike:**
- id(String)
- nome* (String, ex: "Bike 01", "SpeedMax Pro 15") // Pode ser um código interno ou nome amigável
- numero_serie (String, opcional, único se preenchido)
- fabricante*+ {e03-1:1} // Cada bike tem um fabricante, com opção de cadastro rápido
- data_aquisicao* (Date, formato AAAA-MM-DD)
- data_cadastro_sistema* (Timestamp, default: now(), formato AAAA-MM-DDTHH:mm:ssZ)
- ativo* (Boolean, padrão true)

---

## Cadastro com Associação N:N (Complexidade: 6 pontos)
*(Em Firebase, um campo com associação N:N geralmente implica que este campo armazenará uma lista de IDs (Strings) da entidade associada. Em bancos relacionais, isso normalmente requer uma tabela de junção para normalização.)*

**e30-Musica:**
- id(String)
- nome* (String)
- artista_banda* {e07-1:1} // Cada música é primariamente de um artista
- categorias* {e06-n:n} // Uma música pode pertencer a várias categorias
- links_video_aulas_associadas {e01-n:n} // Uma música pode ser usada em várias vídeo aulas (opcional)
- duracao_segundos (Integer, opcional)
- link_streaming (URL String, opcional, ex: Spotify, YouTube Music)
- descricao_observacoes (Text, opcional)
- ativo* (Boolean, padrão true) // controle se aparecem em seleções

**e31-MixAula (Playlist):**
- id(String)
- nome* (String, ex: "Mix Aquecimento Global Junho", "Mix Desafio Verão")
- data_inicio_validade (Date, formato AAAA-MM-DD, opcional)
- data_fim_validade (Date, formato AAAA-MM-DD, opcional)
- descricao_observacoes (Text, opcional)
- musicas_do_mix* {e30-n:n} // Um mix é composto por várias músicas; uma música pode estar em vários mixes.
- ativo* (Boolean, padrão true)

**e32-GrupoAluno:**
- id(String)
- nome* (String, ex: "Equipe Manhã", "Alunos VIP")
- descricao (Text, opcional)
- alunos_participantes* {e02-n:n} // Um grupo tem vários alunos; um aluno pode estar em vários grupos.
- ativo* (Boolean, padrão true)

---

# Pontuação Complexidade
## Cadastro Simples (Complexidade: 1 ponto)
08 cadastros: 8 x 1 = mas o limite é 5 → **Total categoria: 5 pontos**.

## Cadastro com Associação 1:1 (Complexidade: 3 pontos)
01 cadastros: 3 x 1 → **Total categoria: 3 pontos**.

## Cadastro com Associação N:N (Complexidade: 6 pontos)
03 cadastros: 3 x 6 → **Total categoria: 18 pontos**.

**Total Geral:** 5 + 3 + 18 = **26** (atende o requisito mínimo)