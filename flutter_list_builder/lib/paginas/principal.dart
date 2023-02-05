import 'package:flutter/material.dart';
import 'package:flutter_list_builder/figuras/circulos.dart';
import 'package:flutter_list_builder/figuras/square.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    final List _post = ['pantalla 1', 'pantalla 2', 'pantalla 3', 'pantalla 4'];
    final List _historias = [
      'historia 1',
      'historia 2',
      'historia 3',
      'historia 4',
      'historia 5'
    ];
    return Scaffold(
      body: Column(
        children: [
          //instagram historias
          Container(
            height: 150,
            child: ListView.builder(
                itemCount: _historias.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return MisCirculos();
                }),
          ),

          //instagram post

          Expanded(
            // height: 300,
            child: ListView.builder(
                itemCount: _post.length,
                itemBuilder: (context, index) {
                  return Mifigura(child: _post[index]);
                }),
          ),
        ],
      ),

      /* se conviete  en builder ListView(
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
      ), fin de list view*/
    );
  }
}
