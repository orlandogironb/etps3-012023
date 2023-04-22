import 'package:flutter/material.dart';
import 'package:flutter_donas_app/page/principal.dart';

void main() {
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Principal(),
      theme: ThemeData(primarySwatch: Colors.orange),
    );
  }
}
