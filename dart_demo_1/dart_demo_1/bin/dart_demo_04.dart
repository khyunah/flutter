void main(List<String> args) {
  BMW b = BMW();
  print(b.power);
  print(b.wheelName);
} // end of main

class Wheel {
  String wheelName = "4륜 구동 바퀴";
}

class Engine {
  int power = 5000;
}

class BMW with Engine, Wheel {
  // Mixin 가능
  // 컴포지션 관계를 사용해왔다.
  // Engine? engine;
  // Wheel? wheel;
}
