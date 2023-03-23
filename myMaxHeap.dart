void heapify(List<int> arr, int i) {
  int largest = i;
  int lft = 2 * i;
  int rgt = (2 * i) + 1;

  while (lft <= arr.length - 1 && arr[lft] > arr[largest]) {
    largest = lft;
  }
  while (rgt <= arr.length - 1 && arr[rgt] > arr[largest]) {
    largest = rgt;
  }
  if (largest != i) {
    int temp = arr[largest];
    arr[largest] = arr[i];
    arr[i] = temp;
    heapify(arr, largest);
  }
}

void heapBuild(List<int> a) {
  for (var i = a.length - 1 ~/ 2; i >= 0; i--) {
    heapify(a, i);
  }
}

void heapDel(List<int> a) {
  a[0] = a[a.length - 1];
  a.remove(a[a.length - 1]);
  heapify(a, 0);
}

void heapInsert(int val, List<int> a) {
  a.add(val);

  int i = a.length - 1;
  while (i > 0) {
    int parent = i ~/ 2;
    if (a[parent] < a[i]) {
      int temp = a[parent];
      a[parent] = a[i];
      a[i] = temp;
      i = parent;
    } else {
      break;
    }
  }
}

void main(List<String> args) {
  List<int> array = [20, 3, 6, 5, 1, 5, 4, 15];
  heapBuild(array);
  print(array);
  print("----------------");
  heapDel(array);
  print(array);
  print("----------------");
  heapInsert(20, array);
  print(array);
  print("----------------");
  heapDel(array);
  print(array);
}
