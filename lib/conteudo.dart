import 'package:flutter/material.dart';

import 'constants.dart';

class Conteudo extends StatelessWidget {
  final IconData iconeGenero;
  final String genero;
  Conteudo({this.iconeGenero, this.genero});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Icon(iconeGenero, size: 72.0),
        ),
        SizedBox(
          height: 30.0,
        ),
        Text(
          genero,
          style: TextStyle(fontSize: 18.0, color:corfontArea),
        ),
      ],
    );
  }
}