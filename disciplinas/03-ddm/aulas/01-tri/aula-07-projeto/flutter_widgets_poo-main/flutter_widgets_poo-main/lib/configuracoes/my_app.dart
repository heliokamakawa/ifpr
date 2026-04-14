import 'package:flutter/material.dart';
import 'package:flutter_poo_widgets/configuracoes/rotas.dart';
import 'package:flutter_poo_widgets/widgets/form_cidade.dart';
import 'package:flutter_poo_widgets/widgets/form_estado.dart';
import 'package:flutter_poo_widgets/widgets/principal.dart';

// Classe de configuracao geral da aplicacao.
// Aqui definimos o widget raiz, tema, titulo e rotas.
// A ideia didatica e perceber que MaterialApp tambem e um objeto,
// criado por meio de construtor com parametros nomeados.
class MyApp extends StatelessWidget {
  // Construtor constante:
  // cria objetos imutaveis quando isso for possivel.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        Rotas.home: (context) => const Principal(),
        Rotas.formEstado: (context) => FormEstado(),
        Rotas.formCidade: (context) => FormCidade(),
      },
    );
  }
}
