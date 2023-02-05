import 'package:flutter/material.dart';

class Mifigura extends StatelessWidget {
  final child;

  Mifigura({required this.child});

  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0), //primer hijo
          child: Container(
            height: 700,
            color: Colors.amberAccent[200],
            child: Center(
                child: Text(
              child,
              style: TextStyle(fontSize: 40),
            )),
          ), //hijo
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0), //primer hijo
          child: Container(
              height: 700,
              child: Image.network(
                  "https://png.pngtree.com/thumb_back/fh260/background/20200731/pngtree-blue-carbon-background-with-sport-style-and-golden-light-image_371487.jpg")), //hijo
        ),
      ],
    );
  }
}
