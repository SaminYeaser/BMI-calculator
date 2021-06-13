import 'package:bmi/modelClass.dart';
import 'dart:math';

class BmiCalculation extends Bmi {
  double bmi = 0.0;

  String BmiCalculator() {
    bmi = Bmi.weight / pow(Bmi.height / 100, 2);
    if (bmi >= 25) {
      Bmi.comment = 'OverWeight';
    } else if (bmi<25 && bmi >= 18.5) {
      Bmi.comment = 'Normal';
    } else {
     Bmi.comment = 'UnderWeight';
    }
    return bmi.toStringAsFixed(1);
  }

  String BmiReport() {
    if (bmi >= 25) {
      return 'OverWeight';
    } else if (bmi<25 && bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }
}
