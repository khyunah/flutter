void main(List<String> args) {
  var chobab = ["새우초밥", "광어초밥", "연어초밥"];

  // element가 "광어초밥" 이 아니면 담긴다.
  var chobabChange = chobab.where((element) => element != "광어초밥"); 
  
  print(chobabChange);
  print(chobab);
  print(chobabChange.runtimeType);
  print(chobabChange.toList());
} // end of main
