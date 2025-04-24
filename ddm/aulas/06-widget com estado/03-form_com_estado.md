# 🧾 Aula 2 – Formulários com Estado (Flutter)

Formulários em Flutter funcionam de forma diferente da manipulação direta de estado via `setState()`. 
Isso ocorre porque muitos dos comportamentos já vêm **embutidos no widget `Form`** e nos campos como `TextFormField`.

---

## 🛠️ Por muitas vezes não utilizamos explicitamente o `setState()` em formulários

- A **validação**, o **controle dos dados** e o **foco nos campos** são feitos por mecanismos internos do `Form`.
- Em vez de recriar toda a interface com `setState()`, usamos **objetos controladores**, como:
  - `TextEditingController`
  - `GlobalKey<FormState>`
- O `Form` possui seu **próprio ciclo de vida e estado interno**.

---

## 📄 Código Base

```dart
import 'package:flutter/material.dart';

class Formulario extends StatefulWidget{
  @override
  _Formulario createState() => _Formulario();
}

class _Formulario extends State<Formulario>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista')),
      body: Form(  
        child: Column(  
          children: [
            TextFormField(  
              decoration: const InputDecoration(label: Text('nome:')),
              validator: (value) {
                if(value == null || value.length < 3){
                  return 'Nome deve possuir 3 caracteres';
                }
              },
            ),
            TextFormField(  
              decoration: const InputDecoration(label: Text('e-mail:')),
              validator: (value) {
                if(value == null || !value.contains('@')){
                  return 'E-mail deve conter @';
                }
              },
            ),
            ElevatedButton(
              onPressed: () {
                print('deu certo');
              }, 
              child: const Text('Enviar'))
          ],
        ),
      ),
    );
  }
}
```

❗ **Problema**: O formulário acima ainda **não valida** ao pressionar o botão  
Apesar de `Form` e `TextFormField` estarem sendo usados corretamente, o botão não sabe que precisa disparar a validação. Para isso, precisamos de uma referência ao estado do formulário. É aqui que entra a **GlobalKey**.

---

🗝️ **Por que usar uma `GlobalKey<FormState>`?**

### ✨ **O que ela traz?**
- Permite acessar diretamente o estado atual do formulário (`FormState`).
- É por meio dela que conseguimos chamar métodos como:
  - `formKey.currentState!.validate();`
  - `formKey.currentState!.save();`
  - `formKey.currentState!.reset();`

---

### 🎯 **Benefícios**

| **Benefício**            | **Explicação**                                                                 |
|--------------------------|--------------------------------------------------------------------------------|
| **Controle direto**       | Validar, salvar ou resetar o formulário com um clique.                         |
| **Separação de responsabilidades** | A lógica de validação fica no `Form`, e o botão apenas aciona.              |
| **Evita recriação da tela inteira** | Diferente de `setState`, que reconstrói o widget todo.                     |
| **Melhora manutenção e legibilidade** | Código modular, fácil de testar e de entender.                             |

---

✅ **Conclusão**  
Usar uma `GlobalKey` com `Form` é essencial para acessar seu estado, validar os campos e agir com base nisso. Mesmo dentro de um `StatefulWidget`, não usamos `setState()` diretamente para validação de formulários, pois já temos uma estrutura mais adequada, eficiente e desacoplada disponível no próprio Flutter.


