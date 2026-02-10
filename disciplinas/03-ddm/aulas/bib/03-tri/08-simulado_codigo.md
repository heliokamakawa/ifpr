# 🧩 Simulado — Análise do Código Base (Formulário Stateless)

O código abaixo é a base para as perguntas a seguir:  

```dart
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final controller = TextEditingController();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Formulário Stateless')),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: controller,
                  decoration: const InputDecoration(
                    labelText: 'Digite algo',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) =>
                      (value == null || value.isEmpty) ? 'Campo obrigatório' : null,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Valor: ${controller.text}')),
                      );
                    }
                  },
                  child: const Text('Enviar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```


###  
Por que o uso de `final formKey` e `final controller` dentro do método `build()` não preserva o estado entre reconstruções?  
Explique o que aconteceria se o widget fosse redesenhado.

---

###  
Se este código fosse reescrito como `StatefulWidget`, onde o `formKey` e o `controller` deveriam ser declarados e por quê?

---

###  
O que aconteceria se o `controller.dispose()` fosse chamado manualmente dentro do `onPressed`?  
Explique o erro que ocorreria.

---

###  
O que faz o `GlobalKey<FormState>()` neste contexto e por que ele é necessário para a validação?

---

###  
Por que `ScaffoldMessenger.of(context)` funciona aqui e não funcionaria se estivesse acima do `MaterialApp`?

---

###  
Explique o papel do **contexto** (`BuildContext`) neste exemplo.  
Qual seria o resultado se tentássemos chamar `ScaffoldMessenger.of(context)` dentro do `main()`?

---

###  
Por que o uso de `const` em `Text('Enviar')` e `Text('Formulário Stateless')` é correto neste código, mas seria errado em `Text(controller.text)`?

---

###  
O que aconteceria se o botão `ElevatedButton` fosse declarado fora do `Form`?  
A validação ainda seria chamada?

---

###  
O que aconteceria se removêssemos o `validator` do `TextFormField` e deixássemos o campo vazio?  
O botão ainda exibiria o `SnackBar`?

---

###  
O que o Flutter faz internamente quando o método `validate()` é chamado na `formKey`?  
Explique o fluxo entre `FormState` e `TextFormField`.

---

###  
O código roda e funciona, mas há um problema conceitual.  
Qual é ele em termos de **gerência de estado e memória**?  
Como você o resolveria?

---

###  
Qual é a diferença entre usar `TextField` e `TextFormField` neste código?  
O que deixaria de funcionar se trocássemos?

---

###  
Por que o método `runApp()` deve receber um widget e não uma função ou outro tipo de objeto?  
O que aconteceria se você tentasse `runApp(MyApp())` sem o `const`?

---

###  
Se fossem adicionados mais dois campos de texto, o que aconteceria se todos compartilhassem o mesmo `controller`?  
Explique o resultado e mostre a correção.

---

###  
Por que a propriedade `mainAxisAlignment: MainAxisAlignment.center` não centraliza o formulário verticalmente quando há muitos elementos?  
Qual seria a solução?

---

###  
Explique o comportamento do `SnackBar`.  
Por que ele não aparece se o `context` for diferente do `Scaffold` onde está o botão?

---

###  
Se o código fosse executado dentro de um `StatelessWidget` com **hot reload** ativo, o que aconteceria com os valores digitados?  
Explique tecnicamente.

---

###  
Como o Flutter identifica que o botão foi pressionado e reconstrói apenas partes necessárias da interface, mesmo sendo `StatelessWidget`?

---

### 
Crie uma versão equivalente, mas incorreta deste código:  
– troque `children` por `child`;  
– remova o `Form`;  
– mantenha o `validator`.  
O código compila? O que acontece ao executar?  
Explique e corrija.
