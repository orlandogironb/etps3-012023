import 'package:flutter/material.dart';

class Producto {
  final String id;
  final String nombre;
  final double precio;

  Producto({required this.id, required this.nombre, required this.precio});

  Map<String, dynamic> toMap() {
    return {'id': id, 'nombre': nombre, 'precio': precio};
  }

  Producto.fromFirestore(Map<String, dynamic> firestore)
      : id = firestore['id'],
        nombre = firestore['nombre'],
        precio = firestore['precio'];
}
