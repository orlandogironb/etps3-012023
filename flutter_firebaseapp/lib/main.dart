import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebaseapp/pantallas/add_usuario.dart';
import 'package:flutter_firebaseapp/pantallas/firebaseapp.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const FireBaseMain());
}

class FireBaseMain extends StatelessWidget {
  const FireBaseMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FirbaseCRUD',
      initialRoute: '/',
      routes: {
        '/':(context) => const FireBaseAPP(),
        '/add':(context) => const AddUser(),
      },
    );
  }
}
