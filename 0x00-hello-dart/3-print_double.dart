void main() {
  var n = 3.14159265359;
  int truncated = (n * 100).toInt();
  double twoDigits = truncated / 100;

  print('Double: ${twoDigits}\n');
}
