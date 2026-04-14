import 'package:flutter/material.dart';

class FormEstado extends StatelessWidget{

  @override
  Widget build(BuildContext context){ 
    return Scaffold(
      appBar: AppBar(
        title: Text('FormEstado'),
        backgroundColor: Colors.blue,
      ),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                label: Text('Nome:'),
                hintText: 'Nome do estado',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                label: Text('Sigla:'),
                hintText: 'Sigla do estado',
              ),
            ),
            ElevatedButton(
              onPressed: (){
                print('teste');
              }, 
              child: Text('Enviar')
            )
          ],
        )
      ),
    );
  }
}