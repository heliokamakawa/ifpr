import 'package:flutter/material.dart';

// StatefulWidget e usado quando o widget precisa mudar na tela.
// Neste exemplo, o valor do contador muda com a interacao do usuario.
class MyHomePage extends StatefulWidget {
  // Construtor com parametro nomeado obrigatorio.
  // "title" precisa ser informado ao criar o objeto.
  const MyHomePage({super.key, required this.title});

  // Atributo que pertence ao objeto MyHomePage.
  final String title;

  @override
  // Liga o widget ao objeto de estado responsavel pelas alteracoes dinamicas.
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Atributo privado do estado.
  int _counter = 0;

  void _incrementCounter() {
    // setState avisa ao Flutter que houve mudanca
    // e que o metodo build deve ser executado novamente.
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
