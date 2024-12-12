import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi = 0;

  CalculatorBrain({
    required this.height,
    required this.weight,

  });

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return '과체중이십니다.';
    } else if (_bmi >= 18.5) {
      return '평균체중이십니다.';
    } else {
      return '저체중이십니다.';
    }
  }
}