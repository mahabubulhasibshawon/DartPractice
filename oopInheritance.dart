// this problem is form https://www.hackerrank.com/challenges/java-inheritance-2/problem
void main(){
  Adder a = Adder();
  int sum = a.add(10, 20);
  print("calling from adder class $sum ");
}
class Arithmetic{
  int add(int num1, int num2){
    return num1+num2;
  }
}
class Adder extends Arithmetic{
  
}
