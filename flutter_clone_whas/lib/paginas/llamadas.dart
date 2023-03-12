import 'package:flutter/material.dart';
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
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: Column(
                      children: [
                        Text(
                          "Crear enlace de llamada",
                          style: TextStyle(fontSize: 14, color: white),
                        ),
                        Text(
                          "Comparte un enlace para tu llamada de WhatsApp",
                          style: TextStyle(fontSize: 14, color: white),
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
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
