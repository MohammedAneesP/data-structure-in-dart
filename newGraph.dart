import 'dart:collection';

class AnGrapg {
  Map<dynamic, List<dynamic>> theMap = Map();

  void newVert(int data) {
    theMap.addAll({data: []});
  }

  void addvert(int vertex, int edge, bool isBidirectional) {
    if (!theMap.containsKey(vertex)) {
      newVert(vertex);
    }
    if (!theMap.containsKey(edge)) {
      newVert(edge);
    }
    theMap[vertex]?.add(edge);
    if (isBidirectional) {
      theMap[edge]?.add(vertex);
    }
  }

  void deletVert(int data) {
    theMap.remove(data);
    theMap.forEach((key, value) {
      theMap[key]?.remove(data);
    });
  }

  void brdthFstSrch(int data) {
    Set<int> visits = Set();
    Queue<int> q = Queue();
    visits.add(data);
    q.add(data);
    while (q.isNotEmpty) {
      int currentVal = q.removeFirst();
      print(currentVal);
      for (var element in theMap[currentVal]!) {
        if (!visits.contains(element)) {
          visits.add(element);
          q.add(element);
        }
      }
    }
  }



  void dfs(int data) {
    Set<int> visi = Set();
    dfsHelpr(visi, data);
  }

  void dfsHelpr(Set<int> visti, int data) {
    visti.add(data);
    print(data);
    for (var element in theMap[data]!) {
      if (!visti.contains(element)) {
        dfsHelpr(visti, element);
      }
    }
  }
}
