import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_menu/pantallas/menu/ajustes.dart';
import 'package:flutter_application_menu/pantallas/menu/configuracion.dart';
import 'package:flutter_application_menu/pantallas/menu/home.dart';
import 'package:flutter_application_menu/pantallas/menu/mensajes.dart';
import 'package:flutter_application_menu/pantallas/menu/perfil.dart';

class Principal extends StatefulWidget {
  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  int _seleccionado = 0;
  void _barraNavega(int index) {
    setState(() {
      _seleccionado = index;
    });
  }

  final List<Widget> _paginas = [
    Home(),
    Mensajes(),
    Ajustes(),
    Perfil(),
    Configuracion(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _paginas[_seleccionado],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _seleccionado,
          onTap: _barraNavega,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: 'Mensajes'),
            BottomNavigationBarItem(icon: Icon(Icons.adjust), label: 'Ajustes'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Configuracion')
          ]),
    );
  }
}
