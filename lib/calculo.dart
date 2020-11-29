import 'package:BMI_CALCULATOR/consRangeIMCFEM.dart';
import 'package:BMI_CALCULATOR/consRangeIMCMASC.dart';
import 'dart:math';

import 'constants.dart';

class Calculo {
  final String genero;
  final int idade;
  final int peso;
  final int altura;
  double _imc;
  String _faixaIMC;
  String _orientacao;

  Calculo({this.genero, this.idade, this.peso, this.altura});

  String calcularImc() {
    _imc = peso / pow(altura / 100, 2);
    return _imc.toStringAsFixed(1);
  }

  String getOrientacao() {
    if (getconceito() == "Baixo Peso") {
      _orientacao = textoIMCBaixoPeso;
    } else if (getconceito() == "Normal") {
      _orientacao = textoIMCNormal;
    } else if (getconceito() == "Sobrepeso") {
      _orientacao = textoIMCSobrepeso;
    } else {
      _orientacao=textoIMCObesidade;
    }
    return _orientacao;
  }

  String getFaixaIMC() {
    return _faixaIMC;
  }

  String getconceito() {
    String conceito;
    double imc = double.parse(calcularImc());
    if (genero == "Feminino") {
      conceito = _generoFeminino(imc);
    } else {
      conceito = _generoMasculino(imc);
    }

    return conceito;
  }

  String _generoFeminino(double imc) {
    String faixaIMC;
    String conceito;
    if (idade == 10) {
      if (imc <= 14.22) {
        conceito = "Baixo Peso";
        faixaIMC = fBaixoPeso10;
      } else {
        if (imc >= 14.23 && imc <= 20.18) {
          conceito = "Normal";
          faixaIMC = fNormal10;
        } else {
          conceito = "Sobrepeso";
          faixaIMC = fSobrePeso10;
        }
      }
    }
    if (idade == 11) {
      if (imc <= 14.59) {
        conceito = "Baixo Peso";
        faixaIMC = fBaixoPeso11;
      } else {
        if (imc >= 14.60 && imc <= 21.17) {
          conceito = "Normal";
          faixaIMC = fNormal11;
        } else {
          conceito = "Sobrepeso";
          faixaIMC = fSobrePeso11;
        }
      }
    }
    if (idade == 12) {
      if (imc <= 14.97) {
        conceito = "Baixo Peso";
        faixaIMC = fBaixoPeso12;
      } else {
        if (imc >= 14.98 && imc <= 22.17) {
          conceito = "Normal";
          faixaIMC = fNormal12;
        } else {
          conceito = "Sobrepeso";
          faixaIMC = fSobrePeso12;
        }
      }
    }
    if (idade == 13) {
      if (imc <= 15.35) {
        conceito = "Baixo Peso";
        faixaIMC = fBaixoPeso13;
      } else {
        if (imc >= 15.36 && imc <= 23.07) {
          conceito = "Normal";
          faixaIMC = fNormal13;
        } else {
          conceito = "Sobrepeso";
          faixaIMC = fSobrePeso13;
        }
      }
    }
    if (idade == 14) {
      if (imc <= 15.66) {
        conceito = "Baixo Peso";
        faixaIMC = fBaixoPeso14;
      } else {
        if (imc >= 15.67 && imc <= 23.87) {
          conceito = "Normal";
          faixaIMC = fNormal14;
        } else {
          conceito = "Sobrepeso";
          faixaIMC = fSobrePeso14;
        }
      }
    }
    if (idade == 15) {
      if (imc <= 16) {
        conceito = "Baixo Peso";
        faixaIMC = fBaixoPeso15;
      } else {
        if (imc >= 16.01 && imc <= 24.27) {
          conceito = "Normal";
          faixaIMC = fNormal15;
        } else {
          conceito = "Sobrepeso";
          faixaIMC = fSobrePeso15;
        }
      }
    }
    if (idade == 16) {
      if (imc <= 16.36) {
        conceito = "Baixo Peso";
        faixaIMC = fBaixoPeso16;
      } else {
        if (imc >= 16.37 && imc <= 24.73) {
          conceito = "Normal";
          faixaIMC = fNormal16;
        } else {
          conceito = "Sobrepeso";
          faixaIMC = fSobrePeso16;
        }
      }
    }
    if (idade == 17) {
      if (imc <= 16.58) {
        conceito = "Baixo Peso";
        faixaIMC = fBaixoPeso17;
      } else {
        if (imc >= 16.59 && imc <= 25.22) {
          conceito = "Normal";
          faixaIMC = fNormal17;
        } else {
          conceito = "Sobrepeso";
          faixaIMC = fSobrePeso17;
        }
      }
    }
    if (idade == 18) {
      if (imc <= 16.7) {
        conceito = "Baixo Peso";
        faixaIMC = fBaixoPeso18;
      } else {
        if (imc >= 16.71 && imc <= 25.55) {
          conceito = "Normal";
          faixaIMC = fNormal18;
        } else {
          conceito = "Sobrepeso";
          faixaIMC = fSobrePeso18;
        }
      }
    }
    if (idade == 19) {
      if (imc <= 16.86) {
        conceito = "Baixo Peso";
        faixaIMC = fBaixoPeso19;
      } else {
        if (imc >= 16.87 && imc <= 25.84) {
          conceito = "Normal";
          faixaIMC = fBaixoPeso19;
        } else {
          conceito = "Sobrepeso";
          faixaIMC = fSobrePeso19;
        }
      }
    }
    if (idade >= 20 && idade <= 59) {
      if (imc <= 18.49) {
        conceito = "Baixo Peso";
        faixaIMC = adultoBaixoPeso;
      } else {
        if (imc >= 18.50 && imc < 25) {
          conceito = "Normal";
          faixaIMC = adultoBaixoNormal;
        } else if (imc >= 25 && imc < 30) {
          conceito = "Sobrepeso";
          faixaIMC = adultoSobrePeso;
        } else {
          conceito = "Obesiade";
          faixaIMC = adultoObesidade;
        }
      }
    }
    if (idade > 59) {
      if (imc <= 22) {
        conceito = "Baixo Peso";
        faixaIMC = terceiraIdadeBaixoPeso;
      } else {
        if (imc > 22 && imc < 27) {
          conceito = "Normal";
          faixaIMC = terceiraIdadeBaixoNormal;
        } else {
          conceito = "Sobrepeso";
          faixaIMC = terceiraIdadeSobrePeso;
        }
      }
    }
    _faixaIMC = faixaIMC;
    return conceito;
  }

  String _generoMasculino(double imc) {
    String faixaIMC;
    String conceito;
    if (idade == 10) {
      if (imc <= 14.41) {
        conceito = "Baixo Peso";
        faixaIMC = mBaixoPeso10;
      } else {
        if (imc >= 14.42 && imc <= 19.5) {
          conceito = "Normal";
          faixaIMC = mNormal10;
        } else {
          conceito = "Sobrepeso";
          faixaIMC = mSobrePeso10;
        }
      }
    }
    if (idade == 11) {
      if (imc <= 14.81) {
        conceito = "Baixo Peso";
        faixaIMC = mBaixoPeso11;
      } else {
        if (imc >= 14.82 && imc <= 20.34) {
          conceito = "Normal";
          faixaIMC = mNormal11;
        } else {
          conceito = "Sobrepeso";
          faixaIMC = mSobrePeso11;
        }
      }
    }
    if (idade == 12) {
      if (imc <= 15.23) {
        conceito = "Baixo Peso";
        faixaIMC = mBaixoPeso12;
      } else {
        if (imc >= 15.24 && imc <= 21.11) {
          conceito = "Normal";
          faixaIMC = mNormal12;
        } else {
          conceito = "Sobrepeso";
          faixaIMC = mSobrePeso12;
        }
      }
    }
    if (idade == 13) {
      if (imc <= 15.71) {
        conceito = "Baixo Peso";
        faixaIMC = mBaixoPeso13;
      } else {
        if (imc >= 15.72 && imc <= 21.92) {
          conceito = "Normal";
          faixaIMC = mNormal13;
        } else {
          conceito = "Sobrepeso";
          faixaIMC = mSobrePeso13;
        }
      }
    }
    if (idade == 14) {
      if (imc <= 16.17) {
        conceito = "Baixo Peso";
        faixaIMC = mBaixoPeso14;
      } else {
        if (imc >= 16.72 && imc <= 22.75) {
          conceito = "Normal";
          faixaIMC = mNormal14;
        } else {
          conceito = "Sobrepeso";
          faixaIMC = mSobrePeso14;
        }
      }
    }
    if (idade == 15) {
      if (imc <= 16.58) {
        conceito = "Baixo Peso";
        faixaIMC = mBaixoPeso15;
      } else {
        if (imc >= 16.59 && imc <= 23.62) {
          conceito = "Normal";
          faixaIMC = mNormal15;
        } else {
          conceito = "Sobrepeso";
          faixaIMC = mSobrePeso15;
        }
      }
    }
    if (idade == 16) {
      if (imc <= 17) {
        conceito = "Baixo Peso";
        faixaIMC = mBaixoPeso16;
      } else {
        if (imc >= 17.01 && imc <= 24.44) {
          conceito = "Normal";
          faixaIMC = mNormal16;
        } else {
          conceito = "Sobrepeso";
          faixaIMC = mSobrePeso16;
        }
      }
    }
    if (idade == 17) {
      if (imc <= 17.30) {
        conceito = "Baixo Peso";
        faixaIMC = mBaixoPeso17;
      } else {
        if (imc >= 17.31 && imc <= 25.27) {
          conceito = "Normal";
          faixaIMC = mNormal17;
        } else {
          conceito = "Sobrepeso";
          faixaIMC = mSobrePeso17;
        }
      }
    }
    if (idade == 18) {
      if (imc <= 17.53) {
        conceito = "Baixo Peso";
        faixaIMC = mBaixoPeso18;
      } else {
        if (imc >= 17.54 && imc <= 25.94) {
          conceito = "Normal";
          faixaIMC = mNormal18;
        } else {
          conceito = "Sobrepeso";
          faixaIMC = mSobrePeso18;
        }
      }
    }
    if (idade == 19) {
      if (imc <= 17.79) {
        conceito = "Baixo Peso";
        faixaIMC = mBaixoPeso19;
      } else {
        if (imc >= 17.80 && imc <= 26.35) {
          conceito = "Normal";
          faixaIMC = mNormal19;
        } else {
          conceito = "Sobrepeso";
          faixaIMC = mSobrePeso19;
        }
      }
    }
    if (idade >= 20 && idade <= 59) {
      if (imc <= 18.49) {
        conceito = "Baixo Peso";
        faixaIMC = adultoBaixoPeso;
      } else {
        if (imc >= 18.50 && imc < 25) {
          conceito = "Normal";
          faixaIMC = adultoBaixoNormal;
        } else if (imc >= 25 && imc < 30) {
          conceito = "Sobrepeso";
          faixaIMC = adultoSobrePeso;
        } else {
          conceito = "Obesiade";
          faixaIMC = adultoObesidade;
        }
      }
    }
    if (idade > 59) {
      if (imc <= 22) {
        conceito = "Baixo Peso";
        faixaIMC = terceiraIdadeBaixoPeso;
      } else {
        if (imc > 22 && imc < 27) {
          conceito = "Normal";
          faixaIMC = terceiraIdadeBaixoNormal;
        } else {
          conceito = "Sobrepeso";
          faixaIMC = terceiraIdadeSobrePeso;
        }
      }
    }
    _faixaIMC = faixaIMC;
    return conceito;
  }
}
