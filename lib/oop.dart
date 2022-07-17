class Person {
  // Attribute
  final String name;
  final String id;
  final int? age;
  final String major;

  // Method
  greeting() {
    print("Hello, $name, You are $age yearold. You are studying $major");
    // return "Hello $name";
  }

  static void futureCarree() {
    print("You will become developer");
  }

  // Constructor
  Person({
    required this.name,
    required this.id,
    this.age,
    this.major = 'CS',
  });
}

void main(List<String> args) {
  Person.futureCarree();

  Person person1 = Person(
    name: 'Darot',
    id: '01',
    // age: 20,
    // major: 'CS',
  );

  print('THis is file change');

  person1.greeting();
}
