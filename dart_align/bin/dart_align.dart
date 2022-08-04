import 'package:dart_align/dart_align.dart' as dart_align;

void main() {
  var list = [2, 5, 1, 0, 4, 9];

  for (var i = 0; i < list.length - 1; i++) {
    for (var j = 0; j < list.length - 1; j++) {
      var num = list[j];
      if (list[j] > list[j + 1]) {
        list[j] = list[j + 1];
        list[j + 1] = num;
      }
    }
  }
  print(list);
}
