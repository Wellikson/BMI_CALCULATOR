import 'package:BMI_CALCULATOR/constants.dart';
import 'package:flutter/material.dart';

int altura1=160;

class SliderAltura extends StatefulWidget {
  @override
  _SliderAltura createState() => _SliderAltura();
}

class _SliderAltura extends State<SliderAltura> {
  int altura = 160;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text("ALTURA", style: TextStyle(fontSize: 17.0, color: corfontArea)),
        confTexto(),
        confSlider(),
      ],
    ));
  }

  Row confTexto() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: <Widget>[
        Column(
          children: [
            Text(altura.toString(),
                style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900))
          ],
        ),
        Text("cm", style: TextStyle(fontSize: 18.0, color: corfontArea))
      ],
    );
  }

  Column confSlider() {
    return Column(
      children: <Widget>[
        SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.white,
              inactiveTrackColor: Color(0xFF8D8E98),
              thumbColor: Color(0xFFEB1555),
              overlayColor: Color(0x29EB1555),
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
            ),
            child: Slider(
                value: altura.toDouble(),
                min: 100.0,
                max: 230.0,
                onChanged: (double value) {
                  setState(() {
                    altura = value.round();
                  });
                  altura1 = altura;
                }))
      ],
    );
  }
}
