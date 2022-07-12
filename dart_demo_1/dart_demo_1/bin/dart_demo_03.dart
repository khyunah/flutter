void main(List<String> args) {
  CheeseBerger ch = CheeseBerger("치즈버거");
  print(ch.name);
} // end of main

class Berger {
  final String? name; // final ㅡ> 런타임 시점에 초기화
  int? price;
  // const ㅡ> 컴파일 시점에 초기화

  // final은 반드시 초기화를 해야하기 때문에 생성할때 반드시 값이 들어갈 수 있도록
  // Berger(this.name) {}
  Berger({required this.name, this.price = 0}) {}
}

class CheeseBerger extends Berger {
  // 매개변수의 이름과 부모클래스의 변수 이름과 같아야 매핑이 된다.
  CheeseBerger(String name) : super(name: name, price: 0);
}
