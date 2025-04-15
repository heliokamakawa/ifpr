# 🚀 Fase 02 – Aplicação com chamada direta no `home`

## 🎯 Objetivo pedagógico

- Fortalecer boas práticas com `const` e `final`.
- Reforçar o entendimento sobre como o `home` funciona no `MaterialApp`.
- Criar widgets específicos: `WidgetMenu`, `WidgetEstado`, `WidgetCidade`, `WidgetPessoa`, `WidgetCategoria`, `WidgetProduto`.
- Aproveitar a repetição para criar familiaridade com a sintaxe da POO em Flutter.
- Treinar **criação de objetos aninhados**, uso de **funções anônimas** e **arrow functions**.
- Refletir sobre **parâmetros nomeados vs posicionais**, dedução de tipos e funções como parâmetros.
- Mostrar **limitações de chamadas manuais** e antecipar o uso de **rotas** na próxima fase.

---

## 📁 Estrutura de Arquivos (exemplo)

lib/   
├── aplicacao.dart 
└── aula/  
  ├── widget_menu.dart   
  ├── widget_estado.dart   
  ├── widget_cidade.dart   
  ├── widget_pessoa.dart   
  ├── widget_categoria.dart   
  └── widget_produto.dart  


## 🧠 Conceitos Reforçados

### ✅ `const` e `final`

- `const`: valor **imutável em tempo de compilação**. Otimiza performance e evita recriação desnecessária.
- `final`: valor **imutável após atribuição**, útil para valores que só são conhecidos em tempo de execução.


```dart


## 💡 Aplicação Principal

```dart
import 'package:flutter/material.dart';
import 'package:widget_intro/aula/widget_menu.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aula Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const WidgetMenu(), // Troque esse widget manualmente para treinar
    );
  }
}
```

## 📦 Exemplos de Widgets - WidgetMenu


```dart

import 'package:flutter/material.dart';

class WidgetMenu extends StatelessWidget {
  const WidgetMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Menu Principal');
  }
}

```
🟩 WidgetEstado

```dart
import 'package:flutter/material.dart';

class WidgetEstado extends StatelessWidget {
  const WidgetEstado({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Cadastro Estado');
  }
}

```

Faça o resto...

## 🔄 Sugestão de prática em aula  
1. Troque manualmente o home: no MaterialApp por:  
```dart
home: const WidgetEstado(),
```
2. Depois por:  
```dart
home: const WidgetCidade(),
```
3. E assim por diante, para ver na prática o comportamento da aplicação.  

>>⚠️ Isso mostra como essa abordagem não escala – ótimo gancho para introduzir routes na próxima fase.  

## 📚 Dicas e reflexões
- Criar objetos repetidamente ajuda a memorizar a sintaxe de composição da POO em Flutter.  
- Copiar do professor é bom, repetir é melhor, ver o código dos colegas é excelente.  
- Entenda como e por que usar const, e onde usar final.  
- Observe o uso de parâmetros do tipo função nas próximas atividades (ex: onPressed).  
- Treine a deduzir os tipos dos parâmetros, mesmo sem conhecer todas as bibliotecas.  
- Acostume-se com objetos anônimos e composição de widgets.  

## 💬 Reforço pedagógico
- Repetição com propósito é essencial.  
- O que realmente ensina é tentar fazer sozinho várias vezes.  
- Flutter é POO: construtores, herança, métodos obrigatórios e composição de objetos.  
- Mão na massa, sempre. 💪  


