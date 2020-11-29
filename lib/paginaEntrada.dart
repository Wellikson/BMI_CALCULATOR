import 'package:BMI_CALCULATOR/calculo.dart';
import 'package:BMI_CALCULATOR/paginaResultado.dart';
import 'package:BMI_CALCULATOR/pesoIdade.dart';
import 'package:BMI_CALCULATOR/sliderAltura.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'area.dart';
import 'constants.dart';
import 'conteudo.dart';

Color corAreaMasculino = corAreaInativa;
Color corAreaFeminino = corAreaInativa;
Genero generoSelecionado;
String genero1;
enum Genero {
  masculino,
  feminino,
}

class PaginaEntrada extends StatefulWidget {
  @override
  _PaginaEntrada createState() => _PaginaEntrada();
}

class _PaginaEntrada extends State<PaginaEntrada> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Calculadora de IMC'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: Area(
                      onPress: () {
                        setState(() {
                          generoSelecionado = Genero.masculino;
                          genero1 = "Masculino";
                        });
                      },
                      cor: generoSelecionado == Genero.masculino
                          ? corAreaAtiva
                          : corAreaInativa,
                      areaChild: Conteudo(
                          iconeGenero: FontAwesomeIcons.mars,
                          genero: 'Masculino')),
                ),
                Expanded(
                    child: Area(
                        onPress: () {
                          setState(() {
                            generoSelecionado = Genero.feminino;
                            genero1 = "Feminino";
                          });
                        },
                        cor: generoSelecionado == Genero.feminino
                            ? corAreaAtiva
                            : corAreaInativa,
                        areaChild: Conteudo(
                            iconeGenero: FontAwesomeIcons.venus,
                            genero: 'Feminino'))),
              ],
            )),
            Expanded(
              child: Area(cor: corAreaAtiva, areaChild: SliderAltura()),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: Area(
                      cor: corAreaAtiva,
                      areaChild: PesoIdade(
                        tipo: "PESO",
                        valor: 70,
                      )),
                ),
                Expanded(
                  child: Area(
                      cor: corAreaAtiva,
                      areaChild: PesoIdade(
                        tipo: "IDADE",
                        valor: 19,
                      )),
                ),
              ],
            )),
            SafeArea(
                child: Container(
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 55.0,
              child: RaisedButton(
                color: corBotao,
                onPressed: () {
                  Calculo calculo =  Calculo(
                    altura: altura1,
                    peso: peso1,
                    genero: genero1,
                    idade: idade1);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PaginaResultado(atributo1:calculo.calcularImc(),
                    atributo2:calculo.getconceito(),atributo3:calculo.getFaixaIMC(),atributo4: calculo.getOrientacao(),) ;
                  }));
        
                },
                child: Text(
                  "CALCULAR SEU IMC",
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            )),
          ],
        ));
  }
}
