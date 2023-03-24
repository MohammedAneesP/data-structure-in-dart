

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

print("object");
}
