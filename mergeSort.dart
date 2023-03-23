void mergeSort(List<int> arr, int lb, int rb) {
  if (lb < rb) {
    int mid = (lb+rb) ~/ 2;

    mergeSort(arr, lb, mid);
    mergeSort(arr, mid + 1, rb);
    arrayMerging(arr, lb, mid, rb);
  }
}

List<int> b = [];

void arrayMerging(List<int> a, int l, int m, int r) {
  int i = l;
  int j = m + 1;

  int k = l;

  b = List.filled(a.length, 0);

  while (i <= m && j <= r) {
    if (a[i] <= a[j]) {
      b[k] = a[i];
      i++;
      k++;
    } else {
      b[k] = a[j];
      j++;
      k++;
    }
  }
  if (i > m) {
    while (j <= r) {
      b[k] = a[j];
      j++;
      k++;
    }
  } else {
    while (i <= m) {
      b[k] = a[i];
      i++;
      k++;
    }
  }
  a.setRange(l, r+1, b.sublist(l, r+1));
}

void main(List<String> args) {
  List<int> array = [12, 5, 8, 9, 5, 6, 33];
  mergeSort(array, 0, array.length - 1);
  print(b);
}


