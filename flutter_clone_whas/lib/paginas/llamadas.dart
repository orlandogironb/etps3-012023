import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clone_whas/json/chat_json.dart';
import 'package:flutter_clone_whas/temas/colores.dart';
import 'package:line_icons/line_icons.dart';

class Llamadas extends StatefulWidget {
  const Llamadas({super.key});

  @override
  State<Llamadas> createState() => _LlamadasState();
}

class _LlamadasState extends State<Llamadas> {
  int MenuActivo = 0;
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
      centerTitle: true,
      leading: IconButton(
        icon: Text(
          "Editar",
          style: TextStyle(
              fontSize: 14, color: primary, fontWeight: FontWeight.w500),
        ),
        onPressed: null,
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.call,
            color: primary,
          ),
          onPressed: null,
        )
      ],
      title: Container(
          width: 155,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: white.withOpacity(0.05)),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      MenuActivo = 0;
                    });
                  },
                  child: Container(
                    width: 75,
                    height: 28,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: MenuActivo == 0
                            ? white.withOpacity(0.3)
                            : Colors.transparent),
                    child: Center(
                      child: Text(
                        "Todas",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      MenuActivo = 1;
                    });
                  },
                  child: Container(
                    width: 75,
                    height: 28,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: MenuActivo == 1
                            ? white.withOpacity(0.3)
                            : Colors.transparent),
                    child: Center(
                      child: Text(
                        "Perdidas",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  Widget getBody() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Text(
                "Llamadas",
                style: TextStyle(
                    fontSize: 23, color: white, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 38,
                decoration: BoxDecoration(
                  color: textfieldColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  style: TextStyle(color: white),
                  cursorColor: primary,
                  decoration: InputDecoration(
                      prefixIcon:
                          Icon(LineIcons.search, color: white.withOpacity(0.3)),
                      border: InputBorder.none,
                      hintText: "Busqueda",
                      hintStyle: TextStyle(
                          color: white.withOpacity(0.3), fontSize: 17)),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.green),
                    child: Container(
                      child: Center(
                        child: Icon(
                          LineIcons.link,
                          color: white,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "Crear enlace de llamada",
                          style: TextStyle(fontSize: 14, color: white),
                        ),
                        Text(
                          "Comparte un enlace para tu llamada de WhatsApp",
                          style: TextStyle(fontSize: 11, color: white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withOpacity(0.1)),
                        child: Container(
                          child: Center(
                            child: Icon(
                              LineIcons.video,
                              color: primary,
                              size: 25,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Video llamada",
                          style: TextStyle(fontSize: 14, color: white),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5, right: 5, left: 5),
                        child: Divider(color: white.withOpacity(0.3)),
                      ),
                      MenuActivo == 0 ? getLlamadas() : getLlamadasPerdidas()
                    ],
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Widget getLlamadas() {
    var tamanio = MediaQuery.of(context).size;
    return Column(
      children: List.generate(chat_data.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: FadeInDown(
            duration: Duration(milliseconds: 100 * index),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      // width: (tamanio.width - 30) * 0.4,
                      child: Row(children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(chat_data[index]['img']),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          // width: (tamanio.width - 100) * 0.4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                chat_data[index]['name'],
                                style: TextStyle(
                                    fontSize: 16,
                                    color: white,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.call,
                                    color: white.withOpacity(0.5),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "Llamada entrante",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: white.withOpacity(0.5),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ]),
                    ),
                    Container(
                      width: 150,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              chat_data[index]['date'],
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: white.withOpacity(0.5)),
                            ),
                            Icon(
                              Icons.info_outline,
                              color: primario,
                            )
                          ]),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 55),
                  child: Divider(
                    color: white.withOpacity(0.3),
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget getLlamadasPerdidas() {
    return Container();
  }
}
