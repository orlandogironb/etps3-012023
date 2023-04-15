import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_appirest/modelo/gifgiphy.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const AppiRestFlutter());
}

class AppiRestFlutter extends StatefulWidget {
  const AppiRestFlutter({super.key});

  @override
  State<AppiRestFlutter> createState() => _AppiRestFlutterState();
}

class _AppiRestFlutterState extends State<AppiRestFlutter> {
  late Future<List<Gifgiphy>> _listadogiphy;

  Future<List<Gifgiphy>> _getgiphy() async {
    final response = await http.get(Uri.parse(
        "https://api.giphy.com/v1/gifs/trending?api_key=oiLEORXAK9q6XELJg2mOC5P8dHj08Noc&limit=25&rating=g"));

    List<Gifgiphy> gif = [];
    if (response.statusCode == 200) {
      String bodys = utf8.decode(response.bodyBytes);
      //print(bodys);

      final jsonData = jsonDecode(bodys);
      // print(jsonData["data"][0]["username"]);
      for (var item in jsonData["data"]) {
        gif.add(Gifgiphy(item["title"], item["images"]["downsized"]["url"]));
      }
      return gif;
    } else {
      throw Exception("Falla en conectarse");
    }
  }

  @override
  void initState() {
    super.initState();
    _listadogiphy = _getgiphy();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Api Rest",
      home: Scaffold(
          appBar: AppBar(
            title: Text("Api Flutter"),
          ),
          body: FutureBuilder(
            future: _listadogiphy,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                // print(snapshot.data);
                return GridView.count(
                  crossAxisCount: 2,
                  children: _listadogiphys(snapshot.requireData),
                );
              } else if (snapshot.hasError) {
                print(snapshot.error);
                return Text("Soy error");
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          )),
    );
  }

  List<Widget> _listadogiphys(List<Gifgiphy> data) {
    List<Widget> gifs = [];
    for (var gif in data) {
      gifs.add(Card(
          child: Column(
        children: [
          Expanded(
            child: Image.network(
              gif.url,
              fit: BoxFit.fill,
            ),
          ),
          /*    Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(gif.nombre),
          ),*/
        ],
      )));
    }
    return gifs;
  }
}
