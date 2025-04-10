# 🧩 Fase 01 – Criando a aplicação com texto simples na home
✅ Objetivo
- Entender a estrutura inicial de um app Flutter.  
- Aprender sobre POO com herança, classes abstratas, método obrigatório (build), parâmetros nomeados e posicionais.
- Conhecer e explorar classes do SDK Flutter: StatelessWidget, MaterialApp, ThemeData, Widget.
- Introduzir o conceito de importações, code navigation, e criação de objetos aninhados.
- Iniciar o treino com funções anônimas, arrow functions e parâmetros do tipo função.  

```dart
// Importando o pacote base do Flutter com os widgets visuais do Material Design
import 'package:flutter/material.dart';

// A classe Aplicacao herda de StatelessWidget, ou seja, é um widget que não tem estado (imutável)
class Aplicacao extends StatelessWidget {
  // Construtor const com super key (boa prática, padrão para componentes visuais)
  const Aplicacao({super.key});

  // build() é um método obrigatório da classe abstrata StatelessWidget
  // É chamado pelo Flutter para construir a interface visual (UI)
  @override
  Widget build(BuildContext context) {
    // Retornamos um MaterialApp, que é a raiz da nossa aplicação
    return MaterialApp(
      title: 'Aula Widget', // título da aplicação (aparece em algumas plataformas)
      theme: ThemeData( // tema visual da aplicação
        primarySwatch: Colors.blue, // define uma cor principal com tons derivados
      ),
      debugShowCheckedModeBanner: false, // remove a faixa "debug" da tela
      home: const Text('Olá'), // tela inicial da aplicação
    );
  }
}

```
## 🧠 Conteúdos abordados na prática
🔷 1. Importação
import 'package:flutter/material.dart';

Importa todas as classes do Material Design.

A MaterialApp está dentro desse pacote.

Atalho: Ctrl+clique (ou F12) para navegar até a definição da classe e explorar seus membros.

🔷 2. Herança e POO
class Aplicacao extends StatelessWidget

StatelessWidget é uma classe abstrata.

Requer a implementação do método build(BuildContext context).

StatelessWidget herda de Widget, que é genérica: Widget<T> → ajuda a criar qualquer tipo de componente visual.

🔷 3. Construtores e parâmetros nomeados
const Aplicacao({super.key});

key é um parâmetro nomeado que é repassado para o construtor pai (StatelessWidget).

Esse padrão se repete em praticamente todos os widgets Flutter.

🔷 4. Funções e parâmetros do tipo função
build() é uma função que recebe um parâmetro (BuildContext context) e retorna um Widget.

A prática de criar funções que retornam objetos (funções anônimas, arrow functions) será reforçada em outras fases.

🧱 Dicas de fixação para alunos
Copiar é treino, repetir é aprendizado!

Pode parecer simples agora, mas entender isso solidamente evita muito erro depois.

A maioria dos widgets em Flutter seguem esse padrão: construtor com parâmetros nomeados + método build.

Use Ctrl+Clique para ver a documentação e descobrir tipos e propriedades de qualquer classe.

📣 Reflexões para conversar com os alunos
O que acontece se esquecermos de implementar o build()?

Por que é obrigatório retornar um Widget dentro dele?

O que quer dizer Stateless?

Quando usamos StatefulWidget?

Por que ThemeData recebe um parâmetro nomeado? O que aconteceria se fosse posicional?

🧰 Sugestão de exercício complementar
Modifique o texto da tela inicial para mostrar uma Column com dois Text, uma Icon e um botão.

Isso já prepara a base para objetos aninhados e composição de interface.
---


