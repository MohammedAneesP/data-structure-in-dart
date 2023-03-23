void main(List<String> args) {
  List<int> mainArray = [1, 4, 5, 6, 8, 2, 4, 2, 2];

  List results = mainArray.toSet().toList();
  print(results);
}
