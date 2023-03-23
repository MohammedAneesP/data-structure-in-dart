void sayHi(int count) {
  if (count < 1) {
    return;
  }
  print("hi");
  sayHi(count - 1);
}

void main() {
  sayHi(5);
}
