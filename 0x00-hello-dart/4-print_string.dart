void main() {
  String str = "Holberton School";
  String str2 = "";

  for (int i = 0; i < 3; i++) {
    str2 += str;
  }

  print(str2);
  print(str.substring(0, 9));
}
