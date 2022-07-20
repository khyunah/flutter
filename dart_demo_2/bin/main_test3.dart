import 'main_test2.dart';

void main() {
  var flyByObject = ['jupter', 'Saturn', 'Uranus', 'Neptune'];

  // java 컬렉션 프레임워크 사용시
  // map, filter

  flyByObject.where((name) => name.contains('turn')).forEach(print);

  // 익명 함수를 인수로 전달할때 유용한 방법이다.

  //printWithDelay('비동기 함수 입니다.');
  printWithDeray2('비동기 함수 입니다.');
}

// Enums
enum planentType { terrestial, gas, ice }

// 상속
class Orbiter extends Spacecraft {
  double atitude;
  Orbiter(super.name, DateTime super.launchDate, this.atitude);
}

// 비동기 지원  Async
// 콜백 지옥을 피하고 async 및 await를 사용할 수 있다.
// 훨씬 코드를 쉽게 만들 수 있다.
const oneSecond = Duration(seconds: 5);

// 원형
// 미래타입 Future
// 규칙 비동기 async 를 붙여줘야 한다.
// 보통 네트워크 통신 할때 사용한다.
// await 는 기다린다는 키워드이다.
Future<void> printWithDelay(String message) async {
  await Future.delayed(
      oneSecond); // 얼마나 늦출지, 매개변수로 들어갈 수 있는 데이터 타입이 Duration 타입, await 붙여야 동작한다.
  print(message);
}

// then을 사용하여 콜백 실행 
// 미래타입 Future
Future<void> printWithDeray2(String message) {
  return Future.delayed(oneSecond).then((value) {
    print(message);
  });
}
