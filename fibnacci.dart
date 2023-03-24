// void main(List<String> args) {
//   int a = 0;
//   int b = 1;

//   print(a);
//   for (var i = 0; i < 5; i++) {
//     int c = a + b;
//     print(c);
//     a = b;
//     b = c;
//   }
// }
int counter = 0;
int num1 = 0;
int num2 = 1;
int num3 = 0;
void fibnocci(int number) {
  if (counter >= number) {
    return;
  }

  while (counter < number) {
    print(num3);
    num3 = num1 + num2;

    num1 = num2;
    num2 = num3;
    counter++;
  }
  fibnocci(number);
}

void main(List<String> args) {
  fibnocci(4);
}
