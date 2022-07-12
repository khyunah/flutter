void main(List<String> args) {
  // const 붙이기전의 hashCode와 붙이고 나서 값 비교해보기
  // 값이 같으면 하나의 주소값으로 재사용한다.
  Animal a1 = const Animal("사자");
  Animal a2 = const Animal("사자");

  print(a1.hashCode);
  // a1.name = "호랑이"; 수정불가 
  print(a2.hashCode);
} // end of main

class Animal {
  final String name;
  const Animal(this.name);
}
