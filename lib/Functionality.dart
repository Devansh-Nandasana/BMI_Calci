import 'dart:core';

class Functionality {
  Functionality({this.result});
  final double result;
  String resultText;
  String resultDescription;
  void calculateResultText() {
    if (result > 30)
      resultText = 'OBESE';
    else if (result > 25)
      resultText = 'OVERWEIGHT';
    else if (result > 18.5)
      resultText = 'NORMAL';
    else
      resultText = 'UNDERWEIGHT';
  }

  void calculateResultDescription() {
    if (result > 30)
      resultDescription =
          'You Should Definitely Exercise 5 Days a Week. Work Hard';
    else if (result > 25)
      resultDescription = 'Ooops.. You need to Exercise dude';
    else if (result > 18.5)
      resultDescription = 'Great.. Be Consistent';
    else
      resultDescription = 'Take care of your Diet.';
  }

  String getResultText() {
    return resultText;
  }

  String getResultDescription() {
    return resultDescription;
  }
}
