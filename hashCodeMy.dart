class Hash {
  List<List<String>>? values;
  int? limit;
  Hash(int size) {
    this.limit = size;
    values = List.generate(size, (_) => []);
  }
  int hashIn(String key) {
    int hashKey = 0;
    for (var i = 0; i < key.length; i++) {
      hashKey = hashKey + key.codeUnitAt(i);
    }
    return hashKey % limit!;
  }

  void insertVal(String key, String val) {
    int posi = hashIn(key);
    values![posi].add(val);
  }

  void printingVal(String key) {
    int posi = hashIn(key);
    print(values![posi].toString());
  }
}

void main(List<String> args) {
  Hash it = Hash(5);
  it.insertVal("po", "va");
  it.insertVal("keri", "irangi");
  it.insertVal("odi", "chadi");
  it.insertVal("kaanunnu", "povunnu");

  it.printingVal("odi");
  it.printingVal("po");
  print(it.values);
}


// class HashTable {
//   final int _size;
//   final List<List<_Entry>> _table;

//   HashTable(this._size) : _table = List.generate(_size, (_) => []);

//   int _hash(String key) {
//     int hash = 0;
//     for (int i = 0; i < key.length; i++) {
//       hash = (31 * hash + key.codeUnitAt(i)) % _size;
//     }
//     return hash;
//   }

//   void put(String key, String value) {
//     int index = _hash(key);
//     for (_Entry entry in _table[index]) {
//       if (entry.key == key) {
//         entry.value = value;
//         return;
//       }
//     }
//     _table[index].add(_Entry(key, value));
//   }

//   String get(String key) {
//     int index = _hash(key);
//     for (_Entry entry in _table[index]) {
//       if (entry.key == key) {
//         return entry.value;
//       }
//     }
//     return "fk";
//   }

//   void remove(String key) {
//     int index = _hash(key);
//     for (int i = 0; i < _table[index].length; i++) {
//       if (_table[index][i].key == key) {
//         _table[index].removeAt(i);
//         return;
//       }
//     }
//   }

//   void printTable() {
//     for (int i = 0; i < _size; i++) {
//       print('$i: ${_table[i]}');
//     }
//   }
// }

// class _Entry {
//   final String key;
//   String value;

//   _Entry(this.key, this.value);

//   @override
//   String toString() => '$key:$value';
// }

// void main() {
//   HashTable table = HashTable(5);
//   table.put('apple', 'red');
//   table.put('banana', 'yellow');
//   table.put('cherry', 'red');
//   table.put('date', 'brown');
//   table.put('elderberry', 'purple');
//   table.put('fig', 'purple');
//   table.put('gif','mandi');
//   table.put('grape', 'purple');
//   table.put('kiwi', 'brown');
//   table.put('lemon', 'yellow');
//   table.put('mango', 'orange');
//   table.printTable();

  // print('get(mango) = ${table.get('mango')}');
  // print('get(lemon) = ${table.get('lemon')}');
  // table.remove('kiwi');
  // table.remove('lemon');
  // table.printTable();
// }




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
//   add(80);
//   add(81);

//   print(grades); 
// }