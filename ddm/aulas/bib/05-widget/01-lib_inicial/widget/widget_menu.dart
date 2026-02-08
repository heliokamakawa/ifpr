import 'package:flutter/material.dart';
import 'package:widget_intro/configuracao/rotas.dart';

class WidgetMenu extends StatelessWidget {
  const WidgetMenu({super.key});

  @override
  Widget build(BuildContext context) {
    Widget criarMenu({required IconData icone,required String rotulo,required String rota}){
      return ListTile(
        leading: Icon(icone),
        title: Text(rotulo),
        onTap: () => Navigator.pushNamed(context, rota),
      );
    }
    return Scaffold(
      appBar: AppBar(title: const Text('Menu Principal')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            criarMenu(icone: Icons.map, rotulo: 'Cadastro de Estado', rota: Rotas.estado),
            criarMenu(icone: Icons.location_city, rotulo: 'Cadastro de Cidade', rota: Rotas.cidade),
            criarMenu(icone: Icons.person, rotulo: 'Cadastro de Pessoa', rota: Rotas.pessoa),
          ],
        ),
      ),
      body: const Center(
        child: Text('Bem-vindo ao App de Cadastro!'),
      ),
    );
  }
}
