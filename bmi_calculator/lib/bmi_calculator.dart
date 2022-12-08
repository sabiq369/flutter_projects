import 'dart:math';

class CalculateBmi {
  CalculateBmi({this.weight, this.height});
  final int? weight;
  final int? height;
  late double _bmi;
  String getBmi() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getBmiTextResult() {
    if (_bmi <= 16.0) {
      return 'Under weight(Severe thinness)';
    } else if (_bmi >= 16.1 && _bmi <= 16.9) {
      return 'Under weight(Moderate thinness)';
    } else if (_bmi >= 17.0 && _bmi <= 18.4) {
      return 'Under weight(Mild thinness)';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'Normal range';
    } else if (_bmi >= 25.0 && _bmi <= 29.9) {
      return 'Over weight(Pre-obese)';
    } else if (_bmi >= 30.0 && _bmi <= 34.9) {
      return 'Obese(Class 1)';
    } else if (_bmi >= 35.0 && _bmi <= 39.9) {
      return 'Obese(Class 2)';
    } else if (_bmi >= 40.0) {
      return 'Obese(Class 3)';
    } else {
      return '';
    }
  }

  String getSuggestion() {
    if (_bmi <= 16.0) {
      return 'Eat more';
    } else if (_bmi >= 16.1 && _bmi <= 16.9) {
      return 'Eat some more';
    } else if (_bmi >= 17.0 && _bmi <= 18.4) {
      return 'Eat just a little bit more';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'You are perfect';
    } else if (_bmi >= 25.0 && _bmi <= 29.9) {
      return 'Eat less';
    } else if (_bmi >= 30.0 && _bmi <= 34.9) {
      return 'Eat less';
    } else if (_bmi >= 35.0 && _bmi <= 39.9) {
      return 'Eat less';
    } else if (_bmi >= 40.0) {
      return 'Eat less';
    } else {
      return 'ok';
    }
  }
}
