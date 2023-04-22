import 'package:flutter/material.dart';

class NombreDona extends StatelessWidget {
  final String saborDona;
  final String precioDona;
  final colorDona;
  final String imagenDona;

  final double boderRadius = 12;

  const NombreDona(
      {super.key,
      required this.saborDona,
      required this.precioDona,
      required this.colorDona,
      required this.imagenDona});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: colorDona[50],
            borderRadius: BorderRadius.circular(boderRadius)),
        child: Column(
          children: [
            //precios
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: colorDona[100],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(boderRadius),
                          topRight: Radius.circular(boderRadius))),
                  padding: EdgeInsets.all(12),
                  child: Text(
                    '\$$precioDona',
                    style: TextStyle(
                        color: colorDona[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                )
              ],
            ),
            //imagen dona
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 10),
              child: Image.asset(imagenDona),
            ),
            //sabor  dona
            Text(
              saborDona,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),

            SizedBox(
              height: 4,
            ),

            Text(
              'Dunkins',
              style: TextStyle(color: Colors.grey[600]),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //like icono favorite
                  Icon(
                    Icons.favorite,
                    color: Colors.red[400],
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.grey[800],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
