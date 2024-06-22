class Laptop{
  void show(){
    print("Laptop Show  method(parent class)");
  }
}
class Macbook extends Laptop{
  void show(){
    super.show();
    print("Macbook show mathod (child class)");
  }
}

void main(){
  Macbook macbook = Macbook();
  macbook.show();
}
