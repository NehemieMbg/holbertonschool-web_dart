String longestUniqueSubstring(String str) {
  if (str.isEmpty) {
    return '';
  }

  int start = 0;
  int end = 0;
  int maxLength = 1;
  int currentLength = 1;
  int startIndex = 0;

  Map<String, int> lastIndex = {};

  lastIndex[str[0]] = 0;

  for (int i = 1; i < str.length; i++) {
    String currentChar = str[i];

    if (lastIndex.containsKey(currentChar) && lastIndex[currentChar] >= start) {
      start = lastIndex[currentChar] + 1;
      currentLength = i - start;
    }

    if (currentLength > maxLength) {
      maxLength = currentLength;
      startIndex = start;
    }

    lastIndex[currentChar] = i;
    currentLength++;
    end = i;
  }

  return str.substring(startIndex, end + 1);
}

void main() {
  print(longestUniqueSubstring("abcacbd"));
  print(longestUniqueSubstring("aaaaaaaa"));
  print(longestUniqueSubstring("abcde"));
}
