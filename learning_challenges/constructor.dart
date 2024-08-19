class Person {
  Person({
    required this.name,
    required this.age,
    required this.height,
  });

  String name;
  int age;
  double height;

  void printDescription() {
    print("My name is $name, I'm $age years old, I'm $height meters tall.");
  }
}

void main() {
  final person = Person(name: 'Mustapha', age: 22, height: 1.88);
  final person2 = Person(name: 'Said', age: 21, height: 1.78);
  person.printDescription();
  person2.printDescription();
}
