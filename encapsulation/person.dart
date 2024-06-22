class Person{
  String _name;
  int _age;

//   constructor
  Person(this._name, this._age);

  String get name => _name;
  int get age => _age;

  set setName(String name){
    _name = name;
  }

  set setAge(int age){
    if(age> 0){
      _age = age;
    }
  }

  void displayPerson(){
    print('Name : $_name\nAge : $_age');
  }
}