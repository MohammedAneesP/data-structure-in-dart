// class Hash {
//   List<List<Map<String, String>>>? values;
//   int? limit;

//   Hash(int size) {
//     this.limit = size;
//     values = List.generate(size, (_) => []);
//   }

//   int hashIn(String key) {
//     int hashKey = 0;
//     for (var i = 0; i < key.length; i++) {
//       hashKey = hashKey + key.codeUnitAt(i);
//     }
//     return hashKey % limit!;
//   }

//   void insertVal(String key, String val) {
//     int posi = hashIn(key);
//     bool keyExists = false;
//     for (var i = 0; i < values![posi].length; i++) {
//       var item = values![posi][i];
//       if (item.containsKey(key)) {
//         item[key] = val;
//         keyExists = true;
//         break;
//       }
//     }
//     if (!keyExists) {
//       values![posi].add({key: val});
//     }
//   }

//   void printingVal(String key) {
//     int posi = hashIn(key);
//     for (var item in values![posi]) {
//       if (item.containsKey(key)) {
//         print(item[key]);
//       }
//     }
//   }
// }

// void main(List<String> args) {
//   Hash it = Hash(7);
//   it.insertVal("p", "va");
//   it.insertVal("ke", "irangi");
//   it.insertVal("odi", "chadi");
//   it.insertVal("dio", "podi");
//   it.insertVal("idol", "mariyam");
//   it.insertVal("mnaanu", "povunnu");
//   it.insertVal("somali", "kondu");

//   it.printingVal("odi");
//   it.printingVal("p");
//   print(it.values);
//   print(it.values?.length);
// }




 
class Node {
  var data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  void add(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node? current = head;
      while (current?.next != null) {
        current = current?.next;
      }
      current?.next = newNode;
    }
  }
}

// void main() {
//   List list = List.filled(3, null);
//   LinkedList linkedList = LinkedList();
//   linkedList.add(1);
//   linkedList.add(2);
//   linkedList.add(3);
//   list[0] = linkedList;
  
//   print(list[0].head?.next.next.data); // prints 1
// }
