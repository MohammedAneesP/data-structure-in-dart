void main(List<String> args) {
  List<int> a = [2, 2, 3, 4, 6, 6, 7, 6, 2];
  int count = 0;
  int num = 2;

  for (var i = 0; i < a.length; i++) {
    if (a[i] == num) {
      count++;
    } else {
      a[i - count] = a[i];
    }
  }
  for (var i = a.length-count; i < a.length; i++) {
    a[i]= num;
  }
  for (var i = 0; i < a.length; i++) {
    print(a[i]);
  }
}
