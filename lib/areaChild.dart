import 'package:BMI_CALCULATOR/pesoIdade.dart';
import 'package:BMI_CALCULATOR/resultado.dart';
import 'package:BMI_CALCULATOR/sliderAltura.dart';
import 'package:flutter/material.dart';
import 'conteudo.dart';

Widget areaChild([SliderAltura sliderAltura, 
    Conteudo conteudo, PesoIdade botoesPesoIdade,Resultado resultado]) {
  return areaChild(
    SliderAltura(),
    Conteudo(), 
    PesoIdade(),
    // ignore: missing_required_param
    Resultado()
    );
}
