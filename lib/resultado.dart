import 'package:flutter/material.dart';
import 'constants.dart';

class Resultado extends StatelessWidget {
  final String imc;
  final String conceito;
  final String faixa;
  final String orientacao;
  const Resultado({this.imc, this.conceito, this.faixa, this.orientacao});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        dadosResultado("$conceito", 22, corConceito),
        dadosResultado("$imc", 100, fontCor),
        Text(" Faixa de IMC nivel $conceito:",style: TextStyle(
          color:corfontArea,
          fontSize: tamanhoFont,
          ),textAlign: TextAlign.justify,
        ),
        dadosResultado("$faixa kg/m2", 22, fontCor),
        dadosResultado("$orientacao", 22, fontCor),
      ],
    );
  }

  Expanded dadosResultado(String conteudo, double fontTamanho, corFonte) {
    return Expanded(
      child: Padding(
          padding: EdgeInsets.only(top: 15),
          child: Text(
        conteudo,
        style: TextStyle(
          color: corFonte,
          fontSize: fontTamanho,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      )),
    );
  }
}
