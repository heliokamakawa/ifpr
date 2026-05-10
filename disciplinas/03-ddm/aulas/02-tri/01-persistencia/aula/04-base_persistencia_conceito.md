# Persistência local, remota e sincronização

Persistir dados é guardar informações para que elas continuem existindo depois que o aplicativo é fechado.

## Formas

```text
Persistência de dados
|
+-- Local
|   |
|   +-- dados ficam no dispositivo
|   +-- exemplo: SQLite
|   +-- app cria e controla as tabelas
|
+-- Remota
|   |
|   +-- dados ficam em um servidor
|   +-- app conversa com uma API
|   +-- backend acessa o banco
|   +-- pessoa/equipe responsável define as tabelas
|
+-- Sincronização
    |
    +-- dados existem em mais de um lugar
    +-- app e servidor precisam ficar coerentes
```

## Reflexões: local x remota x sincronizada

* Onde ficam os dados no banco?
* Qual tende a ser mais rápido?
* Qual tende a ser mais seguro?
* Quem cria as tabelas com `CREATE TABLE`? Tem diferença entre local e remoto?
* Quem controla as versões do banco de dados? Tem diferença entre local e remoto?
* O que significa sincronizar dados?
* Sincronização é sempre a melhor opção?
* Qual tende a ser mais fácil de manter?

## Resumo da comparação

| Critério | Local | Remota/API | Sincronizada |
| -------- | ----- | ---------- | ------------ |
| Onde fica o BD | dispositivo | servidor | dispositivo e servidor |
| Velocidade | rápida no dispositivo | depende da rede | depende do caso |
| Uso offline | funciona melhor | depende de conexão | pode funcionar offline |
| Segurança | exige cuidado no aparelho | tende a ter mais controle no servidor | exige cuidado nos dois lados |
| Manutenção | pode exigir migrações no app | centralizada no backend | mais complexa |
| Dados compartilhados | mais difícil | mais adequada | possível, mas exige controle |
| Quem cria as tabelas | app | pessoa/equipe do backend | app local e equipe do backend |
| Quem mantém o BD | app | pessoa/equipe do backend | app e backend |
| Como muda o BD | atualização do app | alteração no servidor | atualização do app e/ou servidor |
| App verifica se a estrutura existe? | sim | não, para o banco remoto | sim, para a parte local |

## Ligação com o próximo assunto

Neste material, vamos praticar persistência local.

Por isso, precisamos entender quais peças aparecem no código:

```text
conexão
SQL
model
DAO
mapeamento
```
