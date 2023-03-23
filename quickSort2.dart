List<int> quickSort(List<int> arr) {
  if (arr.length == 0) {
    return arr;
  }
  int i = 0;
  int pivot = arr[arr.length - 1];
  for (var j = 0; j < arr.length; j++) {
    if (pivot > arr[j]) {
      int temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
      i++;
    }
  }
  int temp = arr[i];
  arr[i] = arr[arr.length - 1];
  arr[arr.length - 1] = temp;

  return [
    ...quickSort(arr.sublist(0, i)),
    pivot,
    ...quickSort(arr.sublist(i + 1))
  ];
}

void main() {
  print(quickSort([7, 8, 14, 21, 3, 4, 56, 10]));
}



// List quickSort(List<int> arr) {
//   if (arr.length <= 1) {
//     return arr;
//   }
//   int i = 0;
//   int pivot = arr[arr.length - 1];

//   for (var j = 0; j < arr.length; j++) {
//     if (arr[j] < pivot) {
//       int temp = arr[j];
//       arr[j] = arr[i];
//       arr[i] = temp;
//       i++;
//     }
//   }
//   int temp = arr[arr.length - 1];
//   arr[arr.length - 1] = arr[i];
//   arr[i] = temp;

//   return [
//     ...quickSort(arr.sublist(0, i)),
//     pivot,
//     ...quickSort(arr.sublist(i + 1))
//   ];
// }

// void main(List<String> args) {
//   List<int> a =[12,45,98,65,32,2,3];
//   print(quickSort(a));
// }
