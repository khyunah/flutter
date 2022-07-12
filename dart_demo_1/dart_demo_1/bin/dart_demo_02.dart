import 'package:dart_demo_1/dart_demo_1.dart' as dart_demo_1;

void main(List<String> arguments) {
  // 계단식 표기법
  Chef c1 = Chef("고길동")..cook();
  // ..연산자를 사용하면 코드 한줄로 객체를 변수로 넘겨주면서 객체가 가진 함수를 호출할 수 있는 표기법 이다.
}

class Chef {
  String name;

  Chef(this.name);

  void cook() {
    // 변수를 사용할때 단수일때는 {} 중괄호 없이 사용가능.
    print("$name 요리를 시작합니다.");
  }
}
