void main(List<String> args) {
  List a =<int> [2, 4, 6, 5, 6, 9, 6, 2];
  int num = 6;
  late int temp;
  

  for (var i = 0; i < a.length - 1; i++) {
    for (var j = i + 1; j < a.length; j++) {
      if (a[i] == num) {
        temp = a[i];
        a[i] = a[j];
        a[j] = temp;
      }
    }
  }
  // for (var i = 0; i < a.length; i++) {
  //   if (a[i] == 6) {
  //     for (var j = a.length; j >= i; j--) {
  //       a[j + 1] = a[j];
  //     }
  //     a[i] = number;
  //     a.length++;
  //   }
  // }
 // a.insert(5, 10);
   //a.add(3);
  print(a);
}
