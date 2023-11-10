class Bottle {
  void open() {
  }

  factory Bottle.cokeBottle() {
    return CokeBottle();
  }
}

class CokeBottle implements Bottle {
  @override
  void open() {
    print("Coke bottle is opened");
  }
}

void main() {
  Bottle coke = Bottle.cokeBottle(); 
  coke.open(); 
}
