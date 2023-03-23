int partition(List<int> a, int lb, int rb) {
  int pivot = a[lb];
  int start = lb;
  int end = rb;

  while (start < end) {
    while (a[start] <= pivot && start < rb) {
      start++;
    }
    while (a[end] > pivot && end > lb) {
      end--;
    }
    if (start < end) {
      int temp = a[start];
      a[start] = a[end];
      a[end] = temp;
    }
  }
  int temp = a[lb];
  a[lb] = a[end];
  a[end] = temp;

  return end;
}

void quickSort(List<int> arr, int left, int right) {
  if (left < right) {
    int loc = partition(arr, left, right);
    quickSort(arr, left, loc - 1);
    quickSort(arr, loc + 1, right);
  }
}

void main(List<String> args) {
  List<int> array = [45, 3, 2, 6, 9, 5, 85, 45];
  quickSort(array, 0, array.length - 1);
  print(array);
}
