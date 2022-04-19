import 'package:bmi_calculator/main.dart';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double bmi=0;

  String calculateBMI() {
    bmi = weight / ((height * height) / 10000);
    return bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (bmi >= 25) {
      return 'Overweight';
    }
    else if (bmi > 18.5) {
      return 'Normal';
    }
    else {
      return 'Underweight';
    }
  }
  String getInterpretation(){
    if (bmi >= 25) {
      return 'You have higher than normal body weight , kam khaya kr mote';
    }
    else if (bmi > 18.5) {
      return 'You have a normal body weight . Good job';
    }
    else {
      return 'You have a lower than normal body weight, kuch khaa liya kr bc';
    }
  }
}