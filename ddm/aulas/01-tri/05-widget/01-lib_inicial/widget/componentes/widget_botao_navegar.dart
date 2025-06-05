import 'package:flutter/material.dart';

class WidgetBotaoNavegar extends StatelessWidget {
  final String rotulo; 
  final String rota;
  final BuildContext context;

  const WidgetBotaoNavegar({key, required this.rota,required this.rotulo,required this.context}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    return ElevatedButton(  
      child: Text(rotulo),
      onPressed: (){
        Navigator.of(context).pushNamed(rota);
      },
    );
  }
}