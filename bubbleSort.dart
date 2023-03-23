

void main(List<String> args) {
  List<int> bubl = [15, 45, 2,32,71, 6, 8, 7];

  for (var i = 0; i < bubl.length - 1 - i; i++) {
    int flag = 0;
    for (var j = 0; j < bubl.length - 1 - i; j++) {
      if (bubl[j] > bubl[j + 1]) {
        int temp = bubl[j];
        bubl[j] = bubl[j + 1];
        bubl[j + 1] = temp;
        flag = 1;
      }
    }
    if (flag == 0) {
      break;
    }
  }
  print(bubl);
}
