import 'package:flutter/material.dart';

class Mensajes extends StatelessWidget {
  const Mensajes({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Text(
      'Mensajes',
      style: TextStyle(fontSize: 30), //estilo de fuente y tamaño,color
    ),
    );
  }
}