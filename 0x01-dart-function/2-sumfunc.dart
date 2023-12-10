int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

String showFunc(int a, int b) {
  var sum = add(a, b);
  var difference = sub(a, b);

  return 'Add $a + $b = $sum\nSub $a - $b = $difference';
}

void main(List<String> args) {
  var a = int.parse(args[0]);
  var b = int.parse(args[1]);
  print(showFunc(a, b));
}
