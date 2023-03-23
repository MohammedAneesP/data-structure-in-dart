int factorial(int number) {
  if (number <= 1) {
    return 1;
  }
  return number * factorial(number - 1);
}

void main(List<String> args) {
  print(factorial(5));
}
