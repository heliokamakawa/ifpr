import 'package:flutter/material.dart';

class WidgetEstado extends StatelessWidget{
  const WidgetEstado({key}) : super(key: key);
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
                hintText: 'Insira o nome do estado'
              ),
            ),
            
            TextFormField(
              decoration: const InputDecoration( 
                labelText: 'Sigla',
                hintText: 'Insira a sigla do estado - 2 letras'
              ),
            ),
            ElevatedButton(  
              child: const Text('Salvar'),
              onPressed: (){
                Navigator.pop(context);
              },
            )
          ],
        ),
      )
    );
  }
}