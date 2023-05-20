import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebaseflutter/models/producto.dart';
import 'package:flutter/material.dart';

class FirestoreServices {
  FirebaseFirestore _db = FirebaseFirestore.instance;
  Future<void> guardarProducto(Producto producto) async {
    return _db.collection('productos').doc(producto.id).set(producto.toMap());
  }

  Stream<List<Producto>> getProductos() {
    return _db.collection('productos').snapshots().map((snapshot) => snapshot
        .docs
        .map((documento) => Producto.fromFirestore(documento.data()))
        .toList());
  }
}
