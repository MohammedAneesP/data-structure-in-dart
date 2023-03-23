void main(List<String> args) {
  List<int> a = [20, 30, 45, 85, 40, 9, 8, 5, 11];
  int num = 45;
  int l = 0;
  var r = a.length - 1;
  a.sort();
  print(a);
  while (l <= r) {
    var mid = l + ((r - l) ~/ 2);
    if (a[mid] == num) {
      print(mid);
      return;
    } else if (num < a[mid]) {
      r = mid - 1;
    } else {
      l = mid + 1;
    }
  }

  print("upanyasam");
  print("marthandan");
  print("aravana payasam");
  print("valsalyam");

  print("suratippa");
  print("marottichal");
  print("irinjalakuda");

}


