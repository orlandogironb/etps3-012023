import 'package:flutter/material.dart';
import 'package:flutter_donas_app/util/nombredona.dart';

class DonutTab extends StatelessWidget {
  List donasVentas = [
    //[tipodedona,preciodona,colordona,imagenDona
    ["Sorbete", "1.5", Colors.blue, "assets/img/sorbete_dona.png"],
    ["Fresa", "1.25", Colors.red, "assets/img/fresa_dona.png"],
    ["Chocolate", "1.25", Colors.purple, "assets/img/choco_dona.png"],
    ["Cereza", "1.25", Colors.brown, "assets/img/cere_dona.png"],
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donasVentas.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.5),
      itemBuilder: (context, index) {
        return NombreDona(
          saborDona: donasVentas[index][0],
          precioDona: donasVentas[index][1],
          colorDona: donasVentas[index][2],
          imagenDona: donasVentas[index][3],
        );
      },
    );
  }
}
