void main(List<String> args) {
  var chobab = ["새우초밥", "광어초밥", "연어초밥"];

  // 얕은 복사 ㅡ> 주소값을 그대로 복사
  // var chobabChange = chobab;

  // print(chobabChange);
  // chobabChange.add("간장새우초밥");
  // print(chobab);

  // 깊은 복사 ㅡ> 주소값말고 데이터를 통으로 복사 하는 것
  // map 함수는 무언가 변형을 ( 변경, 가공 ) 해야할때 사용하면 굉장히 편리하다.
  var chobabChangemap = chobab.map((e) => "간장_ $e").toList();
  // var chobabChangemap = chobab.map((e) => "간장_ $e"); MappedListIterable<String, String> 타입
  print(chobabChangemap);
  print(chobabChangemap.runtimeType);
  print(chobab);
  print(chobab.runtimeType);

} // end of main
