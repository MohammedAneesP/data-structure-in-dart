// void main(List<String> args) {
//   List<int> mainArray = [2, 89, 99, 8, 3,7,111, 56,3, 72];
//   late int temp;
//   for (var i = 1; i < mainArray.length; i++) {
//     for (var j = i; j >= 0; j--) {
//       if (j > 0 && mainArray[j] < mainArray[j - 1]) {
//         temp = mainArray[j];
//         mainArray[j] = mainArray[j - 1];
//         mainArray[j - 1] = temp;
//       }
//     }
//   }
//   print(mainArray);
// }

void main(List<String> args) {
  List<int> a = [12, 5, 4, 8, 98, 65, 2];
  for (var i = 1; i < a.length; i++) {
    int temp = a[i];
    int j = i - 1;

    while (j >= 0 && a[j] > temp) {
      a[j + 1] = a[j];
      j--;
    }
    a[j + 1] = temp;
  }
  print(a);
}
