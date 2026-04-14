import 'package:flutter/material.dart';
import 'package:flutter_poo_widgets/configuracoes/rotas.dart';

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Principal'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, Rotas.formEstado);
            },
            child: const Text('Form Estado'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, Rotas.formCidade);
            },
            child: const Text('Form Cidade'),
          ),
        ],
      ),
    );
  }
}
