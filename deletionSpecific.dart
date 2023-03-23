void main(List<String> args) {
  List<int> mainArray = [1, 4, 5, 6, 8, 2, 4, 2, 2];
  int deleteNum = 4;

  int deleteValue(List<int> anArray) {
    for (var i = 0; i < anArray.length; i++) {
      if (anArray[i] == deleteNum) {
        anArray.removeWhere((element) => element == deleteNum);
      }
    }
    return anArray.length;
  }

  int results = deleteValue(mainArray);
  print(results);
  print(mainArray);
}
