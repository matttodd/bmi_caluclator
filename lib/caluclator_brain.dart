import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi;

  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Thicc';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Sticc';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Nothing wrong with being Thicc!';
    } else if (_bmi > 18.5) {
      return 'You\'re excrutiatingly average!';
    } else {
      return 'Way to Sticc the landing!';
    }
  }
}
