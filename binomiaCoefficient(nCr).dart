import 'dart:io';

void main(){
  // nCr = 5C2
  print("enter value for n ; ");
  int? n = int.parse(stdin.readLineSync()!);
  print("enter value for r ; ");
  int? r = int.parse(stdin.readLineSync()!);
  print(binomiaCoefficient(n, r));
}

// using recursion 
int factorial(int n ){
  if(n == 0 ){
    return 1;
  }
  else{
    return n * factorial(n-1);
  }
}

double binomiaCoefficient(int n, int r){
  int nFact = factorial(n);
  int rFact = factorial(r);
  int nSubrFact = factorial(n-r);
  return (nFact/(rFact*nSubrFact));
}
