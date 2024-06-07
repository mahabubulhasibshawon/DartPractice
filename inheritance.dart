/*
* This the concept of Inheritance. here child class (son) can access 
* parents class(father) as it extends Father in line 11
* */

class Father{
  TotalTaka(){
    print("Total Amount = 800000000");
  }
}
class Son extends Father{

}
void main(){
  var SonObj = Son();
  SonObj.TotalTaka();
  var FatherObj = Father();
  FatherObj.TotalTaka();
}
