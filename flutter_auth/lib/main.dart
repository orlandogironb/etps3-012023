import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_auth/helper/helper.dart';
import 'package:flutter_auth/page/auth/login.dart';
import 'package:flutter_auth/page/principal.dart';
import 'package:flutter_auth/utils/constantes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    //si es web

    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: Constantes.apiKey,
            appId: Constantes.appId,
            messagingSenderId: Constantes.messagingSenderId,
            projectId: Constantes.projectId));
  } else {
    await Firebase.initializeApp();
    //es movil
  }

  runApp(const ChatFirebase());
}

class ChatFirebase extends StatefulWidget {
  const ChatFirebase({super.key});

  @override
  State<ChatFirebase> createState() => _ChatFirebaseState();
}

class _ChatFirebaseState extends State<ChatFirebase> {
  bool _isSingnedIn = false;
  @override
  void initState() {
    super.initState();
    getUserLoggedInStatus();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Constantes().primaryColor,
      scaffoldBackgroundColor: Colors.white
      ),
      debugShowCheckedModeBanner: false,
      home: _isSingnedIn ? const Principal() : const Login(),
    );
  }

  getUserLoggedInStatus() async {
    await Helper_funciones.getUserLoggedInStatus().then((value) {
      if (value != null) {
        _isSingnedIn = value;
      }
    });
  }
}
