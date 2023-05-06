import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore baseD = FirebaseFirestore.instance;
Future<List> getUsuarios() async {
  List usuarios = [];
  CollectionReference collectionReferenceUsuarios =
      baseD.collection('usuarios');
  QuerySnapshot queryUsuarios = await collectionReferenceUsuarios.get();
  queryUsuarios.docs.forEach((documento) {
    usuarios.add(documento.data());
  });

  return usuarios;
}
//guardar usuario
Future<void> agregarUsuario(String usuario) async {
  await baseD.collection('usuarios').add({"nombre": usuario});
}

/**
 * usuario:[{
 * nombre:"Tomas"
 * },
 * {
 * nombre:"Luis"
 * },
 * {
 * nombre:"Maria"
 * }
 * ]
 * 
 */