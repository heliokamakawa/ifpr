# Material de estudo: `aula01.dart`

## Objetivo da aula

Esta aula apresenta a criacao de um objeto de forma mais simples e manual.

Didaticamente, ela e importante porque mostra um ponto de partida:

- criar um objeto;
- preencher atributos depois;
- perceber que o codigo funciona;
- identificar por que essa forma ainda nao e a melhor em Dart.

## Lugar na progressao didatica

Esta e a primeira etapa da sequencia de POO.

Aqui, o foco nao e fazer "do jeito mais certo", mas enxergar:

- o que e uma classe;
- o que e um objeto;
- como acessar atributos;
- por que um objeto vazio pode ser um problema.

---

## Codigo central

```dart
Estado estado = Estado();
estado.id = int.parse(resultado);
estado.nome = ler('nome:');
estado.sigla = ler('sigla:');
```

---

## 1. O que esta acontecendo

Primeiro o objeto e criado:

```dart
Estado estado = Estado();
```

Depois os atributos sao preenchidos um a um:

```dart
estado.id = int.parse(resultado);
estado.nome = ler('nome:');
estado.sigla = ler('sigla:');
```

### Leitura didatica

Aqui o aluno consegue visualizar com clareza:

- a classe `Estado`;
- a variavel `estado`;
- o objeto criado;
- o acesso a atributos com `.`.

---

## 2. O que esta aula retoma de POO

Esta aula permite trabalhar a base mais fundamental:

- classe;
- objeto;
- atributo;
- atribuicao de valor.

### Exemplo

```dart
class Estado{
  int? id;
  String? nome;
  String? sigla;
}
```

Esse trecho mostra que a classe funciona como molde, e o objeto criado a partir dela passa a guardar dados.

---

## 3. Por que este codigo funciona, mas ainda nao esta ideal

Essa e a pergunta principal da aula.

O codigo funciona, mas ele deixa espacos para erro:

- o objeto pode nascer vazio;
- os atributos podem ficar sem valor;
- os dados sao preenchidos em momentos diferentes;
- o objeto pode ser alterado depois sem controle.

### Ponto didatico

Esta aula e valiosa justamente porque o aluno ve uma solucao que funciona e, ao mesmo tempo, aprende a criticar tecnicamente essa solucao.

---

## 4. O papel do `?` nos atributos

Os atributos foram declarados assim:

```dart
int? id;
String? nome;
String? sigla;
```

Isso significa que eles podem receber `null`.

### Leitura didatica

Aqui vale discutir:

- o `?` indica que o valor pode ser nulo;
- isso foi necessario porque o objeto foi criado sem construtor exigindo os dados;
- essa solucao resolve a compilacao, mas enfraquece o modelo.

---

## 5. Por que esta aula e importante antes da aula02

Se o aluno pular direto para o codigo correto, ele pode repetir a sintaxe sem entender o problema que ela resolve.

Esta aula ajuda a construir a pergunta:

"por que nao seria melhor obrigar os dados logo na criacao do objeto?".

Essa pergunta prepara o terreno para construtor, `required` e `final`.

---

## 6. O que vale destacar em sala

- `Estado` e uma classe.
- `estado` e uma variavel que referencia um objeto.
- Os atributos sao preenchidos depois da criacao.
- O codigo funciona, mas permite um objeto incompleto.
- O uso de atributos nullable nao e o ideal neste caso.
- Esta aula existe para mostrar o problema antes da melhoria.

---

## 7. Resumo final

`aula01.dart` e importante porque apresenta o basico de POO de forma bem concreta.

Ela mostra como criar um objeto e preencher seus dados manualmente, mas tambem abre espaco para uma reflexao tecnica:

- funcionar nao significa estar bem modelado;
- um objeto pode existir, mas ainda estar fragil;
- a aula seguinte vai melhorar exatamente esses pontos.
