import 'package:flutter/material.dart';
import 'package:flutter_clone_whas/json/chat_json.dart';
import 'package:flutter_clone_whas/temas/colores.dart';
import 'package:line_icons/line_icons.dart';

import 'burbujasChat.dart';

class ChatDetalle extends StatefulWidget {
  final String name;
  final String img;
  final String uconex;

  const ChatDetalle(
      {super.key, required this.name, required this.img, required this.uconex});

  @override
  State<ChatDetalle> createState() => _ChatDetalleState();
}

class _ChatDetalleState extends State<ChatDetalle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: getAppBar(),
      bottomSheet: getBottomSheet(),
      body: getBody(),
    );
  }

  PreferredSizeWidget getAppBar() {
    return AppBar(
      backgroundColor: greyColor,
      title: Container(
        child: Row(children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(widget.img), fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.uconex,
                style: TextStyle(fontSize: 12, color: white.withOpacity(0.4)),
              )
            ],
          )
        ]),
      ),
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_circle_left,
          color: primary,
          size: 27,
        ),
      ),
      actions: [
        Icon(LineIcons.video, color: primary, size: 27),
        SizedBox(
          width: 15,
        ),
        Icon(LineIcons.phone, color: primary, size: 27),
        SizedBox(
          width: 15,
        ),
      ],
    );
  }

  Widget getBottomSheet() {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 80,
      decoration: BoxDecoration(color: greyColor),
      child: Padding(
        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Row(
          children: [
            Icon(
              Icons.add,
              color: primary,
              size: 28,
            ),
            Container(
                width: size.width * 0.6,
                height: 42,
                decoration: BoxDecoration(
                    color: white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: TextField(
                    style: TextStyle(color: white),
                    cursorColor: primary,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "",
                        suffixIcon: Icon(
                          LineIcons.stickyNote,
                          color: primary,
                          size: 25,
                        )),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, top: 3.0),
              child: Icon(
                LineIcons.camera,
                color: white,
                size: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, top: 3.0),
              child: Icon(
                LineIcons.microphone,
                color: white,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getBody() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg_chat.png"),
              fit: BoxFit.cover)),
      child: ListView(
          padding: EdgeInsets.only(top: 20, bottom: 80),
          children: List.generate(mensajes.length, (index) {
            return BurbujasChat(
              message: mensajes[index]['message'],
              isMe: mensajes[index]['isMe'],
              isLast: mensajes[index]['isLast'],
              time: mensajes[index]['time'],
            );
          })),
    );
  }
}
