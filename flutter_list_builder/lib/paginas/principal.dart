import 'package:flutter/material.dart';
import 'package:flutter_list_builder/figuras/square.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    final List _post = ['pantalla1', 'pantalla2', 'pantalla3', 'pantalla4'];
    return Scaffold(
      body: ListView(
        //padre
        //physics: NeverScrollableScrollPhysics(),
        children: [
          //hijos
          /* esto lo cambiamos en la clase square
          Padding(
            padding: EdgeInsets.all(8.0), //primer hijo
            child: Container(
              height: 200,
              color: Colors.amberAccent[200],
            ), //hijo
          ),
          Padding(
            padding: EdgeInsets.all(8.0), //segundo hijo
            child: Container(
              height: 200,
              color: Colors.blueGrey[200],
            ), //hijo segundo
          ),
          Padding(
            padding: EdgeInsets.all(8.0), //tercer hijo
            child: Container(
              height: 200,
              color: Colors.blueAccent[200],
            ), //hijo tercer
          ),
          Padding(
            padding: EdgeInsets.all(8.0), //tercer hijo
            child: Container(
              height: 200,
              color: Colors.cyanAccent[200],
            ), //hijo tercer
          )*/

          Mifigura(),
          Mifigura(),
          Mifigura(),
          Mifigura(),
        ],
      ),
    );
  }
}
