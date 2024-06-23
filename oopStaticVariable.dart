//dart static variable

class Student{
  int id;
  String name;
  static String schoolname = "Milestone College";
  Student(this.id, this.name);
  void display(){
    print("Id : ${this.id}");
    print("Name : ${this.name}");
    print("School Name : ${Student.schoolname}");
  }
}
void main(){
  Student s1 = Student(1, "Hasib");
  s1.display();
}
