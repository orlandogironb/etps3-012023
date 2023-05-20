import 'package:firebaseflutter/pantallas/Principal.dart';
import 'package:firebaseflutter/pantallas/productos.dart';
import 'package:firebaseflutter/providers/productoProvider.dart';
import 'package:firebaseflutter/services/firestore_service.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FirebaseAPP());
}

class FirebaseAPP extends StatelessWidget {
  const FirebaseAPP({super.key});

  @override //ChangeNotifierProvider
  Widget build(BuildContext context) {
    final fireStoreService = FirestoreServices();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProductosProvider(),
        ),

        //07/11/2022
        StreamProvider(
          initialData: Productos(),
          create: (context) => fireStoreService.getProductos(),
        ),
      ],
      child:
          MaterialApp(title: 'Alamacenamiento', home: Productos() //Principal(),
              ),
    );
  }
}
