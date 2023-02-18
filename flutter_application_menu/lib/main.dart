import 'package:flutter/material.dart';
import 'package:flutter_application_menu/pantallas/principal.dart'; //importar libreria de principal

void main() {
  runApp(FlutterMenu());
}

class FlutterMenu extends StatelessWidget {
  const FlutterMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //--desactivar el banner de debug
      home: Principal(), //-- llamar a la clase principal o instanciar
    );
  }
}
