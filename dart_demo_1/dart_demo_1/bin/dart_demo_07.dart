void main(List<String> args) {
  // Map은 {} 중괄호 List는 [] 대괄호
  Map<String, dynamic> user = {
    "id" : 10,
    "username" : "cos"
  };

  // Map의 키값은 [] 대괄호 안에 선언
  print(user["id"]);
  print(user["username"]);
  print(user["age"]); // null

} // end of main
