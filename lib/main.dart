import 'package:flutter/material.dart';
import 'paginaEntrada.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        accentColor: Colors.yellow,
      ),
      home:PaginaEntrada() ,
    );
  }
}