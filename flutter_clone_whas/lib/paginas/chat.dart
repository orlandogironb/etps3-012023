import 'package:flutter/material.dart';
import 'package:flutter_clone_whas/json/chat_json.dart';
import 'package:flutter_clone_whas/paginas/chatdetalles.dart';
import 'package:flutter_clone_whas/temas/colores.dart';
import 'package:line_icons/line_icons.dart';

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

  PreferredSizeWidget getAppBar() {
    return AppBar(
      backgroundColor: bgColor,
      leading: IconButton(
          onPressed: null,
          icon: Text(
            "Chat",
            style: TextStyle(
                fontSize: 16, color: primary, fontWeight: FontWeight.w600),
          )),
      actions: [
        IconButton(
            onPressed: null,
            icon: Icon(
              Icons.edit,
              color: primary,
            ))
      ],
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return ListView(children: [
      Padding(
        padding: EdgeInsets.only(top: 15, right: 15, left: 15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Chats",
            style: TextStyle(
                fontSize: 23, color: primary, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 38,
            decoration: BoxDecoration(
                color: textfieldColor, borderRadius: BorderRadius.circular(10)),
            child: TextField(
              style: TextStyle(color: white),
              cursorColor: primary,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    LineIcons.search,
                    color: white,
                  ),
                  border: InputBorder.none,
                  hintText: "Busqueda",
                  hintStyle:
                      TextStyle(color: white.withOpacity(0.3), fontSize: 16)),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Icon(
              LineIcons.archiveFile,
              color: white,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "Archivados",
              style: TextStyle(
                  fontSize: 16, color: primary, fontWeight: FontWeight.w500),
            ),
          ]),
          Divider(
            color: white.withOpacity(0.3),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Comunidad",
                style: TextStyle(
                    fontSize: 16, color: primary, fontWeight: FontWeight.w500),
              ),
              Text(
                "Grupos",
                style: TextStyle(
                    fontSize: 16, color: primary, fontWeight: FontWeight.w500),
              ),
              Text(
                "Historial",
                style: TextStyle(
                    fontSize: 16, color: primary, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ]),
      ),
      SizedBox(
        height: 15,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
        child: Divider(
          color: white.withOpacity(0.3),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Column(
        children: List.generate(
          chat_data.length,
          (index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChatDetalle(
                        name: chat_data[index]['name'],
                        img: chat_data[index]['img'],
                        uconex: "En linea",
                      ),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(chat_data[index]['img']),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: (size.width - 40) * 0.5,
                                  child: Text(
                                    chat_data[index]['name'],
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(
                                  width: 35,
                                ),
                                Expanded(
                                    child: Text(chat_data[index]['date'],
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: white.withOpacity(0.2),
                                            fontWeight: FontWeight.w600)))
                              ],
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Container(
                                width: (size.width - 40) * 1,
                                child: Text(chat_data[index]['text'],
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: white.withOpacity(0.4),
                                        fontWeight: FontWeight.w600))),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      )
    ]);
  }
}
