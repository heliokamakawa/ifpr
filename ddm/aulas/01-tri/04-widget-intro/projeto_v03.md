# 🚀 Fase 03 – Introdução a Widgets Estruturais: Column e múltiplos botões

## 🎯 Objetivo pedagógico

- Iniciar a construção do menu com **botões**.
- Trabalhar intencionalmente o **erro de múltiplos widgets** onde se espera apenas um, levando à descoberta da necessidade de **widgets estruturais**.
- Apresentar o widget `Column` como solução para organizar diversos elementos verticalmente.
- Criar todos os botões com seus respectivos textos, **sem ainda configurar ações** (rotas).
- Reforçar os conceitos de:
  - Parâmetros nomeados vs posicionais;
  - Tipos de parâmetros (especialmente do tipo função);
  - Funções anônimas (`() {}`) e arrow functions (`() =>`).
  - Composição de objetos e construção em camadas (POO);
  - Importância da repetição para o aprendizado.

---

## 💥 Erro provocador (cenário inicial)

Antes de usar um widget estrutural:

```dart
class WidgetMenu extends StatelessWidget {
  const WidgetMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Estado'),
      onPressed: () {},
    );
  }
}
```
✅ Funciona com um único widget.

Agora tente adicionar mais botões:

```dart
@override
Widget build(BuildContext context) {
  return
    ElevatedButton(child: Text('Estado'), onPressed: () {}),
    ElevatedButton(child: Text('Cidade')), // ❌ Erro!
    ElevatedButton(child: Text('Pessoa')); // ❌ Erro!
}

```
⛔️ Erro de compilação: só é possível retornar um único widget no método build.

🧠 Solução: uso de widgets estruturais
Apresentar o Column, que é intuitivo e serve para organizar múltiplos widgets em coluna:

✅ Código final da fase
```dart
import 'package:flutter/material.dart';

class WidgetMenu extends StatelessWidget {
  const WidgetMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          child: const Text('Estado'),
          onPressed: () {
            // Sem ação por enquanto
          },
        ),
        ElevatedButton(
          child: const Text('Cidade'),
          onPressed: () {},
        ),
        ElevatedButton(
          child: const Text('Pessoa'),
          onPressed: () {},
        ),
        ElevatedButton(
          child: const Text('Categoria'),
          onPressed: () {},
        ),
        ElevatedButton(
          child: const Text('Produto'),
          onPressed: () {},
        ),
      ],
    );
  }
}

```

## 🛠️ Sugestão de prática em aula
- Criar primeiro apenas um botão.  
- Adicionar mais um botão e provocar erro proposital.  

**Perguntar:**  
- Por que deu erro?  
- O que precisamos para empilhar widgets?  
- Introduzir Column, mostrar a estrutura.  
- Adicionar os demais botões e treinar repetição da sintaxe.  
- Mudar nome dos botões para reforçar adaptação e familiarização com código.  

## 💡 Dicas e reflexões
- Copiar do professor é bom, repetir é ótimo, olhar o código dos colegas é excelente.  
- O Flutter é feito de objetos compostos: widget dentro de widget, estrutura dentro de estrutura.  
- Widgets estruturais como Column, Row, Stack organizam a interface e serão usados sempre.  
- Funções anônimas são obrigatórias para onPressed, mesmo que estejam vazias por enquanto: onPressed: () {}.  
- Pratique com botões que ainda não fazem nada – o foco aqui é estrutura e repetição.  

## 📚 Reforço pedagógico
- Treinar estrutura antes da lógica é como montar o campo antes do jogo.  
- Sem entender como colocar os widgets juntos, não dá pra ir pra parte divertida da navegação.  
- Essa fase foca no olho clínico para a sintaxe e em repetir a construção de objetos.  
- Flutter = POO em ação. 


