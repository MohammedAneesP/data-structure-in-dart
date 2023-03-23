
List<int>q = [];


void heapiBuil(List<int> arr) {
  for (var i = arr.length ~/ 2; i >= 0; i--) {
    heapify(arr, i);
  }
}

void heapify(List<int> a, int i) {
  int larg = i;
  int lf = i * 2;
  int rf = i * 2 + 1;

  while (lf < a.length && a[larg] < a[lf]) {
    larg = lf;
  }
  while (rf < a.length && a[larg] < a[rf]) {
    larg = rf;
  }
  if (larg!= i) {
    int temp = a[i];
    a[i] = a[larg];
    a[larg] = temp ;
    heapify(a, larg);
  }

}

void delte(List<int>arr){
  q.add(arr[0]);
  arr[0] = arr[arr.length-1];
  arr.remove(arr[arr.length-1]);
  heapify(arr, 0);

}
void main(List<String> args) {
  List<int> array = [23,6,9,1,2,11,45];
  heapiBuil(array);
  print(array);
 delte(array);
 print(q);
}
