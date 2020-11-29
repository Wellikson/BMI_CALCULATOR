import 'package:flutter/material.dart';
import 'constants.dart';

class Area extends StatelessWidget {
  final Color cor;
  final Widget areaChild;
  final Function onPress;
  Area({@required this.cor, this.onPress, this.areaChild});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
          margin: EdgeInsets.all(borda),
          decoration: BoxDecoration(
            color: cor,
            borderRadius: BorderRadius.circular(raioBorda),
          ),
          child: areaChild,
    ));
  }
}

