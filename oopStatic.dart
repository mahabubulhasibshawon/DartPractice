class Employee{
  static int count = 0;

  Employee(){
    count++;
  }

  void display(){
    print("Total employee : $count");
  }
}
void main(){
  Employee e1 = Employee();
  e1.display();
  Employee e2 = Employee();
  e2.display();
}
