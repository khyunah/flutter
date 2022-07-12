import 'dart:math';

void main(List<String> args) {
  Set<int> lotto = {};

  // Random 클래스 사용
  Random random = Random();
  lotto.add(random.nextInt(45) + 1); // 갯수 + index
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);

  print(lotto);

  // Set계열을 List로 형변환 하려면 toList() 메서드로 변경 가능
  List<int> lottoList = lotto.toList();
  // 정렬
  lottoList.sort();
  print(lottoList);
} // end of main
