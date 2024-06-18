import 'dart:io';

void main(){
  Person person = Person();// creating object
  Person player = Person();// creating object
  print("Enter name and age of person ");
  person.name = stdin.readLineSync(); // assign input to object
  person.age = int.parse(stdin.readLineSync()!);
  print("Enter name and age of player ");
  player.name = stdin.readLineSync();
  player.age = int.parse(stdin.readLineSync()!);
  person.displayInfo();
  player.displayInfo();
}
// creating class
class Person{
  String? name ;
  int? age  ;
  void displayInfo(){
    print('My name is $name');
    print('My age is $age');
  }
}
