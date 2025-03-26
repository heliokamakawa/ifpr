# Biblioteca de Classes - Flutter e Dart

## Estrutura de Classes
Aqui está a biblioteca de classes organizada com associações aninhadas de até 5 níveis, incluindo construtores com parâmetros nomeados, posicionais e do tipo função.

```dart
// Exemplo de classes associadas em 5 níveis
class Pais {
  String nome;
  Pais(this.nome);
}

class Estado {
  String nome;
  Pais pais;
  Estado(this.nome, this.pais);
}

class Cidade {
  String nome;
  Estado estado;
  Cidade(this.nome, this.estado);
}

class Cliente {
  String nome;
  Cidade cidade;
  Cliente(this.nome, this.cidade);
}

class Venda {
  Cliente cliente;
  double valor;
  Venda(this.cliente, this.valor);
}

// Adicione outras classes seguindo esse padrão
```

---

## Lista de Exercícios

### Exemplos Resolvidos

#### Exercício 1 - Instância de Objeto Simples
**Enunciado:** Crie uma instância da classe `Pais`.

```dart
var brasil = Pais("Brasil");
print(brasil.nome);
```

#### Exercício 2 - Instância com Associação
**Enunciado:** Crie uma instância da classe `Estado`, associando-a a um país.

```dart
var brasil = Pais("Brasil");
var parana = Estado("Paraná", brasil);
print("Estado: \${parana.nome}, País: \${parana.pais.nome}");
```

#### Exercício 3 - Uso de Construtor Nomeado
**Enunciado:** Crie uma instância da classe `Cidade`, associando-a a um estado.

```dart
var brasil = Pais("Brasil");
var parana = Estado("Paraná", brasil);
var curitiba = Cidade("Curitiba", parana);
print("Cidade: \${curitiba.nome}, Estado: \${curitiba.estado.nome}, País: \${curitiba.estado.pais.nome}");
```

#### Exercício 4 - Função como Parâmetro
**Enunciado:** Crie uma instância de um objeto que recebe uma função como parâmetro.

```dart
class Produto {
  String nome;
  Function calcularDesconto;
  Produto(this.nome, this.calcularDesconto);
}

var produto = Produto("Notebook", (double preco) => preco * 0.9);
print("Preço com desconto: \${produto.calcularDesconto(1000)}");
```

---

### Exercícios Graduais

1. **Instancie um objeto simples** da classe `Cliente`.
2. **Crie uma instância** da classe `Venda` associada a um cliente.
3. **Utilize um construtor nomeado** para criar uma instância da classe `Produto`.
4. **Crie uma instância da classe Pedido** contendo um `Cliente` e uma `Lista de Produtos`.
5. **Crie uma instância anônima** da classe `Funcionario` associada a um `Departamento`.
6. **Desafio**: Instancie um `Fornecedor` contendo uma `Empresa`, localizada em uma `Cidade`, pertencente a um `Estado` dentro de um `País`.

---

## Desafios Avançados

### Desafio 1 - Associação em 5 Níveis
**Enunciado:** Instancie uma `Venda` que contenha um `Cliente` associado a uma `Cidade`, que pertence a um `Estado`, dentro de um `País`.

```dart
var venda = Venda(
  Cliente("João", Cidade("Curitiba", Estado("Paraná", Pais("Brasil")))),
  1500.0
);
```

### Desafio 2 - Construtor com Função e Associação
**Enunciado:** Crie um `Pedido` que contenha um `Cliente`, uma `Lista de Produtos` e um cálculo de desconto como função anônima.

```dart
var pedido = Pedido(
  Cliente("Maria", Cidade("São Paulo", Estado("SP", Pais("Brasil")))),
  [Produto("TV", (preco) => preco * 0.85)]
);
```

### Desafio 3 - Associação Profunda e Função
**Enunciado:** Instancie um `Fornecedor` contendo um `Departamento`, que pertence a uma `Empresa`, situada em uma `Cidade`, dentro de um `Estado` e `País`, e inclua uma função de cálculo de imposto.

```dart
var fornecedor = Fornecedor(
  "TechSupply",
  Departamento("TI", Empresa("InovaCorp", Cidade("Porto Alegre", Estado("RS", Pais("Brasil"))))),
  (double valor) => valor * 0.18
);
```

---

Esse material servirá para que os alunos dominem a sintaxe do Dart e a estruturação de classes no Flutter. 🚀
