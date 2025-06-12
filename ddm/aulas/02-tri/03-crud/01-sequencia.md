# Aulas CRUD Entidade simples

## Orientações iniciais
- Deixe o projeto Spin_Flow **FUNCIONANDO**
- adicione as bibliotecas:   
  sqflite:   
  path:  
  sqflite_common_ffi:  
  sqflite_common_ffi_web:  
- execute o comando: "dart run sqflite_common_ffi_web:setup" no terminal  

## Para quem não tem o porjeto: 
(1) crie um projeto spin_flow;  
(2) baixe o projeto;  
(3) substitue a pasta lib;  
(4) adicione as bibliotecas;   
(5) execute o comando: "dart run sqflite_common_ffi_web:setup" no terminal.  

## Passos necessários:

### PASSO 01: Vamos emular para WEB (mais leve)
Configurações:
https://pub.dev/packages/sqflite_common_ffi_web
- dart run sqflite_common_ffi_web:setup

### PASSO 02: Bibliotecas necessárias (já foi solicitado)  
pubspec  
  mask_text_input_formatter:  
  sqflite:   
  path:  
  sqflite_common_ffi:  
  sqflite_common_ffi_web:  

### PASSO 03:definir widget (lista)
- [descrição do widget lista](https://github.com/heliokamakawa/ifpr/blob/main/ddm/aulas/02-tri/03-crud/03-descricao_script_tabela.md)

### PASSO 04: definir script 
- tabela: acesse [aqui](https://github.com/heliokamakawa/ifpr/blob/main/ddm/aulas/02-tri/03-crud/03-descricao_script_tabela.md)  
- inserções: acesse [aqui](https://github.com/heliokamakawa/ifpr/blob/main/ddm/aulas/02-tri/03-crud/04-descricao_script_insert.md)  

### PASSO 05: definir classe conexão
- [descrição do widget lista](https://github.com/heliokamakawa/ifpr/blob/main/ddm/aulas/02-tri/03-crud/05-descricao_conexao.md)

### PASSO 06: definir classe DAO
- [descrição do widget lista](https://github.com/heliokamakawa/ifpr/blob/main/ddm/aulas/02-tri/03-crud/06-descricao_dao.md)

### PASSO 07: implementar DAO - consulta
- No widget lista retirar mock
- deifinir dao

### PASSO 08: implementar DAO - excluir
- No widget lista localixar excluir
- deifinir dao.excluir

### PASSO 09: implementar DAO - insert
- No widget form localixar salvar
- deifinir dao.incluir

### PASSO 10: implementar DAO - insert
- No widget lista definir pop 
- No pop definir o retorno 
- No widget form receber o item da lista
- preencher os campos
- definir a lógica de alterar






