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

✅ **GlobalKey**  
Usar uma `GlobalKey` com `Form` é essencial para acessar seu estado, validar os campos e agir com base nisso. Mesmo dentro de um `StatefulWidget`, não usamos `setState()` diretamente para validação de formulários, pois já temos uma estrutura mais adequada, eficiente e desacoplada disponível no próprio Flutter.


### Como gerar a `GlobalKey` do formulário

Para usar uma `GlobalKey<FormState>`, precisamos primeiro criar a chave que será associada ao nosso formulário. A `GlobalKey` é essencial para acessar o estado do formulário e realizar ações como validação, salvamento e redefinição dos campos.

#### Sintaxe

A `GlobalKey` é tipada com `FormState`, o que indica que ela se refere ao estado do formulário. Isso permite que possamos acessar diretamente os métodos do formulário.

```dart
final formKey = GlobalKey<FormState>();
```
### Motivo de tipar a GlobalKey com FormState
A razão pela qual tipamos a GlobalKey como FormState é que queremos acessar os métodos que são específicos para o estado de um formulário, como validação, salvar e resetar os campos. Quando tipamos a chave corretamente, o Flutter sabe que essa chave será usada especificamente para interagir com o estado do formulário.
- FormState: Representa o estado atual do formulário.  
- GlobalKey<FormState>: A chave usada para acessar e manipular o estado do formulário.  

O que é FormState?
O FormState é a classe responsável por gerenciar o estado de um formulário. Ele possui métodos úteis, como:
- validate(): Valida todos os campos do formulário.  
- save(): Salva os dados do formulário.  
- reset(): Reseta todos os campos para o valor inicial.  

Esses métodos são acessados por meio da GlobalKey<FormState> para interagir diretamente com o estado do formulário.

Exemplo de código
Aqui está um exemplo de como utilizar a GlobalKey com FormState em um formulário:
```dart


import 'package:flutter/material.dart';

class Formulario extends StatefulWidget{
  @override
  _Formulario createState() => _Formulario();
}

class _Formulario extends State<Formulario>{
  final _formKey = GlobalKey<FormState>(); //definindo a chave
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista')),
      body: Form(  
        key: _formKey, //vinculando
        child: Column(  
          children: [
            TextFormField(  
              decoration: const InputDecoration(label: Text('nome:')),
              validator: (value) {
                if(value == null || value.length < 3){
                  return 'Nome deve possuir 3 caracteres';
                }
                return null;
              },
            ),
            TextFormField(  
              decoration: const InputDecoration(label: Text('e-mail:')),
              validator: (value) {
                if(value == null || !value.contains('@')){
                  return 'Nome deve possuir @';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: (){
                if(_formKey.currentState!.validate()){ //com a chave, temos acesso ao validade
                  print('deu certo');
                }else{
                  print('erro');
                }
                
              }, 
              child: const Text('Enviar'))
          ],
        ),
      ),
    );
  }
}
```
