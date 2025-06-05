# Pontuação de Complexidade
Realizar o commit do seu projeto com a pontuação de complexidade.
- ideal: 05/06
- limite: 12/06 (antes da aula)

# Cadastros SpinFlow


# Catálogo de Cadastros

## Cadastro Simples (Complexidade: 1 ponto)

**e01-VideoAula:**
- id 
- nome 
- link_video 
- ativo 

**e02-Aluno:**
- id 
- nome 
- email 
- data_nascimento 
- genero 
- telefone_contato 
- perfil_instagram 
- perfil_facebook 
- perfil_tiktok 
- ativo 

**e03-Fabricante:**
- id 
- nome 
- descricao  
- nome_contato_principal  
- email_contato  
- telefone_contato 
- ativo 

**e04-Sala:**
- id 
- nome 
- capacidade_total_bikes 
- numero_filas 
- numero_bikes_por_fila 
- ativo 

**e05-TipoManutencao:**
- id 
- nome 
- descricao 
- ativo 

**e06-CategoriaMusica:**
- id 
- nome 
- descricao 
- ativo 

**e07-BandaArtista:**
- id 
- nome 
- descricao_curta 
- link_relacionado  
- url_foto_perfil 
- ativo 

**e08-Turma:**
- id 
- nome 
- descricao 
- dias_semana 
- hora_inicio 
- duracao_minutos 
- sala* {e04-1:1}  // Cada turma deverá ter uma sala - local onde será a aula
- ativo*  

---

## Cadastro com Associação 1:1 (Complexidade: 3 pontos)

**e20-Bike:**
- id 
- nome 
- numero_serie 
- fabricante {e03-1:1} // Cada bike tem um fabricante
- data_aquisicao 
- data_cadastro_sistema 
- ativo 

---

## Cadastro com Associação N:N (Complexidade: 6 pontos)

**e30-Musica:**
- id 
- nome 
- artista_banda {e07-1:1} // Cada música é de um artista ou banda
- categorias {e06-n:n} // Uma música pode pertencer a várias categorias
- links_video_aulas_associadas {e01-n:n} // Uma música pode ter várias vídeo aulas 
- duracao_segundos  
- link_streaming  
- descricao_observacoes  
- ativo 

**e31-MixAula (Playlist):**
- id 
- nome 
- data_inicio_validade 
- data_fim_validade 
- descricao_observacoes  
- musicas_do_mix {e30-n:n} // Um mix é composto por várias músicas; uma música pode estar em vários mixes.
- ativo 

**e32-GrupoAluno:**
- id 
- nome 
- descricao  
- alunos_participantes {e02-n:n} // Um grupo tem vários alunos; um aluno pode estar em vários grupos.
- ativo 

---

# Pontuação Complexidade
## Cadastro Simples (Complexidade: 1 ponto)
08 cadastros: 8 x 1 = mas o limite é 5 → **Total categoria: 5 pontos**.

## Cadastro com Associação 1:1 (Complexidade: 3 pontos)
01 cadastros: 3 x 1 → **Total categoria: 3 pontos**.

## Cadastro com Associação N:N (Complexidade: 6 pontos)
03 cadastros: 3 x 6 → **Total categoria: 18 pontos**.

**Total Geral:** 5 + 3 + 18 = **26** (atende o requisito mínimo)