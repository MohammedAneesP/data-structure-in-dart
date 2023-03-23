void minHeapify(List<int> a, int i) {
  int smallest = i;
  int lf = i * 2;
  int rt = i * 2 + 1;

  while (lf <= a.length - 1 && a[lf] < a[smallest]) {
    smallest = lf;
  }
  while (rt <= a.length - 1 && a[rt] < a[smallest]) {
    smallest = rt;
  }
  if (smallest != i) {
    int temp = a[smallest];
    a[smallest] = a[i];
    a[i] = temp;
    minHeapify(a, smallest);
  }
}

void minHeapBuild(List<int> a) {
  for (var i = a.length - 1 ~/ 2; i >= 0; i--) {
    minHeapify(a, i);
  }
}

void minHeapIns(int val, List<dynamic> arr) {
  arr.add(val);

  int i = arr.length - 1;
  while (i > 0) {
    int parent = i ~/ 2;
    if (arr[parent] > arr[i]) {
      int temp = arr[parent];
      arr[parent] = arr[i];
      arr[i] = temp;
      i = parent;
    } else {
      break;
    }
  }
}

void minDel(List<int> a) {
  a[0] = a[a.length - 1];
  a.remove(a[a.length - 1]);
  minHeapify(a, 0);
}

void main(List<String> args) {
  List<int> array = [17, 20, 30, 1, 5, 10, 15];
  minHeapBuild(array);
  minDel(array);
  print(array);

  minHeapIns(21, array);
  print("---------");
  print(array);
}
