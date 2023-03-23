
// void main() {
//   Map<int, int> grades = Map();
//   void add(data) {
//     int sum = 0;
//     int temp = data;
    
//     while (temp != 0) {
//       int rem = temp % 10;
//       temp = temp ~/ 10;
//       sum = sum + rem;
//     }
//     grades[sum] = data;
//   }


//   add(10);
//   add(95);
//   add(90);
//   add(80);
//   add(81);

//   print(grades); 
// }




void main() {
  Map<int, List<int>> grades = Map();
  void add(data) {
    int sum = 0;
    int temp = data;

    while (temp != 0) {
      int rem = temp % 10;
      temp = temp ~/ 10;
      sum = sum + rem;
    }
    if (grades.containsKey(sum)) {
      grades[sum]!.add(data);
    } else {
      grades[sum] = [data];
    }
  }

  

  add(7);
  add(9);
  add(30);
  add(8);
  add(3);
  add(70);
  add(14);
  add(99);

  print(grades);
  print(grades[3]);
  print(grades.length);
}