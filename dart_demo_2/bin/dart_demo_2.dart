import 'package:dart_demo_2/dart_demo_2.dart' as dart_demo_2;

/*
  변수 : 타입 추론, 명시적 타입 

  Map 타입은 {}중괄호를 사용한다. ㅡ> key value 구조
  List 타입은 []대괄호를 사용한다.
*/
void main() {
  var name = 'Voyger1';
  var year = 1977;
  var antennaDimater = 3.7;

  var flyByObject = ['jupter', 'Saturn', 'Uranus'];
  var image = <String, dynamic>{
    'tags': ['saturn', 'abc'],
    'url': '//path/to/saurn.jpg'
  };

  print(image);
  print(image['tags']);
  print(image['tags'].runtimeType);
  print('-------------');
  List<String> tagsList = image['tags'] as List<String>;

  print(tagsList);
  print(tagsList[0]);
  print(tagsList[1]);

  try {
    print(tagsList[2]);
  } catch (e) {
    print(e.toString());
  }

  // try {
  //   print(tagsList[2]);
  // } on Exception {
  //   print('예외발생');
  // }

  // Late Values
  // Dart 2.12 버전 이후에 추가된 키워드
  // 선언 후 초기화 된 null 이 아닌 변수를 선언 합니다.
  // 변수를 느리게 초기화한다.

  description = 'Feijoada!';
  print(description);
}

late String description;
