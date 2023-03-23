class suffixTrie {
  Map<String, suffixTrie?> children = Map<String, suffixTrie?>();
  dynamic endSymbol = '*';
  suffixTrie? root;

  suffixTrie() {
    root = this;
  }

  void Trie(String str) {
    populateSuffixTrie(str);
  }

  void populateSuffixTrie(String str) {
    for (var i = 0; i < str.length; i++) {
      insertingSubstringStartingAt(i, str);
    }
  }

  void insertingSubstringStartingAt(int index, String str) {
    suffixTrie? node = root;
    for (var i = index; i < str.length; i++) {
      String letter = str[i];
      if (!node!.children.containsKey(letter)) {
        suffixTrie? newNode = suffixTrie();
        node.children[letter] =
            newNode; //here we adding the key and settinf the value is new node.
      }
      node = node.children[
          letter]!; //here the node contain the value of this key letter.
      //the value of the key is new node.the new node will assign into the node.
    }
    node?.children[endSymbol] = null;
  }

  bool valueContains(String str) {
    suffixTrie? node = root;
    for (var i = 0; i < str.length; i++) {
      String letter = str[i];
      if (!node!.children.containsKey(letter)) {
        return false;
      }
      node = node.children[letter];
    }
    return node!.children.containsKey(endSymbol);
  }
}

void main(List<String> args) {
  suffixTrie trie = suffixTrie();
  trie.Trie("manna");
  print(trie.valueContains('anna'));
}
