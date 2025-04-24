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
# Explicação do uso do GlobalKey no código

No código fornecido, o `GlobalKey<FormState>` é utilizado para acessar o estado do formulário e realizar ações como validação. O processo funciona da seguinte forma:

1. **Definição da chave (`_formKey`)**: A `GlobalKey<FormState>` é definida como uma variável privada (`_formKey`). Esta chave será usada para associar o `Form` ao seu estado, permitindo a interação direta com ele.

2. **Vinculação da chave ao `Form`**: Dentro do widget `Form`, a chave é associada usando a propriedade `key`. Isso permite que o Flutter saiba que esse formulário estará sob o controle da chave `_formKey`, dando acesso ao estado do formulário.

3. **Acesso ao estado para validação**: Quando o botão "Enviar" é pressionado, o método `validate()` é chamado para verificar se todos os campos do formulário atendem às condições definidas nas funções `validator` de cada `TextFormField`. O acesso à validação só é possível porque a chave `_formKey` está vinculada ao formulário. O método `validate()` retorna `true` se todos os campos forem válidos, e `false` caso contrário.

### Clique do enviar

A validação do formulário é realizada **somente ao clicar no botão**. Antes disso, o formulário não sabe se os campos são válidos ou não. A `GlobalKey<FormState>` nos permite acessar o estado do formulário e chamar a validação no momento em que o usuário interage com o botão de envio.

--- 

# Validação do formulário antes do envio

Se você precisar que o formulário valide seus campos antes que o usuário pressione o botão de envio, pode usar a propriedade `autovalidateMode` dentro do widget `Form`.

## Tipos de `AutovalidateMode`

### 1. **`AutovalidateMode.onUserInteraction`**
   - **Como funciona**: O formulário valida os campos automaticamente assim que o usuário começa a interagir com os campos. Ou seja, assim que o usuário começar a digitar em um `TextFormField`, a validação será disparada.
   - **Exemplo de uso**: Esta opção é útil quando você quer que o feedback sobre a validade dos campos seja mostrado imediatamente ao usuário enquanto ele interage com o formulário.
   - **Quando utilizar**: Ideal quando o formulário exige uma experiência de usuário interativa, fornecendo mensagens de erro assim que o campo for modificado.

   Exemplo de código:
```dart
  Form(  
   autovalidateMode: AutovalidateMode.onUserInteraction,
```

### 2. **`AutovalidateMode.always`**
   - **Como funciona**: A validação será feita continuamente, ou seja, o Flutter tentará validar os campos do formulário o tempo todo, mesmo sem o usuário interagir com os campos.
   - **Exemplo de uso**: Isso pode ser útil em casos em que você deseja verificar o estado dos campos sem que o usuário precise interagir diretamente com eles.
   - **Quando utilizar**: Essa opção deve ser usada quando você quer garantir que a validação aconteça de forma contínua, independentemente da interação do usuário, o que pode ser útil para formulários mais complexos ou aqueles que exigem feedback constante.

   Exemplo de código:
```dart
  Form(  
   autovalidateMode: AutovalidateMode.always,
```

### 3. **`AutovalidateMode.disabled`**
   - **Como funciona**: A validação automática é desativada. O formulário só será validado quando você explicitamente chamar o método `validate()` (por exemplo, ao pressionar o botão de envio).
   - **Exemplo de uso**: Quando você deseja controle total sobre o momento em que a validação ocorre, evitando qualquer validação automática.
   - **Quando utilizar**: Ideal para cenários em que você não quer que a validação aconteça antes do usuário clicar no botão, por exemplo, se você preferir que o usuário preencha o formulário sem interrupções, e só após o envio você realiza a validação.

   Exemplo de código:
```dart
  Form(  
   autovalidateMode: AutovalidateMode.disabled,
```

### Versão final do exemplo
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
        autovalidateMode: AutovalidateMode.onUserInteraction,
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


# Validação de Formulários no Flutter

Este arquivo oferece uma visão geral sobre a validação de formulários no Flutter, usando o `Form` e o `TextFormField`, bem como a importância do uso de `GlobalKey` para validar os campos. Além disso, discutimos a configuração de `autovalidateMode` e como controlar a validação automática.

## Materiais de Estudo Correlatos

Aqui estão alguns links da documentação oficial do Flutter que aprofundam os tópicos discutidos:

### 1. **Formulários no Flutter**
A documentação oficial sobre como trabalhar com formulários no Flutter, incluindo exemplos e explicações sobre o uso de `Form` e `TextFormField`.

- [Formulários no Flutter](https://flutter.dev/docs/cookbook/forms/validation) 

### 2. **Validação de Formulários**
Nesta seção, você encontrará informações detalhadas sobre a validação de entradas de formulários, como usar `validator`, `autovalidateMode`, e como lidar com erros de validação.

- [Validação de Formulários](https://flutter.dev/docs/cookbook/forms/validation)

### 3. **GlobalKey<FormState>**
Aqui você aprende como usar `GlobalKey<FormState>` para acessar e controlar o estado do formulário, validar e salvar os dados. Este é um componente crucial para lidar com a validação de formulários em Flutter.

- [GlobalKey<FormState>](https://api.flutter.dev/flutter/widgets/GlobalKey-class.html)

### 4. **AutovalidateMode**
Entenda como o `autovalidateMode` pode ser usado para controlar quando a validação é realizada no formulário. As opções incluem `AutovalidateMode.onUserInteraction`, `AutovalidateMode.always` e `AutovalidateMode.disabled`.

- [AutovalidateMode](https://api.flutter.dev/flutter/widgets/AutovalidateMode-class.html)

### 5. **TextFormField**
A documentação sobre o `TextFormField` oferece uma visão aprofundada sobre como usar este widget para criar campos de entrada de texto no formulário e como configurar validadores personalizados.

- [TextFormField](https://api.flutter.dev/flutter/material/TextFormField-class.html)

### 6. **Exemplos e Cookbooks**
Esta seção da documentação oficial do Flutter oferece exemplos práticos e guias que podem ser úteis para entender como implementar e personalizar formulários, incluindo a validação.

- [Cookbook: Forms](https://flutter.dev/docs/cookbook/forms)

### 7. **Dart: Funções e Tipos**
Para uma compreensão mais profunda de como usar tipos e funções no Flutter, você pode explorar a documentação oficial do Dart.

- [Dart: Funções e Tipos](https://dart.dev/guides/language/language-tour)

## Conclusão

A documentação oficial do Flutter oferece uma excelente base para aprender como implementar formulários e validação, e como usar `GlobalKey<FormState>` para acessar e manipular o estado de um formulário. Através dos links acima, você pode expandir seu conhecimento e experimentar com exemplos práticos. Aproveite os materiais e comece a implementar formulários eficazes em seus aplicativos Flutter!


