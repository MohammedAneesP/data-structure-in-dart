void main(List<String> args) {
  List<int> a = [45, 8, 9, 78, 6, 33, 21];

  for (var i = 0; i < a.length; i++) {
    int min = i;

    for (var j = i + 1; j < a.length; j++) {
      if (a[min] > a[j]) {
        min = j;
      }
    }
    if (min != i) {
      int temp = a[i];
      a[i] = a[min];
      a[min] = temp;
    }
  }
  print(a);
}
