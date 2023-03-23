// class OneNode {
//   late int data;
//   OneNode? next;
//   OneNode(this.data);
// }

// OneNode? head;
// OneNode? tail;

// void createNode(int dataa) {
//   OneNode newNode = OneNode(dataa);

//   if (head == null) {
//     head = tail = newNode;
//   } else {
//     tail?.next = newNode;
//     tail = newNode;
//   }
// }

// void addNode(int nearTo, int data) {
//   OneNode newNode = OneNode(data);
//   OneNode? temp = head;

//   while (head != null && temp?.data != nearTo) {
//     temp = temp?.next;
//   }
//   if (temp == null) {
//     return;
//   }
//   if (temp == tail) {
//     tail?.next = newNode;
//     tail = newNode;
//     return;
//   }
//   newNode.next = temp.next;
//   temp.next = newNode;
// }

// void addAtBeginig(int daatas) {
//   OneNode newNode = OneNode(daatas);
//   newNode.next = head;
//   head = newNode;
//   return;
// }

// void deleteNode(int dataa) {
//   OneNode? temp = head, prev;

//   if (temp != null && temp.data == dataa) {
//     head = temp.next;
//     return;
//   }
//   while (temp != null && temp.data != dataa) {
//     prev = temp;
//     temp = temp.next;
//   }
//   if (temp == null) {
//     print("Not Found");
//     return;
//   }

//   if (temp == tail) {
//      tail=prev;
//     tail?.next = null;
//     return;
//   }

//   prev?.next = temp.next;
// }

// void findMiddleElmt() {
//   OneNode? first = head;
//   OneNode? second = head;
//   while (first != null && first.next != null) {
//     first = first.next?.next;
//     second = second?.next;
//     if (first?.next?.next == null) {
//       print(second?.data);
//       return;
//     }
//   }
//   print(second?.data);
// }

// void nodeDisplay() {
//   if (head == null) {
//     print("Empty");
//     return;
//   } else {
//     for (OneNode? temp = head; temp != null; temp = temp.next) {
//       print(temp.data);
//     }
//   }
// }

// void main(List<String> args) {
//   createNode(12);
//   createNode(24);
//   createNode(36);
//   createNode(56);
//   createNode(45);
//   createNode(30);

//   deleteNode(12);
//   deleteNode(30);
//   nodeDisplay();
//   print("ooooooo");
//   findMiddleElmt();
// }

class SlinkedList {
  late int data;
  SlinkedList? next;

  SlinkedList(this.data);
}

SlinkedList? head;
SlinkedList? tail;

void addNode(int data) {
  SlinkedList? newNode = SlinkedList(data);

  if (head == null) {
    head = tail = newNode;
  } else {
    tail?.next = newNode;
    tail = newNode;
  }
}

void deleteNode(int data) {
  SlinkedList? temp = head, prev;

  if (head == null) {
    print("empty");
    return;
  }
  if (temp != null && temp.data == data) {
    head = temp.next;
    return;
  }
  while (temp != null && temp.data != data) {
    prev = temp;
    temp = temp.next;
  }

  if (temp == tail) {
    tail = prev;
    tail?.next = null;
  }
  prev?.next = temp?.next;
}

void insertNode(int nextTo, int data) {
  SlinkedList? newNode = SlinkedList(data);
  SlinkedList? temp = head;

  if (head == null) {
    print("empty");
    return;
  }
  while (temp != null && temp.data != nextTo) {
    temp = temp.next;
  }
  if (temp != null && temp.data == nextTo) {
    newNode.next = temp.next;
    temp.next = newNode;
  }
  if (temp == tail) {
    tail?.next = newNode;
    tail = newNode;
  }
}

void insertAtBegng(int data) {
  SlinkedList? newNode = SlinkedList(data);

  if (head == null) {
    print("empty");
    return;
  }
  newNode.next = head;

  head = newNode;
}

void findMiddleElmt() {
  SlinkedList? first = head;
  SlinkedList? second = head;

  if (head == null) {
    print("empty");
  }
  while (first != null) {
    first = first.next?.next;
    second = second?.next;
    if (first?.next?.next == null) {
      print(second?.data);
      return;
    }
  }
  print(second?.data);
}

void displayNode() {
  if (head == null) {
    print("empty");
    return;
  }
  SlinkedList? temp = head;

  while (temp != null) {
    print(temp.data);
    temp = temp.next;
  }
}

void main(List<String> args) {
  addNode(15);
  addNode(30);
  addNode(45);
  addNode(60);

  insertAtBegng(5);
  insertAtBegng(1);

  insertNode(15, 75);

  //deleteNode(60);
  
  displayNode();
  print("---------------------");

  findMiddleElmt();
}
