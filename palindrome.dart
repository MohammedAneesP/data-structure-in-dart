void main(List<String> args) {
  print(isPlanidrome("aoloa"));
}

bool isPlanidrome(String word) {
  int flag = 0;
  for (var i = 0; i < word.length /2; i++) {
    if (word[i] != word[(word.length - i) - 1 ]) {
      flag = 1;
      break;
    }
  }
  if (flag == 0) {
    print(word);
    return true;
  }
  return false;
}
