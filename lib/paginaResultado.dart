import 'package:BMI_CALCULATOR/calculo.dart';
import 'package:BMI_CALCULATOR/resultado.dart';
import 'package:BMI_CALCULATOR/sliderAltura.dart';
import 'package:flutter/material.dart';
import 'area.dart';
import 'constants.dart';

class PaginaResultado extends StatelessWidget {
  final String atributo1;
  final String atributo2;
  final String atributo3;
  final String atributo4;

  const PaginaResultado(
      {this.atributo1, this.atributo2, this.atributo3, this.atributo4});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Calculadora do IMC'),
        ),
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.zero,
                child: Column(children: <Widget>[
                  Container(
                    child: Text(
                      "Seu Resultado",
                      style: TextStyle(
                          fontSize: 50.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                      child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Area(
                            cor: corArea,
                            areaChild: Resultado(
                              imc: atributo1,
                              conceito: atributo2,
                              faixa: atributo3,
                              orientacao: atributo4,
                            )),
                      )
                    ],
                  )),
                  SafeArea(
                      child: Container(
                        color: corBotao,
                          margin: EdgeInsets.only(top: 10.0),
                          width: double.infinity,
                          height: 80.0,
                          child: RaisedButton(
                            color: corBotao,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "RE CALCULAR SEU IMC",
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )))
                ]))));
  }
}
