import 'package:flutter/material.dart';
import 'package:flutter_firebaseapp/services/firebase.dart';

class UpdateUser extends StatefulWidget {
  const UpdateUser({super.key});

  @override
  State<UpdateUser> createState() => _UpdateUserState();
}

class _UpdateUserState extends State<UpdateUser> {
  TextEditingController usuariosController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    final Map argumento = ModalRoute.of(context)!.settings.arguments as Map;
    //pendiente el pushname y envio de info al update
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Update Usuario"),
      ),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          children: [
            Center(
              child: const Text(
                'pagina modificar usuario',
                style: TextStyle(fontSize: 24),
              ),
            ),
            TextField(
              controller: usuariosController,
              decoration: InputDecoration(hintText: 'Ingrese la modificacion'),
            ),
            ElevatedButton(
                onPressed: () async {
                  //print(usuariosController.text);
                  await agregarUsuario(usuariosController.text).then((_) {
                    Navigator.pop(context);
                  });
                  //   Navigator.pop(context);
                },
                child: Text("Actualizar"))
          ],
        ),
      ),
    );
  }
}
