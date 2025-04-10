# 📚 Fase 06 – Componentização dos Botões do Menu

## 🎯 Objetivo
Ensinar a **componentização de elementos repetitivos** no Flutter utilizando **métodos dentro de classes**. A ideia é mostrar que, quando temos widgets semelhantes, podemos evitar a repetição de código ao extrair esses widgets para uma função que recebe os parâmetros variáveis.

---

## 🧠 Conceitos Reforçados
- **Tipos de parâmetros** (nomeados e posicionais).
- **Funções anônimas** e **arrow functions**.
- **Criação de widgets aninhados**.
- **POO aplicada na prática**.
- **Importância da prática e repetição para a aprendizagem real**.

---

## 🧩 Estratégia
Ao invés de criar manualmente cada botão no menu, criamos um **método local** chamado `criarBotao`, que encapsula a criação do `ElevatedButton`.

Esse método recebe os parâmetros:
- `context`: necessário para navegação.
- `rotulo`: o texto a ser exibido no botão.
- `rota`: a rota que será chamada ao clicar.

---

## ✅ Exemplo de código:

```dart
import 'package:flutter/material.dart';

class WidgetMenu extends StatelessWidget {
  const WidgetMenu({super.key});

  Widget criarBotao({
    required BuildContext context,
    required String rotulo,
    required String rota,
  }) {
    return ElevatedButton(
      child: Text(rotulo),
      onPressed: () {
        Navigator.of(context).pushNamed(rota);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        criarBotao(context: context, rota: '/estado', rotulo: 'Estado'),
        criarBotao(context: context, rota: '/cidade', rotulo: 'Cidade'),
        criarBotao(context: context, rota: '/pessoa', rotulo: 'Pessoa'),
      ],
    );
  }
}
```
🧭 Observações Importantes
Esse tipo de componentização é local à classe. Se for necessário usar esse botão em outras telas, o ideal é transformá-lo em um widget separado.

Essa prática melhora a organização e legibilidade do código.

A componentização é uma das formas práticas de aplicar os princípios da programação orientada a objetos.

💡 Dica para o aluno
Copiar o código do professor ou do colega pode parecer ajudar, mas não gera aprendizado real. Tente criar a sua própria solução, mesmo que erre várias vezes. É nesse processo de tentativa e erro que a verdadeira aprendizagem acontece.
