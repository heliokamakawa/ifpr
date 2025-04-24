# 🧠 Aula: Widgets com Estado no Flutter

## 🎯 Objetivo
Compreender o que é **estado** em aplicações Flutter, como o framework trata mudanças de estado, e como estruturar widgets com estado corretamente. A aula inclui teoria, boas práticas e exemplos práticos.

---

## 🧩 O que é "estado"?

**Estado** é qualquer informação que muda ao longo do tempo e que afeta o que o usuário vê na tela.

Exemplos de estado:
- Conteúdo de uma lista
- Texto digitado em um campo
- Se um botão está ativado ou desativado
- Posição de um scroll

> Sempre que o estado muda, a interface do usuário (UI) precisa ser **reconstruída** para refletir a nova informação.

---

## 🏗️ Como o Flutter trabalha com estado?

O Flutter constrói a UI como uma **árvore de widgets**. Esses widgets podem ser de dois tipos principais:

### 1. StatelessWidget
- Imutável
- Não muda durante o tempo de vida
- Útil para interfaces fixas

### 2. StatefulWidget
- Possui um objeto `State`
- Pode ser alterado em tempo de execução
- Quando algo muda, usamos `setState()` para reconstruir a UI

> O Flutter **não observa mudanças em variáveis por conta própria**. É necessário usar `setState()` para informar que algo mudou e a UI precisa ser reconstruída.

---

## ✅ Boas práticas para trabalhar com estado

1. Use `StatefulWidget` apenas quando necessário.
2. Nunca armazene dados mutáveis dentro de `StatelessWidget`.
3. Sempre use `setState()` para informar alterações de estado.
4. Mantenha o código de UI separado da lógica de estado.
5. Em projetos maiores, use gerenciadores de estado como **Provider**, **Riverpod**, **Bloc**, entre outros.

---

## 💡 Exemplo prático – Problema com StatelessWidget

Abaixo, um código que **tenta** adicionar um item à lista quando o botão é clicado.

```dart
import 'package:flutter/material.dart';

class Lista extends StatelessWidget {
  var nomes = [
    'Joana','Joaquim','Mário', 'Maria'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
        title: const Text('Lista'),
        actions: [
          IconButton(
            onPressed: () {
              nomes.add('Marta');
              print('deu certo! ${nomes.length}');
            }, 
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: nomes.length,
        itemBuilder: (context, i) => Text(nomes[i]),
      ),
    );
  }
}
```
## 🔍 Explicação do comportamento

### 📌 O que o código faz?
- Cria uma lista com nomes fixos.
- Exibe os nomes usando `ListView.builder`.
- No botão de adicionar, insere o nome `"Marta"` e imprime a quantidade de nomes no terminal.

### 🖱️ O que acontece ao clicar no botão?
- O `print` aparece no terminal (`deu certo! 5`), então sabemos que o item foi adicionado à lista.
- **MAS a interface não atualiza.**

### ❓ Por que isso acontece?
- Porque `Lista` é um **StatelessWidget**.
- A lista mudou, mas o Flutter **não sabe** que a UI precisa ser atualizada.
- Não há `setState()` para disparar a reconstrução da interface.

---

## 🔄 Introdução ao StatefulWidget

Diferente do `StatelessWidget`, que não muda, o `StatefulWidget` **permite armazenar e gerenciar estado interno** — ou seja, dados que podem mudar ao longo do tempo e precisam ser refletidos na interface.

Quando usamos um `StatefulWidget`, ele é dividido em **duas classes**:
1. A classe do widget (`StatefulWidget`) — representa o **componente imutável**.
2. A classe de estado (`State`) — armazena os **dados mutáveis** e implementa a **UI com lógica de atualização**.

---

## 🧱 Sintaxe base de um StatefulWidget

```dart
class Lista extends StatefulWidget {
  @override
  _Lista createState() => _Lista();
}

class _Lista extends State<Lista> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Conteúdo aqui
    );
  }
}
```
## 🔍 Explicações detalhadas

### `class Lista extends StatefulWidget`
- Define o widget que terá estado.
- A classe `Lista` é a "casca" que **não muda**.
- Ela precisa implementar o método `createState()`.

---

### `@override createState() => _Lista();`
- Este método cria uma **instância do estado associado**.
- O nome da classe de estado geralmente começa com `_` para indicar que é **privada** (convenção do Dart).
- Retorna um objeto do tipo `_Lista`, que estende `State<Lista>`.

---

### `class _Lista extends State<Lista>`
- Esta classe **guarda os dados que mudam** e implementa o método `build`.
- Aqui acontece o controle do estado, uso de `setState()` e a renderização da interface.
- A UI é **reconstruída automaticamente** sempre que `setState()` é chamado.

---

### `@override Widget build(BuildContext context)`
- É aqui que você **desenha a tela com base no estado atual**.
- Sempre que o estado mudar, o Flutter chama este método novamente para atualizar a interface.

---

## 📌 Resumo

| Parte do código         | Papel                                                |
|--------------------------|------------------------------------------------------|
| `StatefulWidget`         | Define o componente e o vínculo com seu estado      |
| `createState()`          | Conecta o widget com seu objeto de estado           |
| `State<>`                | Armazena e modifica os dados mutáveis               |
| `build()`                | Reconstrói a interface com base no estado atual     |


---

Versão com o código da lista

```dart
import 'package:flutter/material.dart';

class Lista extends StatefulWidget{
  @override
  _Lista createState() => _Lista();
}

class _Lista extends State<Lista>{
  var nomes = [
    'Joana','Joaquim','Mário', 'Maria'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
        title: const Text('Lista'),
        actions: [
          IconButton(onPressed: (){
            nomes.add('Marta');
            print('deu certo! ${nomes.length}');
          }, 
          icon: const Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
        itemCount: nomes.length,
        itemBuilder: (context,i) => Text(nomes[i])
      ),
    );
  }
}
```

## 🧠 Por que ainda não funciona, mesmo sendo um StatefulWidget?
O código abaixo adiciona o nome "Marta" na lista e imprime a nova quantidade de nomes:

```dart
nomes.add('Marta');
print('deu certo! ${nomes.length}');
```
Isso realmente modifica a lista e o print confirma no terminal que ela foi atualizada. Porém...

>>❗ O Flutter não sabe que precisa redesenhar a tela  
>>Mudanças diretas nos dados (como adicionar um item à lista) não são detectadas automaticamente pelo Flutter.

O Flutter só reconstrói a interface quando você chama explicitamente o método setState().  

## 🔧 O que está faltando?
Você precisa envolver a modificação da lista dentro de um setState(), assim:
```dart
onPressed: () {
  setState(() {
    nomes.add('Marta');
  });
  print('deu certo! ${nomes.length}');
}
```

## ✅ O que o setState() faz?
- Informa ao Flutter que o estado foi alterado.  
- Dispara a reconstrução da interface chamando novamente o método build().  
- Garante que a nova lista de nomes será visível na tela.

## Versão final
```dart


import 'package:flutter/material.dart';

class Formulario extends StatefulWidget{
  @override
  _Lista createState() => _Lista();
}

class _Lista extends State<Formulario>{
  var nomes = [
    'Joana','Joaquim','Mário', 'Maria'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
        title: const Text('Lista'),
        actions: [
          IconButton(onPressed: (){
            setState(() {
              nomes.add('Marta');
            });
            print('deu certo! ${nomes.length}');
          }, 
          icon: const Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
        itemCount: nomes.length,
        itemBuilder: (context,i) => Text(nomes[i])
      ),
    );
  }
}
```

## 📝 Atividades de Fixação

### 🏋️‍♂️ Atividade 1: Inserção dinâmica de nomes

**Objetivo:** Permitir que o usuário adicione nomes à lista digitando no campo de texto.

**Requisitos:**

- Adicionar um `TextField` abaixo do `AppBar`.
- Criar uma `TextEditingController` para capturar o valor digitado.
- Usar um botão (ou o mesmo botão existente) para adicionar o nome digitado à lista.
- Após adicionar, limpar o campo de texto.

**Dica:**
Use o `setState()` para atualizar a interface com o novo nome adicionado.

---

### 🧹 Atividade 2: Excluir nomes da lista

**Objetivo:** Permitir que o usuário exclua um item da lista.

**Requisitos:**

- Adicionar um botão de **excluir** (ícone de lixeira) ao lado de cada nome.
- Ao clicar no botão, remover o nome correspondente da lista.
- Usar `setState()` para atualizar a interface após a exclusão.

**Dica:**
Você pode usar `ListTile` no `itemBuilder` para mostrar o nome + o botão de excluir, assim:

```dart
ListTile(
  title: Text(nomes[i]),
  trailing: IconButton(
    icon: Icon(Icons.delete),
    onPressed: () {
      ???
    },
  ),
);
```

