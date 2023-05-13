import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_firebaseapp/services/firebase.dart';

class FireBaseAPP extends StatefulWidget {
  const FireBaseAPP({super.key});

  @override
  State<FireBaseAPP> createState() => _FireBaseAPPState();
}

class _FireBaseAPPState extends State<FireBaseAPP> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'CRUD Firebase',
        home: Scaffold(
          appBar: AppBar(
            title: Text('FIREBASE'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: FutureBuilder(
              future: getUsuarios(),
              builder: ((context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data?.length,
                      itemBuilder: ((context, index) {
                        //return Text(snapshot.data?[index]['nombre']);
                        return Dismissible(
                          key:Key(snapshot.data?[index]['uid']),//UniqueKey(),
                          child: ListTile(
                            title: Text(snapshot.data?[index]['nombre']),
                            /* onTap: (() async {
                              print(Text(snapshot.data?[index]['nombre']));
                              print(context);
                              Navigator.pushNamed(context, '/edit',
                                  arguments:/* {
                                    "nombre":snapshot.data?[index]['nombre']
                                  }*/
                                 // ArgumentoEditar()
                                  );
                            }),*/
                        
                            onTap: (() async {
                              await Navigator.pushNamed(context, '/edit',
                                  arguments: {
                                    'nombre':snapshot.data?[index]['nombre'],
                                    'uid':snapshot.data?[index]['uid']
                                  });
                                  setState(() {
                                    
                                  });
                            }),
                          ),
                        );
                        //print("datos");
                      }));
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              }),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              await Navigator.pushNamed(context, '/add');
              setState(() {});
              //print("Actualizar");
            },
            child: Icon(Icons.add),
          ),
        ));
  }
}
