As perguntas a seguir são projetadas para serem rápidas e práticas, avaliando sua capacidade de localizar e modificar elementos na interface sem a necessidade de ferramentas de busca.

## Alteração rápida
1. No formulário de Aluno, faça com que o campo "perfil_instagram" seja obrigatório.
2. No formulário de Sala, mude a mensagem de erro padrão para o campo para "Capacidade deve ser um número inteiro e positivo".
3. No formulário de TipoManutencao, adicione um ícone de "informação" ao lado do campo "descricao".
4. No formulário de CategoriaMusica, adicione a opção "Relaxamento" à lista de categorias disponíveis.
5. No formulário de BandaArtista, altere o texto do placeholder do campo "url_foto_perfil" para "Link da imagem do perfil (opcional)".
6. No formulário de VideoAula, adicione um ícone de "play" ao lado do campo "link_video".

## Refatoração
1. No formulário de Musica, configure a seleção de "categorias" para que o usuário possa selecionar no máximo 2 categorias.
2. Refatore a validação do campo email em FormAluno para simular uma checagem de unicidade (ex: "E-mail já cadastrado"), utilizando um valor fixo para o teste no validator.
3. Padronizar Campo de Data (e02-Aluno, e20-Bike): Crie um widget DatePickerFormField reutilizável para campos de data como data_nascimento (Aluno) e data_aquisicao (Bike). Ele deve exibir DD/MM/AAAA e obter AAAA-MM-DD.
