class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);
}

void main() {
  List<House> houses = [
    House(1, "A", 1500000.0),
    House(2, "B", 2000000.0),
    House(3, "C", 3000000.0),
  ];

  for (var house in houses) {
    print("House ${house.id}: ${house.name}, Price: \$${house.price}");
  }
}
