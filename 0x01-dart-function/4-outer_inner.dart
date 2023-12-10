String inner() {
  return 'Hello Agent B.';
}

void outer(String name, String id) {
  List<String> nameParts = name.split(' ');
  String firstName = nameParts[0];
  String lastName = nameParts[1].substring(0, 1);
  String greeting = inner();

  print('$greeting$lastName.$firstName your id is $id');
}

void main() {
  outer("Youssef Belhadj", "001");
}
