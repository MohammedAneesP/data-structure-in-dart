void main(List<String> args) {
  List<int> k = [1,2,3,4];
  sumArray(k);
  print(b);
}

List<int> b = [];
void sumArray(List<int> a) {
  for (var i = 0; i < a.length; i++) {
    var c = 0;
    if (i == 0) {
      b.add(a[i]);
    } else {
      for (var j = 0; j <= i; j++) {
        c = a[j] + c;
      }
      b.add(c);
    }
  }
}
