List<int> a = [15, 45, 9, 6, 33, 2];

void main(List<String> args) {
  enque(12);
  //deque();
  pop();
  push(55);
  print(a);
}

void enque(int data) {
  a.add(data);
}

void deque() {
  a.remove(a[0]);
}

void pop() {
  for (var i = 0; i < a.length / 2; i++) {
    int temp = a[a.length - 1 - i];
    a[a.length - 1 - i] = a[i];
    a[i] = temp;
  }
  deque();
  for (var i = 0; i < a.length / 2; i++) {
    int temp = a[a.length - 1 - i];
    a[a.length - 1 - i] = a[i];
    a[i] = temp;
  }
}

void push(int data) {
  enque(data);
}
