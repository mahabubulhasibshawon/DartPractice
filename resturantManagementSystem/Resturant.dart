import '../oopSuper.dart';
import 'MenuItem.dart';

class Resturant {
  String name;
  String address;
  String phone;
  List<MenuItem> menu = [];
  List<Customer> customers = [];
  List<Employee> employees = [];
  List<Table> tables = [];

  Resturant(this.name, this.address, this.phone);

  void addMenuItem(MenuItem item) {
    menu.add(item);
  }

  void removeMenuItem(MenuItem item) {
    menu.remove(item);
  }

  void reserveTable(Table table, Customer customer) {
    if (!table.isReserved) {
      table.reserve(customer);
      tables.add(table);
      customers.add(customer);
    } else {
      print('Table ${table.tableNumber} is already reserved');
    }
  }

  void assignWaitstaff(Table table, Employee employee) {
    table.assignWaitstaff(employee);
    if (!employees.contains(employee)) {
      employees.add(employee);
    }
  }

  @override
  String toString() {
    return 'Restaurant{name: $name, address: $address, phone: $phone, '
        'menu: ${menu.length} items, customers: ${customers.length}, '
        'employees: ${employees.length}, tables: ${tables.length}}';
  }
}
