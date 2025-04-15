# 🧾 Fase 08 – Cadastro de Estado com `TextFormField`

## 🎯 Objetivo
Apresentar o uso do **formulário (`Form`)** e **campos de texto (`TextFormField`)** no Flutter, utilizando componentização por classe para evitar repetição de código. Essa fase marca o início da construção de telas de **cadastro com formulários**, algo comum em qualquer aplicação.

---

## 🧠 Conceitos Reforçados
- Uso do `Form` e `TextFormField`.
- Parâmetros comuns do `TextFormField`, como `decoration`, `labelText` e `hintText`.
- Componentização por classe: **como encapsular elementos reutilizáveis com atributos no construtor**.
- Boas práticas de POO (Programação Orientada a Objetos).
- Reforço sobre a **prática e repetição** como caminho mais eficaz de aprendizado.

---

## ✅ Exemplo de código (sem componentização ainda):

```dart
import 'package:flutter/material.dart';

class WidgetEstado extends StatelessWidget {
  const WidgetEstado({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Estado'),
      ),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Nome',
                hintText: 'Insira o nome do estado',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Sigla',
                hintText: 'Insira a sigla do estado - 2 letras',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('salvar estado');
                Navigator.pop(context);
              },
              child: const Text('Salvar'),
            )
          ],
        ),
      ),
    );
  }
}
```

🧩 TextFormField – Parâmetros mais comuns
decoration - Configura aparência (rótulo, dica, borda etc.)  
labelText	- Texto fixo acima do campo  
hintText- Dica visível quando o campo está vazio  
keyboardType - Tipo de teclado (texto, número, e-mail etc.)  
obscure - Text	Oculta o conteúdo (útil para senhas)  
validator	- Valida o conteúdo do campo  


💡 Dica de componentização (para praticar)
Você pode transformar o TextFormField em um componente reutilizável. Exemplo de classe personalizada:
```dart
class CampoTexto extends StatelessWidget {
  final String label;
  final String hint;

  const CampoTexto({super.key, required this.label, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
      ),
    );
  }
}

//como usar?
CampoTexto(label: 'Nome', hint: 'Insira o nome do estado'),
CampoTexto(label: 'Sigla', hint: 'Insira a sigla do estado - 2 letras'),

```

## ✍️ Dica para o aluno
- Copiar o professor é bom. Repetir é ótimo. Olhar o colega também é bom.  
- Mas o que realmente ensina é a prática constante.  
- Mesmo parecendo tediosa, a repetição constrói o raciocínio.  
- Não pule a parte difícil: é nela que a aprendizagem acontece!  

## 🛠️ Exercício sugerido
- Componentize os campos de texto usando uma classe como CampoTexto.
- Crie um terceiro campo chamado Código IBGE com dica: Insira o código do estado.
- Use os três campos e um botão Salvar.  

