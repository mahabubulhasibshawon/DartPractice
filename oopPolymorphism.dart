class Animal{
  void display(){
    print("Animal is displayed");
  }
}
class Cat extends Animal{
  @override
  void display(){
    print("Cat is displayed");
  }
}
void main(){
  Cat cat = Cat();
  cat.display();
  Animal animal = Animal();
  animal.display();
}
