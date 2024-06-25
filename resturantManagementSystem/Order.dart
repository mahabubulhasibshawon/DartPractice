import 'MenuItem.dart';

class Order{
  int orderId;
  int tableNumber;
  List<MenuItem> items = [];
  double totalAmount;
  String status;

  Order(this.orderId, this.tableNumber,
      {List<MenuItem>? items, this.totalAmount = 0.0, this.status = 'Pending'})
      : items = items ?? [];

  void addItem(MenuItem item) {
    items.add(item);
    calculateTotal();
  }

  void removeItem(MenuItem item) {
    items.remove(item);
    calculateTotal();
  }

  void calculateTotal() {
    totalAmount = items.fold(0, (sum, item) => sum + item.price);
  }

  void updateStatus(String status) {
    this.status = status;
  }

  @override
  String toString() {
    return 'Order{orderId: $orderId, tableNumber: $tableNumber, items: ${items.length}, '
        'totalAmount: $totalAmount, status: $status}';
  }
}
