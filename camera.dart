class Camera {
  int _cameraId;
  String _cameraBrand;
  String _cameraColor;
  double _cameraPrice;

  Camera(this._cameraId, this._cameraBrand, this._cameraColor, this._cameraPrice);

  int get id => _cameraId;
  String get brand => _cameraBrand;
  String get color => _cameraColor;
  double get price => _cameraPrice;

  set id(int value) => _cameraId = value;
  set brand(String value) => _cameraBrand = value;
  set color(String value) => _cameraColor = value;
  set price(double value) => _cameraPrice = value;

  void cameraDetails() {
    print("Kamera Detayları:");
    print("ID: $_cameraId");
    print("Marka: $_cameraBrand");
    print("Renk: $_cameraColor");
    print("Fiyat: $_cameraPrice\₺");
  }
}

void main() {
  List<Camera> cameras = [
    Camera(1, "Kodak", "Mavi", 3999.99),
    Camera(2, "Sony", "Beyaz", 1399.99),
    Camera(3, "Panasonic", "Siyah", 2599.99),
  ];

  for (var camera in cameras) {
    camera.cameraDetails();
    print("");
  }
}
