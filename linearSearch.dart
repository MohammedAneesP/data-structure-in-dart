void main(List<String> args) {
  List<int> a = [12, 45, 86, 98, 7, 5];
  int num = 99;
  int flag = 0;
  for (var i = 0; i < a.length; i++) {
    if (a[i] == num) {
      flag++;
      print(i);
      
    } 
  }
  if(flag==0){
    print('not found');
  }
}
