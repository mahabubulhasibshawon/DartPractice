class Employee{
  Employee(String name, double salary){
    print("employee constructor");
    print("Name : $name");
    print("Salary : $salary");
  }
}
class Manager extends Employee{
  Manager(String name, double salary) : super(name, salary){
    print("Manager constructor");
  }
}
void main(){
  Manager manager = Manager('Hasib', 2500000.00);
}
