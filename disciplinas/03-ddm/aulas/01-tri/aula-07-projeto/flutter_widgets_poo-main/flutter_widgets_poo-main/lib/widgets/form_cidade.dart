import 'package:flutter/material.dart';

class FormCidade extends StatelessWidget{

  @override
  Widget build(BuildContext context){ 
    return Scaffold(
      appBar: AppBar(
        title: Text('Cidade'),
        backgroundColor: Colors.blue,
      ),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                label: Text('Nome:'),
                hintText: 'Nome da cidade',
              ),
            ),
            DropdownButton<String>(
              items: [
                  DropdownMenuItem(child: Text('Paraná'), value: 'PR'),
                  DropdownMenuItem(child: Text('Mato Grosso'), value: 'MT'),
                  DropdownMenuItem(child: Text('São Paulo'), value: 'SP'),
              ],
              onChanged: (value) {},
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