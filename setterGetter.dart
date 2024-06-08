import 'dart:io';

class Mathematics {
  int _num = 0;
  int _den = 0;

  // setter functions
  void set setNumerator(int val) {
    _num = val * 6;
  }

  void set setDenominator(int val) {
    _den = val * 10;
  }
  //   getter funcitons
  int get getNumerator => _num;
  int get getDenominator => _den;
}

void main() {
  Mathematics maths = Mathematics();
  print("Enter a Numerator : ");
  maths.setNumerator = int.parse(stdin.readLineSync()!);
  print("Enter a Denominator : ");
  maths.setDenominator = int.parse(stdin.readLineSync()!);
  print(maths.getNumerator);
  print(maths.getDenominator);
}
