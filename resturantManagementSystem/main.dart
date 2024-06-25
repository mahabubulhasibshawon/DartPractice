import 'Customer.dart';
import 'Employee.dart';
import 'MenuItem.dart';
import 'Order.dart';
import 'Resturant.dart';
import 'Table.dart';

void main(){
  // Create a restaurant
  Resturant resturant =
      Resturant('Rasheder Vater Hotel', 'আশুলিয়া', '01956832167');

  // Create some menu items
  MenuItem pizza = MenuItem(1, 'Pizza', 'Delicious cheese pizza', 8.99);
  MenuItem burger = MenuItem(2, 'Burger', 'Juicy beef burger', 6.99);
  MenuItem pasta = MenuItem(3, 'Pasta', 'Creamy Alfredo pasta', 7.99);
  MenuItem Rice =
      MenuItem(4, 'Rice & Fish', 'White Chinigura rice with Big Fish', 0.99);

  // add menu items to the resturant menu
  resturant.addMenuItem(pizza);
  resturant.addMenuItem(burger);
  resturant.addMenuItem(pasta);
  resturant.addMenuItem(Rice);

  // Create some customer
  Customer customer1 = Customer(1, 'hasib ', '01916552880');
  Customer customer2 = Customer(2, 'Shawon', '01911779600');

  // Create some employees
  Employee employee1 =
      Employee(1, 'Alice', 'Waitstaff', 'alice@rashedervaterhotel.com');
  Employee employee2 =
      Employee(2, 'Bob Brown', 'Waitstaff', 'bob@rashedervaterhotel.com');

  // Create some tables
  Table table1 = Table(1, 6);
  Table table2 = Table(2, 4);

  // Reserve a table for a customer
  resturant.reserveTable(table1, customer1);

  // Assign waitstaff for a customer
  resturant.assignWaitstaff(table1, employee1);

  // Customer places an order
  Order order1 = Order(1, table1.tableNumber);
  order1.addItem(Rice);
  order1.addItem(burger);

  // Update the table's current order
  table1.currentOrder = order1;

  // Print out details
  print(resturant);
  print(table1);
  print(order1);
}
