# Aula de Widgets com Flutter

> **Objetivo Geral**: Desenvolver um projeto Flutter progressivo focado em praticar e entender sintaxe e semântica de POO, com base nos conhecimentos prévios em Java. A construção dos widgets será feita em fases, cada uma com seus objetivos, explicações, desafios e referências de estudo.

---

## :dart: Direcionamento Pedagógico
- **Foco 1**: Entender a *sintaxe* de POO com Dart (criação de objetos, uso de construtores, parâmetros nomeados e posicionais, funções anônimas).
- **Foco 2**: Compreender a *semântica* de POO (organização de código, componentização por funções ou classes).
- **Metodologia**: Ensino ativo por repetição, erro e acerto, exploração intuitiva da documentação e biblioteca.
- **Gamificação**: Em cada fase, incluir desafios e "conquistas" para estimular avanço.

---

## :books: Documentação Oficial Recomendada
- [Widgets - Flutter](https://docs.flutter.dev/development/ui/widgets-intro)
- [MaterialApp - Flutter](https://api.flutter.dev/flutter/material/MaterialApp-class.html)
- [StatelessWidget - Flutter](https://api.flutter.dev/flutter/widgets/StatelessWidget-class.html)
- [Navigation and Routing](https://docs.flutter.dev/development/ui/navigation)

---

## :construction: Projeto Final Esperado
```
main.dart
lib/
 ├─ aplicacao.dart  --> MaterialApp e configuração de rotas
 ├─ aula/
 │   ├─ widget_menu.dart
 │   ├─ widget_estado.dart
 │   ├─ widget_cidade.dart
 │   └─ widget_pessoa.dart
```

## :triangular_flag_on_post: Fase 01 - Criar a Aplicação Inicial
### Objetivo
- Compreender a estrutura básica do Flutter
- Entender herança, classes abstratas e obrigatoriedade de sobrescrever métodos
- Criar objeto `MaterialApp`

### Conteúdo Teórico
- Classe abstrata `Widget` é a raiz de todos os widgets.
- `StatelessWidget` é uma subclasse que obriga implementar `build()`.
- `MaterialApp` cria uma estrutura de aplicativo com tema e navegação.

### Exemplo de Código
```dart
import 'package:flutter/material.dart';

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
      home: const Text('Olá'),
    );
  }
}
```

### :video_game: Desafio
- Criar um `MaterialApp` personalizado com `title`, `theme`, `debugShowCheckedModeBanner`, `home`.
- Testar mudanças em cada propriedade.

---

## :triangular_flag_on_post: Fase 02 - Componentização do Home
### Objetivo
- Criar widgets separados (menu, estado, cidade, pessoa)
- Praticar `StatelessWidget`, `build()` e `const`

### Estrutura Esperada
- `WidgetMenu`, `WidgetEstado`, `WidgetCidade`, `WidgetPessoa`

### Exemplo
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

### :video_game: Desafio
- Criar os 4 widgets com `Text` descritivo.
- Adicionar todos no projeto com import e export.
- Testar cada um manualmente (trocando `home:` no `MaterialApp`).

---

## :triangular_flag_on_post: Fase 03 - Botões no Menu
### Objetivo
- Entender limitação de um widget por parâmetro
- Introduzir `Column` como widget estrutural

### Exemplo Final
```dart
class WidgetMenu extends StatelessWidget {
  const WidgetMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          child: const Text('Estado'),
          onPressed: () {},
        ),
        ElevatedButton(
          child: const Text('Cidade'),
          onPressed: () {},
        ),
        ElevatedButton(
          child: const Text('Pessoa'),
          onPressed: () {},
        ),
      ],
    );
  }
}
```

### :video_game: Desafio
- Criar botões para os 3 cadastros no `WidgetMenu`.
- Testar a sintaxe com `ElevatedButton`, `child`, `onPressed`.
- Tentar criar dois widgets em `home:` e ver o erro.

---

## :triangular_flag_on_post: Fase 04 - Rotas Nomeadas
### Objetivo
- Aprender a usar `initialRoute` e `routes`
- Fazer navegação com `pushNamed` e `pop`

### Exemplo
```dart
MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => const WidgetMenu(),
    '/estado': (context) => const WidgetEstado(),
    '/cidade': (context) => const WidgetCidade(),
    '/pessoa': (context) => const WidgetPessoa(),
  },
)
```

```dart
ElevatedButton(
  onPressed: () {
    Navigator.of(context).pushNamed('/estado');
  },
  child: const Text('Estado'),
);
```

```dart
ElevatedButton(
  onPressed: () {
    Navigator.pop(context);
  },
  child: const Text('Voltar'),
);
```

### :video_game: Desafio
- Implementar os 3 botões com `pushNamed` no `WidgetMenu`
- Adicionar botão voltar em cada tela

---

## :sparkles: Gamificação e Recompensas
| Fase | Desafio                          | Recompensa                   |
|------|----------------------------------|------------------------------|
| 01   | Crie o `MaterialApp` completo    | Insígnia "Explorador"       |
| 02   | Componentize 3 widgets           | Insígnia "Organizador"      |
| 03   | Crie e estilize 3 botões        | Insígnia "Designer"         |
| 04   | Implemente as rotas e voltar     | Insígnia "Navegador"        |

---

## :bulb: Dicas Práticas
- **Repetição ajuda a decorar a sintaxe.**
- **Copiar o professor é bom, repetir sozinho é melhor ainda.**
- **Explore os parâmetros, não decore!** Use `ctrl+clique` para navegar.
- **Widgets aninhados são classes!** Repare na crética de objetos inline.
- **Use `const` sempre que possível.**
- **Funções anônimas são comuns no Flutter!**

---

## :memo: Continuidade
- As próximas fases envolverão `TextField`, `DropdownButton`, e validação de formulário.
- O foco continuará na aplicação prática de POO com Flutter.

---

Se você perdeu alguma aula, não tem problema. Siga essas fases com calma, pratique bastante e compartilhe dúvidas. É a prática que vai te deixar confiante!

---

**Feito com carinho e foco em sua formação! ✌️**
