enum Gender {
  male,
  female,
  others,
}

void main() {
  for (var gender in Gender.values) {
    print(gender.toString().split('.').last);
  }
}
