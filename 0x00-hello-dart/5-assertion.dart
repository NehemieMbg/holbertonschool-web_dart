void main(List<String> args) {
  int number = int.parse(args[0]);
  print(number >= 80
      ? 'You Passed'
      : (() =>
          throw AssertionError('"The score must be bigger or equal to 80'))());
}
