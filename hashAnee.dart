class MyHash {
  List<List<dynamic>>?values;
  int? size;

  MyHash(int limit){
    this.size = limit;
    values = List.generate(limit, (_) => []);
  }

  int hashing(int key){
    return key % size!;
  }

  void insertVal(int key, dynamic val){
    int position = hashing(key);
    values![position].add(val);
  }
  void printVal(int key){
    int position = hashing(key);
    print(values![position]);
  }
}

void main(List<String> args) {
  MyHash ob = MyHash(5);
  ob.insertVal(8, "lkmk");
  ob.insertVal(1, "popop");
  ob.insertVal(14, "ninin");

  ob.printVal(8);
  print(ob.values);
}
