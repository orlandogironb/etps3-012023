import 'package:flutter/material.dart';

void main() {
  runApp(Contenedores());
}

class Contenedores extends StatelessWidget {
  //No cambia en su ejecucion
  const Contenedores({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContainesF(),
    );
  }
}

class ContainesF extends StatefulWidget {
  //cambia de estado en su ejecucion
  const ContainesF({super.key});

  @override
  State<ContainesF> createState() => _ContainesFState();
}

class _ContainesFState extends State<ContainesF> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.deepPurple,
      body: Column(
        children: [
          Container(
            //padding: EdgeInsets.all(50),
            // alignment: Alignment(0.9, 0.2),
            height: 100,
            //width: 200,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              //color: Colors.blueAccent,
              //border: Border.all(color: Colors.black, width: 10),
              //shape: BoxShape.circle
              // borderRadius: BorderRadius.circular(15)),
              borderRadius: BorderRadius.circular(5),
              // child: Text("Recuadro", style: TextStyle(fontSize: 20)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade500,
                    offset: Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(-4.0, -4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              //padding: EdgeInsets.all(50),
              // alignment: Alignment(0.9, 0.2),
              // height: 100,
              //width: 200,
              decoration: BoxDecoration(
                color: Colors.pink,
                //color: Colors.blueAccent,
                //border: Border.all(color: Colors.black, width: 10),
                //shape: BoxShape.circle
                // borderRadius: BorderRadius.circular(15)),
                //borderRadius: BorderRadius.circular(5),
                // child: Text("Recuadro", style: TextStyle(fontSize: 20)),
                /*boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade500,
                      offset: Offset(4.0, 4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0),
                  BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0),
                ],*/
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              //height: 100,
              decoration: BoxDecoration(
                color: Colors.yellow,
                //borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
