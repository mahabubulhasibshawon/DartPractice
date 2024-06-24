class MenuItem {
  int id;
  String name;
  String description;
  double price;

  MenuItem(this.id, this.name, this.description, this.price);
  void updateDescription(String description) {
    this.description = description;
  }

  void updatePrice(double price) {
    this.price = price;
  }

  @override
  String toString() {
    return 'MenuItem{id: $id, name: $name, description: $description, price: $price}';
  }
}
