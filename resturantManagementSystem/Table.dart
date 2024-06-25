import 'Customer.dart';
import 'Employee.dart';
import 'Order.dart';

class Table {
  int tableNumber;
  int capacity;
  bool isReserved;
  Employee? waitstaff;
  Order? currentOrder;

  Table(this.tableNumber, this.capacity,
      [this.isReserved = false, this.waitstaff, this.currentOrder]);

  void reserve(Customer customer) {
    isReserved = true;
    print('Table $tableNumber is reserver for Mr/Mrs ${customer.name}');
  }

  void assignWaitstaff(Employee employee) {
    waitstaff = employee;
    print('Waitstaff ${employee.name} assigned to table $tableNumber');
  }

  @override
  String toString() {
    return 'Table{tableNumber: $tableNumber, capacity: $capacity, isReserved: $isReserved, '
        'waitstaff: ${waitstaff?.name}, currentOrder: ${currentOrder?.orderId}}';
  }
}
