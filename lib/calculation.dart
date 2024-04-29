import 'dart:math';

class Calculation {
  final int weight;
  final int height;
  Calculation(this.weight, this.height);
  double _bmi = 0.0;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String get_result() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String get_interpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than a normal body weight. Try to exercise more!';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than a normal body weight. You need to eat more!';
    }
  }
}
