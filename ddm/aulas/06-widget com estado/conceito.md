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

