import 'package:flutter/material.dart';
import 'package:flutter_filascolumnas/Paginas/principal.dart';

void main() {
  runApp(RowCols());
}

class RowCols extends StatelessWidget {
  const RowCols({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Filas y Columnas',
      home: Principal(),
    );
  }
}
