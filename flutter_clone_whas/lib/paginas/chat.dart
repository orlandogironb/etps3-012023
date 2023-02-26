import 'package:flutter/material.dart';
import 'package:flutter_clone_whas/temas/colores.dart';

class ChatPagina extends StatefulWidget {
  const ChatPagina({super.key});

  @override
  State<ChatPagina> createState() => _ChatPaginaState();
}

class _ChatPaginaState extends State<ChatPagina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      backgroundColor: bgColor,
      leading: IconButton(
        onPressed: null,
        icon: Text("Editar",
            style: TextStyle(
                fontSize: 16, color: primary, fontWeight: FontWeight.w500)),
      ),
      actions: [
        IconButton(
          onPressed: null,
          icon: Icon(
            Icons.edit,
            color: primary,
          ),
        )
      ],
    );
  }

  Widget getBody() {
    return ListView();
  }
}
