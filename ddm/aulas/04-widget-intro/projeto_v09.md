# 🏙️ Fase 09 – Cadastro de Cidade com `DropdownButtonFormField`

## 🎯 Objetivo
Apresentar o uso de campos de **seleção (`DropdownButtonFormField`)** no Flutter, comparando com os `DropdownMenuItem` e aplicando a componentização por classe para facilitar manutenção e evitar repetição.

---

## 🧠 Conceitos Reforçados
- Uso do `DropdownButtonFormField` em formulários.
- Diferença entre `DropdownButtonFormField` e `DropdownMenuItem`.
- Como criar listas de seleção simples no Flutter.
- Componentização por **classe com construtor** → uso de atributos personalizados.
- Princípios de POO e a importância da prática, repetição e autonomia no processo de aprendizagem.

---

## ✅ Exemplo de código (sem componentização ainda):

```dart
import 'package:flutter/material.dart';

class WidgetCidade extends StatelessWidget {
  const WidgetCidade({super.key});

  @override
  Widget build(BuildContext context) {
    String? valorSelecionado;

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
                hintText: 'Insira o nome da cidade',
              ),
            ),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: 'Estado'),
              items: const [
                DropdownMenuItem(value: '1', child: Text('PARANÁ')),
                DropdownMenuItem(value: '2', child: Text('SÃO PAULO')),
                DropdownMenuItem(value: '3', child: Text('SANTA CATARINA')),
              ],
              onChanged: (value) {
                valorSelecionado = value;
                print(value);
              },
            ),
            ElevatedButton(
              child: const Text('Salvar'),
              onPressed: () {
                print('salvar estado');
              },
            ),
          ],
        ),
      ),
    );
  }
}
```
🧩 Diferença entre DropdownButtonFormField e DropdownMenuItem

DropdownButtonFormField	- Componente principal, onde o usuário seleciona uma das opções.
DropdownMenuItem -	Representa cada item do menu. É uma opção que pode ser selecionada.

💡 Dica de componentização (para praticar)
Você pode transformar o DropdownButtonFormField em um componente reutilizável. Exemplo:

```dart
class CampoDropdown extends StatelessWidget {
  final String label;
  final List<DropdownMenuItem<String>> itens;
  final Function(String?) onChanged;

  const CampoDropdown({
    super.key,
    required this.label,
    required this.itens,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(labelText: label),
      items: itens,
      onChanged: onChanged,
    );
  }
}

//uso
CampoDropdown(
  label: 'Estado',
  itens: const [
    DropdownMenuItem(value: '1', child: Text('PARANÁ')),
    DropdownMenuItem(value: '2', child: Text('SÃO PAULO')),
    DropdownMenuItem(value: '3', child: Text('SANTA CATARINA')),
  ],
  onChanged: (value) => print(value),
),

```
✍️ Dica para o aluno
Copiar o professor é bom.  
Repetir o código várias vezes é ótimo.  
Olhar a solução do colega também ajuda muito.  
Mas o que realmente ensina é criar sua própria solução, por mais simples que seja.  
A prática leva à compreensão, e a compreensão leva à independência.  

🛠️ Exercício sugerido
Crie uma classe CampoTexto para o campo nome (caso ainda não tenha).  

Crie uma classe CampoDropdown para o campo de estado.  

Use essas classes para montar a tela de cadastro da cidade.  

Adicione um campo de código da cidade como TextFormField.  
