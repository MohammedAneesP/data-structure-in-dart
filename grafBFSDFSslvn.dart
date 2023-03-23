// import 'dart:collection';

// class Graph {
//   Map<int, List<int>> map = Map();
//   void addVertex(int data) {
//     map[data] = [];
//   }

//   void insert(int vertex, int edge, bool isBidirectional) {
//     //bool for checking the vertex is uni or bi directional
//     if (!map.containsKey(vertex)) {
//       addVertex(
//           vertex); //here we adding the the vertex into dart if it is not contain hash map
//     }
//     if (!map.containsKey(edge)) {
//       addVertex(
//           edge); //here also checking the edge contains on map if it is not contain the edge also be added on a key.
//     }
//     map[vertex]?.add(
//         edge); //here we adding the edge of the vertex into value in a list form
//     if (isBidirectional) {
//       map[edge]?.add(
//           vertex); //it it is bidirectional we need to add the cross direction that mean need to add the vertex intp value.
//     }
//   }

//   void primeOrNot() {
//     map.forEach((key, value) {
//       int flag = 0;
//       for (var i = 2; i <= key ~/ 2; i++) {
//         if (key % i == 0) {
//           flag = 1;
//           break;
//         }
//       }
//       if (flag == 0) {
//         print(key);
//       }
//     });
//   }

//   void display() {
//     for (int x in map.keys) {
//       String result = x.toString() + " -> ";
//       for (int y in map[x]!) {
//         result = result + y.toString() + " ";
//       }
//       print(result);
//     }
//   }

//   void bfs(int startVertex) {
//     Set<int> visited = Set<int>();
//     Queue<int> queue = Queue<int>();
//     visited.add(startVertex);
//     queue.add(startVertex);
//     while (queue.isNotEmpty) {
//       int currentVertex = queue.removeFirst();
//       print(currentVertex);
//       for (var edgeValue in map[currentVertex]!) {
//         if (!visited.contains(edgeValue)) {
//           queue.add(edgeValue);
//           visited.add(edgeValue);
//         }
//       }
//     }
//   }

//   void dfs(int startVertex) {
//     Set<int> visited = Set<int>();
//     dfsHelper(startVertex, visited);
//   }

//   dfsHelper(int startVertex, Set<int> visited) {
//     visited.add(startVertex);
//     print(startVertex);
//     for (var edgeValue in map[startVertex]!) {
//       if (!visited.contains(edgeValue)) {
//         dfsHelper(edgeValue, visited);
//       }
//     }
//   }
// }

// void main(List<String> args) {
//   Graph graph = Graph();
//   graph.insert(5, 3, true);
//   graph.insert(5, 4, false);
//   graph.insert(4, 7, false);
//   graph.insert(7, 8, true);
//   graph.insert(9, 4, true);
//   graph.insert(8, 10, false);
//   graph.display();
//   print('Bredth First Search');
//   //graph.bfs(4);
//   print('Depth Firs Search');

//   graph.dfs(4);
//   // graph.primeOrNot();
//   // print(graph.map[8]);
// }

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
