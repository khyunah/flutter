import 'package:dart_demo_1/dart_demo_1.dart' as dart_demo_1;

void main(List<String> arguments) {
  // 선택적 매개변수를 사용하면 키값을 넣어줘야 한다. ( 순서에 관계 없음 )
  Person p1 = Person(name: "홍길동");
  Person p2 = Person(name: "임꺽정", money: 2000);
  Person p3 = Person(name: "유관순", money: 20000);

  print("${p1.name}의 재산은 ${p1.money}");
  print("${p2.name}의 재산은 ${p2.money}");
  print("${p3.name}의 재산은 ${p3.money}");
}

class Person {
  String name;
  int money;

  // 선택적 매개변수를 넣을때 반드시 넣어야 하는 required ( 2.1.2 버전 이상부터 null safety가 추가되어서 ?를 쓰던지 required를 써야 오류가 안난다. )
  // 코드양이 줄어들게 된다.
  Person({required this.name, this.money = 1000});
  // 또는 타입뒤에 ? 물음표를 사용하여 nullable을 지정해준다.
}

