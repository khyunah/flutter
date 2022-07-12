void main(List<String> args) {
  // 동적 바인딩
  start(Dog()); // 메모리에 객체가 올라간 Dog의 sound() 메서드가 호출 되었다.
  start(Cat()); // "" Cat의 ""
  start(Fish());
} // end of main

abstract class Animal {
  void sound();
}

class Dog implements Animal {
  @override
  void sound() {
    print("멍멍");
  }
}

class Cat implements Animal {
  @override
  void sound() {
    print("냐옹");
  }
}

class Fish implements Animal {
  @override
  void sound() {
    print("뻐끔 뻐끔");
  }
}

// 클래스 소속이 아니라 다트라는 파일안에 메소드 정의 가능
void start(Animal x) {
  x.sound();
}
