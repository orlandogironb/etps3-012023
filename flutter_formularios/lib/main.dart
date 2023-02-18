import 'package:flutter/material.dart';
import 'package:flutter_formularios/paginas/principal.dart';

void main() {
  runApp(const Inicial());
}

class Inicial extends StatelessWidget {
  const Inicial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplicacion Fomulario',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Formulario'),
        ),
        body: Principal(),
      ),
    );
  }
}
