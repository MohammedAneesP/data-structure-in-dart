

void main(List<String> args) {
  int target = 10;
  List<int> theArray = [1,4,7,9,5];
  List<int> result = twoNumSum(theArray, target);
  for (var i = 0; i < result.length; i++) {
    print(result[i]);
  }
}

List<int> twoNumSum(List<int> funArray, funNum) {
  var hashSet = new Set<int>();
  for (var i = 0; i < funArray.length; i++) {
    int complement = funNum - funArray[i];
    if (hashSet.contains(complement)) {
      return [funArray.indexOf(complement), i];
    }
    hashSet.add(funArray[i]);
  }
  return [];
}
