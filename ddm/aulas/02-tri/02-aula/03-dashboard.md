# Descritivo da TelaDashboard
widget Flutter que oferece uma interface de painel para professora, organizada por abas de navegação.

## Possui as seguintes funcionalidades:
- **Navegação por Abas**: Utiliza `TabBar` e `TabBarView` para alternar entre diferentes seções: 'Visão Geral', 'Cadastros', 'Aulas', 'Manutenção' e 'Recados'.
- **Visão Geral (`_visaoGeral`)**: Exibe um `GridView` com cartões (`_InfoCard`) mostrando informações resumidas (ex: "Alunos Ativos", "Aulas Agendadas").
- **Seções de Lista (`_cadastros`, `_aulasEAuloes`, `_manutencao`, `_recados`)**: Cada seção apresenta um `ListView` com itens clicáveis (`_CadastroTile`) que, ao serem tocados, navegam para telas de cadastro ou gerenciamento específicas usando `Navigator.pushNamed`.

### Aba 'Cadastros'
A aba `_cadastros` deve listar as seguintes opções de cadastro:
* **Vídeo Aula**
* **Aluno**
* **Fabricante**
* **Sala**
* **Tipo Manutenção**
* **Categoria Música**
* **Banda Artista**
* **Turma**
* **Bike**
* **Música**
* **Mix Aula (Playlist)**
* **Grupo Aluno**

Todas as rotas para estas opções devem ser definidas temporariamente como uma string vazia (`''`).

A componentização dos elementos como _InfoCard e _CadastroTile dverão ser componentes locais gerados por métodos, e não classes separadas.

- **Descrição geral**:
Widget Flutter para a tela 'Visão Geral' (o conteúdo do `_visaoGeral`) da `TelaDashboard`. Ele deve ser um `GridView` com duas colunas, contendo 5 `_InfoCards`. Cada `_InfoCard` deve ter um ícone (`Icons.message`, `Icons.person`, `Icons.schedule`, `Icons.music_note`, `Icons.directions_bike`), um valor numérico (ex: '3', '82', '12', '4', '18') e um título correspondente ('Recados', 'Alunos Ativos', 'Aulas Agendadas', 'Mix de Músicas', 'Bikes OK'). O layout deve ser responsivo e os cartões devem ter uma elevação sutil e bordas arredondadas.