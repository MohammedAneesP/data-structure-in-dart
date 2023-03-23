// List<int> mergeSort(List<int> arr) {
//   if (arr.length <= 1) return arr;

//   int middle = arr.length ~/ 2;
//   List<int> left = arr.sublist(0, middle);
//   List<int> right = arr.sublist(middle);
//   // print(left);
//   // print(right);

//   return merge(mergeSort(left), mergeSort(right));
// }

// List<int> merge(List<int> left, List<int> right) {
//   List<int> result = [];
//   int leftIndex = 0;
//   int rightIndex = 0;

//   while (leftIndex < left.length && rightIndex < right.length) {
//     if (left[leftIndex] < right[rightIndex]) {
//       result.add(left[leftIndex]);
//       // print(result);
//       leftIndex++;
//     } else {
//       result.add(right[rightIndex]);
//       rightIndex++;
//       //print(result);
//     }
//   }
//   print(result);
//   result.addAll(left.sublist(leftIndex));
//   result.addAll(right.sublist(rightIndex));
//   return result;
// }

// void main() {
//   print(mergeSort([41, 3, 62, 38, 47,7,7,21]));
// }


List<int> merge(List<int> arr) {
  if (arr.length <= 1) {
    return arr;
  }

  int mid = arr.length ~/ 2;
  List<int> left = arr.sublist(0, mid);
  List<int> right = arr.sublist(mid);

  return mergeSort(merge(left), merge(right));
}

List<int> mergeSort(List<int> left, List<int> right) {
  List<int> result = [];
  int lf = 0;
  int rf = 0;

  while (lf < left.length && rf < right.length) {
    if (left[lf] < right[rf]) {
      result.add(left[lf]);
      lf++;
    } else {
      result.add(right[rf]);
      rf++;
    }
  }
  result.addAll(left.sublist(lf));
  result.addAll(right.sublist(rf));

  return result;
}

void main(List<String> args) {
  List<int> a = [45,8,5,6,99,66,33,21];

  print(merge(a));  
}
