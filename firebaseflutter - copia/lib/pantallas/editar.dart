import 'package:firebaseflutter/providers/productoProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EditarProductos extends StatefulWidget {
  const EditarProductos({super.key});

  @override
  State<EditarProductos> createState() => _EditarProductosState();
}

class _EditarProductosState extends State<EditarProductos> {
  var value;

  @override
  Widget build(BuildContext context) {
    final prodcProvider = Provider.of<ProductosProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Editar producto",
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(hintText: 'Nombre del producto'),
                onChanged: (value) {
                  prodcProvider.cambioNombre(value);
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(hintText: 'Precio del producto'),
                onChanged: (value) {
                  prodcProvider.cambioPrecio(value);
                },
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text("Guardar"),
                  onPressed: () {
                    prodcProvider.guardarProducto();
                    Navigator.of(context).pop();
                  }),
              RaisedButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text("Borrar"),
                  onPressed: () {})
            ],
          ),
        ));
  }
}
