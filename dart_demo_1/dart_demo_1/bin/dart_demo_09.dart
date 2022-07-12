void main(List<String> args) {
  var list = [1, 2, 3, 4, 5];

  // index를 이용한 연산을 해야할때
  for (var i = 0; i < list.length; i++) {
    print(list[i]);
  }
  print("-------------------");

  // 처음부터 끝까지 모두 돌려야할때
  for (var li in list) {
    print(li);
  }
  print("-------------------");

  int count = 0;
  while (list.length > count) {
    print(list[count]);
    count++;
  }
} // end of main
