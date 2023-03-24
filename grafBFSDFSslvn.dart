

import 'dart:collection';

class ClassName {
  Map<int, List<int>> mrMap = Map();

  void addGraphData(data) {
    mrMap.addAll({data: []});
  }

  void graphIns(int vert, int edgeValue, bool isBidirectional) {
    if (!mrMap.containsKey(vert)) {
      addGraphData(vert);
    }
    if (!mrMap.containsKey(edgeValue)) {
      addGraphData(edgeValue);
    }
    mrMap[vert]?.add(edgeValue);
    if (isBidirectional) {
      mrMap[vert]?.add(edgeValue);
    }
  }

  void bfsGrphTrvsL(int data) {
    Set<int> visiting = Set();
    Queue<int> que = Queue();

    visiting.add(data);
    que.add(data);
    while (que.isNotEmpty) {
      int curntVertex = que.removeFirst();
      print(curntVertex);
      for (var element in mrMap[curntVertex]!) {
        if (!visiting.contains(element)) {
          visiting.add(curntVertex);
          que.add(curntVertex);
        }
      }
    }
  }

  void depthFS(int data){
    Set<int>visiters = Set();
    depthFSHelp(visiters, data);
  }
  void depthFSHelp(Set<int>visit,int data){
    visit.add(data);
    print(data);
    for (var element in mrMap[data]!) {
      if(!visit.contains(element)){
        depthFSHelp(visit, element);
      }
    }
  }
}
