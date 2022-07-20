String? description1;
// String description2; 불가능
// String description3 = null;
String? description3 = null;

void main(List<String> args) {
  print(result);
}

var count = 0;
fibonacci(int n) {
  print(count);
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

var result = fibonacci(10);
