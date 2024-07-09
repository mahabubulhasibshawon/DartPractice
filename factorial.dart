void main(){
  int n = 5;
  print(factorial(n));
}

int factorial(int n ){
  int fun = 1;
  for(int i = n; i>=1; --i){
    fun = fun * i;
  }
  return fun;
}
