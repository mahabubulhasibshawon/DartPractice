// declare class
import 'myClass.dart';
// main class
void main(){
  var obj = MyClass("I am a constructor");
}
//myClass.dart
class MyClass{
  MyClass(String msg){
    print(msg);
  }
}
