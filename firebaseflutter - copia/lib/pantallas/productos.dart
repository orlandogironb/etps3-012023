import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebaseflutter/models/producto.dart';
import '../providers/productoProvider.dart';
import 'editar.dart';

class Productos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productosP = Provider.of<List<Producto>>(context).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text("Productos"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add,
              size: 30,
            ),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => EditarProductos()));
            },
          )
        ],
      ),
      body: StreamBuilder<List<Productos>>(builder: (context, snapshot) {
        return ListView.builder(
            itemCount: snapshot.data?.length,
            itemBuilder: ((context, index) {
              return ListTile(
                  title: Text(productosP[index].nombre.toString()),
                  trailing: Text(productosP[index].precio.toString()));
            }));
      }),
      //(productos != null) ? Text("Distinto") : Text("Nulo")
      //Text("Prueba"),
      // );
      /* (productos != null)
                ? ListView.builder(
                    itemCount: productos.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(productos[index].nombre),
                        trailing: Text(productos[index].precio.toString()),
                        /* onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => EditarProductos()));
                    },*/
                      );
                    })
                : Center(child: CircularProgressIndicator())*/
    );
  }
}
