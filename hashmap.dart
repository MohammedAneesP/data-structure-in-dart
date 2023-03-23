class HashTable {
  List<List<String>>? values;
  int? limit;
  HashTable(int size) {
    this.limit = size;
    values = List.generate(size, (_) => []);
  }
  int hashCod(String key) {
    int hash = 0;
    for (var i = 0; i < key.length; i++) {
      hash = hash + key.codeUnitAt(i);
      //here the string comes to hashcode and in for loop we take the i that containing
      //a character from the character we take ascii value it will be add on to the
      //hash after the ending of loop we will get the entire string ascii value in hash.
    }
    //from here we return the postion of the value need to add.
    return hash % limit!;
  }

  void insert(String key, String value) {
    int index = hashCod(key);
    values![index].add(value);
  }
  String retrieve(String key) {
    int index = hashCod(key);
    return values![index].toString();
  }
}
void main(List<String> args) {
  HashTable ht = HashTable(5);
  ht.insert("Apple", "A sweet red fruit");
  ht.insert("Banana", "A yellow curved fruit");
  ht.insert("Cherry", "A small red fruit");
  ht.insert("Name", "Shelvin");
  print(ht.retrieve("Apple"));
 // print(ht.retrieve("Banana"));
  print(ht.retrieve("Name"));
  // print(ht.retrieve("Cherry"));
  print(ht.retrieve("key"));
}
