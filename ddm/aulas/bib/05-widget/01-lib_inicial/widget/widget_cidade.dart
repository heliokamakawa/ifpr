import 'package:flutter/material.dart';

class WidgetCidade extends StatelessWidget{
  const WidgetCidade({key}) : super(key: key);
  @override 
  Widget build(BuildContext context){
    String? valorSelecionado;
    return Scaffold(
      appBar: AppBar( 
        title: const Text('Cadastro da Cidade'),
      ),
      body: Form(  
        child: Column(   
          children: [
            TextFormField(
              decoration: const InputDecoration( 
                labelText: 'Nome',
                hintText: 'Insira o nome da cidade'
              ),
            ),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: 'Cidade'),
              items: const [
                DropdownMenuItem(value: '1', child: Text('PARANÁ')),
                DropdownMenuItem(value: '2', child: Text('SÃO PAULO')),
                DropdownMenuItem(value: '3', child: Text('SANTA CATARINA'))
              ], 
              onChanged: (value){ 
                valorSelecionado = value;
                print(value);
              }
            ),
            ElevatedButton(  
              child: const Text('Salvar'),
              onPressed: (){
                print('salvar estado');
              },
            )
          ],
        ),
      )
    );
  }
}