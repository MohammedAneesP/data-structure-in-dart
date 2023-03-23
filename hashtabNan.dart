class hashTable {
  List<int>? _keys;
  List<dynamic>? _values;
  int? _size;

  hashTable(int size) {
    _size = size;
    _keys = List<int>.filled(size, 0);
    _values = List<dynamic>.filled(size, null);
  }
  int _hash(int key) {
    return key % _size!;
  }

  void add(int key, dynamic value) {
    final index = _hash(key);
    _keys![index] = key;
    _values![index] = value;
  }

  dynamic get(int key) {
    final index = _hash(key);
    if (_keys![index] == key) {
      return _values![index];
    }
    return ;
  }
}

void main(List<String> args) {
  hashTable ob = hashTable(10);
  ob.add(45, "sugh");
  ob.add(2, "dhukk");
  ob.add(8, "aana");
  ob.add(12, "kuthra");

  print(ob.get(8));
  print(ob._values);
}