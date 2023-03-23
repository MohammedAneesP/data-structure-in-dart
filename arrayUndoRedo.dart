

List<int> newArr = [];
int k = 0;
int h = 0;

void delete(List<int> arr) {
  for (var i = 0; i < arr.length; i++) {
    k = arr[i];
  }
  newArr.add(k);
  arr.remove(k);
}

void addBack(List<int>array)
{
 for (var i = 0; i < newArr.length; i++) {
   h = newArr[i];
 }
 array.add(h);
 newArr.remove(h);
}
void main(List<String> args) {
  List<int> a = [15, 8, 4, 25, 96, 31];
  delete(a);
  delete(a);
  print(newArr);
  print(a);
  addBack(a);
  addBack(a);
  print(a);
  print(newArr);
}
