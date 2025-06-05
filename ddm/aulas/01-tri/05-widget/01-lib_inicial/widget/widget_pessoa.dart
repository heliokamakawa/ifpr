import 'package:flutter/material.dart';

class WidgetPessoa extends StatelessWidget{
  const WidgetPessoa({key}) : super(key: key);
  @override 
  Widget build(BuildContext context){
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
                hintText: 'Insira o nome da pessoa',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Sobrenome',
                hintText: 'Insira o sobrenome da pessoa',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Telefone',
                hintText: 'Insira o telefone da pessoa',
              ),
            ),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: 'Cidade'),
              items: const [
                DropdownMenuItem(value: '1', child: Text('Paranavaí')),
                DropdownMenuItem(value: '2', child: Text('SÃO PAULO')),
                DropdownMenuItem(value: '3', child: Text('Naviraí')),
              ],
              onChanged: (value) {
              },
            ),
            ElevatedButton(
              child: const Text('Salvar'),
              onPressed: () {
              },
            ),
          ],
        ),
      ),
    );
  }
}