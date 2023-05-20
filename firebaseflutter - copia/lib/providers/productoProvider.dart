import 'package:firebaseflutter/models/producto.dart';
import 'package:firebaseflutter/services/firestore_service.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class ProductosProvider with ChangeNotifier {
  final firestoreServices = FirestoreServices();
  late String _nombre;
  late double _precio;
  late String _id;
  var uuid = Uuid();

//get
  String get nombre => _nombre;
  double get precio => _precio;

//set
  cambioNombre(String valorNombre) {
    _nombre = valorNombre;
    notifyListeners();
  }

  cambioPrecio(String valorPrecio) {
    _precio = double.parse(valorPrecio);
    notifyListeners();
  }

  guardarProducto() {
    //print("$nombre,$precio");
    var nuevoProducto = Producto(id: uuid.v4(), precio: precio, nombre: nombre);
    firestoreServices.guardarProducto(nuevoProducto);
  }
}
