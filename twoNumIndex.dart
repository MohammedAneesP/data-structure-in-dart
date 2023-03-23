void main(List<String> args) {
  int target = 10;
  List<int> theArray = [4, 6, 1, 5, 8];

  List<int> result = twoNumSumSimpl(theArray, target);
  for (var i = 0; i < result.length; i++) {
    print(result[i]);
  }
}

List<int> twoNumSumSimpl(List<int> funArray, funNum) {
  List<int> newAllResult = [];
  for (var i = 0; i < funArray.length; i++) {
    int numMatch = funNum - funArray[i];
    if (newAllResult.contains(numMatch)) {
      return [i, newAllResult.indexWhere((element) => element == numMatch)];
    } 
      newAllResult.add(numMatch);   
  }
  return [];
}
