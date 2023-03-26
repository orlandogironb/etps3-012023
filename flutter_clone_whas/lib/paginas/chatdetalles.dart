import 'package:flutter/material.dart';
import 'package:flutter_clone_whas/temas/colores.dart';
import 'package:line_icons/line_icons.dart';

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

  Widget gettChatBox() {
    return Container();
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
            )
          ],
        ),
      ),
    );
  }
}
