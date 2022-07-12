void main(List<String> args) {
  Person1 p1 = Person1(name: "홍길동");
  Person2 p2 = Person2(name: "홍길동", age: 100);
  
  print(p1.age);
  // p1.age = 10;

  // null 대체연산자
  int mAge = p1.age ?? 1;
  print(mAge);
} // end of main

class Person1 {
  String? name;
  int? age;

  Person1({this.name, this.age});
}

class Person2 {
  String name;
  int age;

  Person2({required this.name, required this.age});
}
