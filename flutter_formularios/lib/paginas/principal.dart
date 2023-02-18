import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Image.network(
        // "https://static.wikia.nocookie.net/logopedia/images/8/85/UTEC_El_Salvador_Seal.png"), //imagen externa
        SizedBox(
          height: 10,
        ), //espacio

        Text("Formulario"), // caja de texto o label
        //imgen interna
        _imagen(),
        _nombreinput(),
        SizedBox(
          height: 10,
        ), //espa
        _passwordinput()
        //["","","0",.....n]
      ],
    );
  }

  Container _imagen() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 60, vertical: 60),
        child: Image.asset("assets/flutter.png"));
  }

  Container _nombreinput() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
              icon: Icon(Icons.abc, color: Colors.grey),
              hintText: 'Nombre',
              labelText: 'Nombres',
              border: InputBorder.none),
        )); //caja de texto
  }

  Container _passwordinput() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
              icon: Icon(Icons.password, color: Colors.grey),
              hintText: 'Password',
              labelText: 'Password',
              border: InputBorder.none),
          obscureText: true,
        )); //caja de texto
  }
}
