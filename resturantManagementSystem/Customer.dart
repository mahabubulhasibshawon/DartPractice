import 'Order.dart';

class Customer{
  int id;
  String name;
  String phone;

  Customer(this.id, this.name, this.phone);

  void placeOrder(Order order){
    // orders.add(order);
    print('Customer $name placed an order : $order');
  }

  @override
  String toString(){
    return 'Customer{id: $id, name: $name, phone: $phone}';
  }
  
}