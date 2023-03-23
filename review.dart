void heapify(List<int> a, int i) {
  int largest = i;
  int lf = i * 2;
  int rf = i * 2 + 1;

  while (lf <= a.length - 1 && a[lf] > a[largest]) {
    largest = lf;
  }
  while (rf <= a.length - 1 && a[rf] > a[largest]) {
    largest = rf;
  }
  if (largest != i) {
    int temp = a[largest];
    a[largest] = a[i];
    a[i] = temp;
   heapify(a, largest);
  }
}

void maxHeapBuild(List<int>a){
  for (var i = a.length~/2; i >=  0; i--) {
    heapify(a, i);
  }
}

void main(List<String> args) {
  List<int>a = [20,5,3,6,9,56,41];
  maxHeapBuild(a);
  print(a);
}