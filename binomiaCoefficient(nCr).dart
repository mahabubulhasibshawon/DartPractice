import 'dart:io';

void main(){
  // nCr = 5C2
  print("enter value for n ; ");
  int? n = int.parse(stdin.readLineSync()!);
  print("enter value for r ; ");
  int? r = int.parse(stdin.readLineSync()!);
  print(binomiaCoefficient(n, r));
}

int factorial(int n ){
  int fun = 1;
  for(int i = n; i>=1; --i){
    fun = fun * i;
  }
  return fun;
}

double binomiaCoefficient(int n, int r){
  int nFact = factorial(n);
  int rFact = factorial(r);
  int nSubrFact = factorial(n-r);
  return (nFact/(rFact*nSubrFact));
}
