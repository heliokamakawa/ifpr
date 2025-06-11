# DTO - Data Transfer Object V.1

é um padrão de projetos bastante usado em Java para o transporte de dados entre diferentes componentes de um sistema, diferentes instâncias ou processos de um sistema distribuído ou diferentes sistemas via serialização.


```java
public class UserDTO {
    private Long id;
    private String name;
    private String email;

    // Construtor padrão
    public UserDTO() {
    }

    // Construtor com parâmetros
    public UserDTO(Long id, String name, String email) {
        this.id = id;
        this.name = name;
        this.email = email;
    }

    // Getters e Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    // toString (opcional, útil para debug)
    @Override
    public String toString() {
        return "UserDTO{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}
```

A ideia consiste basicamente em agrupar um conjunto de atributos numa classe simples de forma a otimizar a comunicação.

Numa chamada remota, seria ineficiente passar cada atributo individualmente. Da mesma forma seria ineficiente ou até causaria erros passar uma entidade mais complexa.

```java
//com dto
    public User processUser(UserDTO userDTO) {
        User user = new User();
        // Simulação operações
        return user;
    }


//sem dto
    public String processUser(Lond id, String nome, String email) {
        // Simulação operações
        String[] resultado = new String[3];
        resultado[0] = name.toUpperCase();
        resultado[1] = email.toLowerCase();
        resultado[2] = String.valueOf(age + 1);
        return resultado;
    }
```





# DTO - Data Transfer Object V.2
https://martinfowler.com/eaaCatalog/dataTransferObject.html

Um objeto que transporta dados entre processos para reduzir o número de chamadas de métodos.
>>>Passar título, autor 
→ Uma maneira de fazer isso é usar muitos parâmetros. 
→ No entanto, isso costuma ser complicado de programar — na verdade, muitas vezes é impossível com linguagens como Java, que retornam apenas um valor.

>>>Passar Album{título, autor} 
A solução é criar um Objeto de Transferência de Dados que possa armazenar todos os dados da chamada. 
Ele precisa ser **serializável** para atravessar a conexão. Normalmente, um montador é usado no lado do servidor para transferir dados entre o DTO e quaisquer objetos de domínio.

Nota 2013-08-11
Embora o principal motivo para usar um Objeto de Transferência de Dados seja agrupar o que seriam várias chamadas remotas em uma única chamada, vale mencionar que outra vantagem é encapsular o mecanismo de serialização para transferência de dados pela rede. Ao encapsular a serialização dessa forma, os DTOs mantêm essa lógica fora do restante do código e também fornecem um ponto claro para alterar a serialização, se desejar.


## Projetos
- funcionais de outras disciplinas, do trabalho, tcc
- adaptações necessárias







# DTO - Data Transfer Object V.2

## Trazer relavência/experiência profissional
Exemplo: um único formulário Venda pode gerar diversos DTOs com finalidades diferentes 

# 🧾 Venda com Múltiplos DTOs - Separando Responsabilidades

Neste exemplo, mostramos como uma única operação de **venda** pode gerar **diversos DTOs** (Data Transfer Objects), cada um adaptado para um destino específico no sistema.

---

## 🎯 Cenário da Venda

### Campos comuns no formulário de venda:
- `clienteId`
- `listaItens` (produto + quantidade)
- `formaPagamento`
- `enderecoEntrega`
- `dataHoraVenda`
- `valorTotal`
- `observacoes`
- `cupomDesconto`

---

## 🔁 Destinos da venda e seus respectivos DTOs

| Objetivo                         | Nome do DTO              | Campos incluídos                                                          |
|----------------------------------|---------------------------|---------------------------------------------------------------------------|
| Atualizar o estoque              | `EstoqueUpdateDTO`        | `produtoId`, `quantidade`                                                 |
| Gerar o faturamento              | `FaturamentoDTO`          | `clienteId`, `itens`, `valorTotal`, `formaPagamento`                      |
| Confirmar pedido ao cliente      | `ConfirmacaoPedidoDTO`    | `nomeCliente`, `nomesDosProdutos`, `precoTotal`, `dataEntregaPrevista`   |
| Análise de marketing             | `VendaAnalyticsDTO`       | `clienteId`, `cupomDesconto`, `valorTotal`, `data`                        |
| Log de auditoria                 | `VendaAuditDTO`           | `operadorId`, `dataHora`, `clienteId`, `valorTotal`                       |
| Registro financeiro              | `RegistroFinanceiroDTO`   | `cliente`, `valor`, `data`, `formaPagamento`, `status`                    |

---

## 📦 Exemplos de DTOs

### `EstoqueUpdateDTO.java`
```java
public class EstoqueUpdateDTO {
    private Long produtoId;
    private int quantidade;

    public EstoqueUpdateDTO(Long produtoId, int quantidade) {
        this.produtoId = produtoId;
        this.quantidade = quantidade;
    }

    // Getters e setters
}
