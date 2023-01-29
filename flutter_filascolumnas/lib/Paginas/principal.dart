import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(height: 50, width: 50, color: Colors.indigoAccent),
          Container(
              height: 50, width: 50, color: Color.fromARGB(255, 117, 238, 12)),
          Container(
              height: 50, width: 50, color: Color.fromARGB(255, 238, 131, 9)),
        ],
      ),
    );
  }
}
