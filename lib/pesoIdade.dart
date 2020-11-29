import 'package:BMI_CALCULATOR/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

int peso1 =70, idade1=19;

class PesoIdade extends StatefulWidget {
  final String tipo;
  final int valor;

  PesoIdade({this.tipo, this.valor});
  @override
  State<StatefulWidget> createState() => _PesoIdade(tipo, valor);
}

class _PesoIdade extends State<PesoIdade> {
  final String _tipo;
  int _valor;
  _PesoIdade(this._tipo, this._valor);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text(
              _tipo,
              style: TextStyle(fontSize: 18.0, color: corfontArea),
            )
          ],
        ),
        Text(
          _valor.toString(),
          style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900),
        ),
        botoes()
      ],
    );
  }

  Row botoes() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: <Widget>[botaoMenos(), botaoMais()],
    );
  }

  botaoMenos() {
    return RawMaterialButton(
        child: Icon(FontAwesomeIcons.minus),
        constraints: (BoxConstraints.tightFor(width: 56.0, height: 56.0)),
        shape: CircleBorder(),
        fillColor: Colors.transparent,
        onPressed: () {
          setState(() {
            _valor--;
          });
          verificar();
        });
  }

  botaoMais() {
    return RawMaterialButton(
        child: Icon(FontAwesomeIcons.plus),
        constraints: (BoxConstraints.tightFor(width: 56.0, height: 56.0)),
        shape: CircleBorder(),
        fillColor: Colors.transparent,
        onPressed: () {
          setState(() {
            _valor++;
            
          });
          verificar();
        });
  }

  // ignore: missing_return
 verificar() {
    if (_tipo == "PESO") {
      peso1 = _valor;
    } else {
      idade1 = _valor;
    }
  }
}
