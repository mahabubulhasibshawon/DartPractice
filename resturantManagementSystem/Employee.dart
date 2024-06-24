import 'Table.dart';

class Employee{
  int id;
  String name;
  String role;
  String email;

  Employee(this.id, this.name, this.role, this.email);

  void assignTable(Table table) {
    table.assignWaitstaff(this);
    print('Employee $name assigned to table ${table.tableNumber}.');
  }

  @override
  String toString() {
    return 'Employee{id: $id, name: $name, role: $role, email: $email}';
  }
}