class MyTrie {
  Map<String, MyTrie?> childrens = Map();
  MyTrie? root;
  String theEnd = "*";

  MyTrie() {
    root = this;
  }

  void trieString(String str) {
    for (var i = 0; i < str.length; i++) {
      subStringStrtAt(i, str);
    }
  }

  void subStringStrtAt(int index, String str) {
    MyTrie? aNode = root;

    for (var i = index; i < str.length; i++) {
      String letter = str[i];
      if (!aNode!.childrens.containsKey(letter)) {
        MyTrie newNode = MyTrie();
        aNode.childrens[letter] = newNode;
      }

      aNode = aNode.childrens[letter]!;
    }

    aNode!.childrens[theEnd] = null;
  }

  void containString(String val) {
    MyTrie? aNode = root;
    for (var i = 0; i < val.length; i++) {
      String letter = val[i];
      if (!aNode!.childrens.containsKey(letter)) {
        print("$val" + " not here");
        return;
      }
      aNode = aNode.childrens[letter];
    }
    if (aNode!.childrens.containsKey(theEnd)) {
      print("$val" + " it's here");
    }
  }

  void printWordsStartingWith(String prefix) {
    MyTrie? aNode = root;
    for (var i = 0; i < prefix.length; i++) {
      String letter = prefix[i];
      if (!aNode!.childrens.containsKey(letter)) {
        print("No words found with the prefix $prefix");
        return;
      }
      aNode = aNode.childrens[letter];
    }
    printWords(aNode, prefix);
  }

  void printWords(MyTrie? node, String prefix) {
    if (node!.childrens.isEmpty) {
      print(prefix);
      return;
    }
    if (node.childrens.containsKey(theEnd)) {
      print(prefix);
    }
    for (var i = 0; i < node.childrens.length; i++) {
      String key = node.childrens.keys.elementAt(i);
      if (key == "*") {
        continue;
      }
      MyTrie? childNode = node.childrens[key];
      String newPrefix = prefix + key;
      printWords(childNode, newPrefix);
    }
  }

  void deleteString(String str) {
    MyTrie? aNode = root;
    List<MyTrie?> nodesList = [root];
    // Traverse through the trie to find the node that represents the string to be deleted.
    for (var i = 0; i < str.length; i++) {
      String letter = str[i];
      if (!aNode!.childrens.containsKey(letter)) {
        print("$str is not present in the trie.");
        return;
      }
      aNode = aNode.childrens[letter];
      nodesList.add(aNode);
    }

    // Unmark the node that represents the string to be deleted.
    if (!aNode!.childrens.containsKey(theEnd)) {
      print("$str is not present in the trie.");
      return;
    }
    aNode.childrens.remove(theEnd);

    // Traverse back from the last character to the first character of the string and remove the nodes if they are not needed.
    for (int i = nodesList.length - 1; i > 0; i--) {
      MyTrie? currNode = nodesList[i];

      MyTrie? parentNode = nodesList[i - 1];

      if (currNode!.childrens.isEmpty &&
          currNode != root &&
          !currNode.childrens.containsKey(theEnd)) {
        //print(str[i-1]);
        parentNode!.childrens.remove(str[i - 1]);
      } else {
        break;
      }
    }
    print("$str deleted successfully from the trie.");
  }
}

void main(List<String> args) {
  MyTrie obj = MyTrie();
  List<String> arr = ["into", "inOn", "iAt", "infra"];
  for (var i = 0; i < arr.length; i++) {
    obj.trieString(arr[i]);
  }
  obj.printWordsStartingWith("inOn");
}
