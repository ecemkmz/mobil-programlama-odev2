class Laptop {
  late int id;
  late String name;
  late int ram;

  void setLaptopDetails(int id, String name, int ram) {
    this.id = id;
    this.name = name;
    this.ram = ram;
  }
}

void main() {
  Laptop laptop1 = Laptop();
  Laptop laptop2 = Laptop();
  Laptop laptop3 = Laptop();

  laptop1.setLaptopDetails(1, "Huawei Matebook 14", 8);
  laptop2.setLaptopDetails(2, "Macbook Air", 16);
  laptop3.setLaptopDetails(3, "Monster Abra A5", 32);

  print("Laptop 1: ${laptop1.id}, ${laptop1.name}, ${laptop1.ram}GB RAM");
  print("Laptop 2: ${laptop2.id}, ${laptop2.name}, ${laptop2.ram}GB RAM");
  print("Laptop 3: ${laptop3.id}, ${laptop3.name}, ${laptop3.ram}GB RAM");
}
