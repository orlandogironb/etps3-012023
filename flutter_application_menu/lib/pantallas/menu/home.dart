import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Text(
      'Home',
      style: TextStyle(fontSize: 30), //estilo de fuente y tamaño,color
    ),
    );
  }
}