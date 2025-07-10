# Arquitetura Limpa

## Camada externa (entrada ou saída)  
→ necessário criar um adapter 
→ adapters recebe json e e cria um request/response dto (fromMap() ou toMap() - serialização/desserialização)  
→ aqui pode-se ter um ViewModel  

## Adapters → Use Case
→ um único Adapter pode criar vários Use Cases para atingir o seu objetivo.  
→ Use case são pequenos para serem específicos/especialistas e reaproveitável.  
→ o adapter irá converter dto para o formato input model (formato que o Use Case entend).  
→ o input model não tem toMap() ou fromMap(), em algumas variações pode ter a validação dos campos (integridade da entrada de dados).  

## Use Case → Entidade  
→ use case instancia entidade e conforme precisa, envia tipos primitivos para os atributos da entidade.  
→ se input model tiver as validações, ele terá somente sa validações complexas de aplicação ou pré-condição e não de negócio.  
→ um único use case pode criar várias Entidades para atingir o seu objetivo (CasoUsoRealizarPedido → EntidadePedido, EntidadeEstoque, EntidadeProduto, EntidadePagamento, EntidadeEnvio).  
→ geralmente Use Case não usa uma entidade em sua plenitude.  

## Use Case → Repository  
→ use case orquestra as regras de negócio (entidade(s)) e para salvar este estado instancia repository e passa a entidade como parâmetro.  
→ use case trabalha com interface do repository e não a sua implementação (inversão de dependência).  

## Repository → DAO   
→ repository converter a entidade, geralmente parte dela para um dto ou model db.  
→ geralmente é precsio ter o fromMap() ou toMap(), pois a a fonte externa geralmente é JSON.  
→ o repository cria o objeto dao.   
→ repository trabalha com interface do dao e não a sua implementação (inversão de dependência).  
→ em arquiteturas mais simples,o repositório pode conter a lógica de query sem o DAO.  

## DTO x MODEL
→ ambas são burras.  
→ em determinados contextos podem possuir os mesmos atributos.  
→ DTO: dados de comunicação externa (redes, api, banco de dados). Geralmente precisam ser convertidas em JSON.  
→ MODEL: representação interna de um modelo de dados.  
→ DTO/MODEL: quando são as duas. Exemplo: parâmetro de um DAO (é um modelo de dados e representam dados externos do banco de dados).  




