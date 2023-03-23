void heapin(List<int> a, int i) {
  int larg = i;
  int lf = i * 2;
  int rf = i * 2 + 1;

  while (lf <= a.length - 1 && a[lf] > a[larg]) {
    larg = lf;
  }
  while (rf <= a.length - 1 && a[rf] > a[larg]) {
    larg = rf;
  }
  if (larg != i) {
    int temp = a[i];
    a[i] = a[larg];
    a[larg] = temp;
    heapin(a, larg);
  }
}

void heapBuil(List<int> arr) {
  for (var i = arr.length ~/ 2; i >= 0; i--) {
    heapin(arr, i);
  }
}

void insertHeap(List<int> a, int data) {
  a.add(data);

  int i = a.length - 1;
  while (i >= 0) {
    int itsPrnt = i ~/ 2;
    if (a[i] > a[itsPrnt]) {
      int temp = a[itsPrnt];
      a[itsPrnt] = a[i];
      a[i] = temp;
      i = itsPrnt;
    }else{
      break;
    }
  }
}

void main(List<String> args) {
  List<int> lst = [20, 3, 6, 5, 1, 5, 4, 15];

  heapBuil(lst);
  print(lst);
  insertHeap(lst, 30);
  print(lst);
}
