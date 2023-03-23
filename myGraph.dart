class MyGraph {
  Map<int, List<int>?> myMap = Map();

  void addVertex(int data) {
    myMap.addAll({data: []});
  }

  void insertVert(int vertex, int edge, bool isBidirectional) {
    if (!myMap.containsKey(vertex)) {
      addVertex(vertex);
    }
    if (!myMap.containsKey(edge)) {
      addVertex(edge);
    }
    myMap[vertex]?.add(edge);
    if (isBidirectional) {
      myMap[edge]?.add(vertex);
    }
  }

  void vertexDeletion(int vertex) {
    if (!myMap.containsKey(vertex)) {
      return;
    }
    myMap.remove(vertex);
    myMap.forEach((key, value) {
      value?.remove(vertex);
    });
  }

  void displayGraph() {
    myMap.forEach((key, value) {
      print("$key $value");
    });
  }
}

void main(List<String> args) {
  MyGraph myg = MyGraph();
  myg.insertVert(3, 5, true);
  myg.insertVert(3, 4, true);
  myg.insertVert(5, 6, false);

  myg.displayGraph();

  myg.vertexDeletion(3);
  print("---------");
  myg.displayGraph();
}
