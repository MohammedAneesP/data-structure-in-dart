// class AddNode {
//   late int data;
//   AddNode? next;
//   AddNode? prev;

//   AddNode(this.data);
// }

// AddNode? head;
// AddNode? tail;

// void oneNode(int daata) {
//   AddNode newNode = AddNode(daata);
//   if (head == null) {
//     head = newNode;
//     head?.prev = null;
//   } else {
//     tail?.next = newNode;
//     newNode.prev = tail;
//   }
//   tail = newNode;
// }

// void addNewNode(int nextTo, int value) {
//   AddNode newNode = AddNode(value);
//   AddNode? temp = head;

//   while (temp != null && temp.data != nextTo) {
//     temp = temp.next;
//   }
//   if (temp == null) {
//     print('not found');
//     return;
//   }
//   if (temp == tail) {
//     tail?.next = newNode;
//     tail = newNode;
//     tail?.prev = temp;
//     return;
//   }
//   newNode.next = temp.next;
//   newNode.prev = temp;
//   temp.next = newNode;
// }

// void newNodeaAtBegng(int data) {
//   print("message");
//   AddNode newNode = AddNode(data);

//   newNode.next = head;
//   head?.prev = newNode;
//   head = newNode;
//   head?.prev = null;
// }

// void viewNode() {
//   AddNode? temp = head;
//   if (head == null) {
//     print("empty");
//     return;
//   }
//   while (temp != null) {
//     print(temp.data);
//     temp = temp.next;
//   }
// }

// void reverse() {
//   AddNode? temp = tail;
//   while (temp != null) {
//     print(temp.data);
//     temp = temp.prev;
//   }
// }

// void main(List<String> args) {
//   oneNode(10);
//   oneNode(15);
//   oneNode(20);

//   newNodeaAtBegng(5);
//   viewNode();
//   print("next reverse");

//   reverse();
// }

class DoublyNode {
  late int data;
  DoublyNode? next;
  DoublyNode? prev;
  DoublyNode(this.data);
}

DoublyNode? head;
DoublyNode? tail;

void addANode(int data) {
  DoublyNode newNode = DoublyNode(data);
  if (head == null) {
    head = newNode;
    head?.prev = null;
  } else {
    tail?.next = newNode;
    newNode.prev = tail;
    tail = newNode;
  }
  tail = newNode;
}

void insertBeging(int data) {
  DoublyNode newNode = DoublyNode(data);

  newNode.next = head;
  head?.prev = newNode;
  head = newNode;
}

void insertafter(int after, int data) {
  DoublyNode newNode = DoublyNode(data);
  DoublyNode? temp = head;

  while (temp != null && temp.data != after) {
    temp = temp.next;
  }
  if (temp == null) {
    print("Not found");
    return;
  }
  if (temp == tail) {
    tail?.next = newNode;
    tail = newNode;
    tail?.prev = temp;

    return;
  }
  newNode.next = temp.next;
  newNode.prev = temp;
  temp.next?.prev = newNode;
  temp.next = newNode;
}

void insertbefore(int before, int data) {
  DoublyNode newNode = DoublyNode(data);
  DoublyNode? temp = head;

  while (temp != null && temp.data != before) {
    temp = temp.next;
  }
  if (temp == null) {
    print("not found");
    return;
  }
  if (temp == head) {
    temp.prev = newNode;
    newNode.next = temp;
    head = newNode;
    head?.prev = null;
  }
  newNode.next = temp;
  newNode.prev = temp.prev;
  temp.prev?.next = newNode;
  temp.prev = newNode;
}

void deleteDoubly(int data) {
  DoublyNode? temp = head, prev;

  if (temp != null && temp.data == data) {
    head = temp.next;
    head?.prev = null;
    return;
  }
  while (temp != null && temp.data != data) {
    prev = temp;
    temp = temp.next;
  }
  if (temp == null) {
    print("invalid");
    return;
  }
  if (temp == tail) {
    tail = tail?.prev;
    tail?.next = null;
    return;
  }

  prev?.next = temp.next;
  prev = temp.prev;
}

void displayDoubly() {
  if (head == null) {
    print("empty");
    return;
  }
  for (DoublyNode? temp = head; temp != null; temp = temp.next) {
    print(temp.data);
  }
}

void doublyReverse() {
  if (head == null) {
    print("empty");
    return;
  }
  DoublyNode? temp = tail;
  while (temp != null) {
    print(temp.data);
    temp = temp.prev;
  }
}

void middlelmnt() {
  DoublyNode? first = head;
  DoublyNode? second = head;

  if (head == null) {
    print("empty");
    return;
  }
  while (first != null && first.next != null) {
    first = first.next?.next;
    second = second?.next;
    if (first?.next?.next == null) {
      print(second?.data);
      return;
    }
  }
  print(second?.data);
}



void main(List<String> args) {
  addANode(6);
  addANode(8);
  addANode(10);
  addANode(25);

  insertafter(6, 9);

  insertBeging(4);
  insertbefore(10, 11);
  // deleteDoubly(10);
  displayDoubly();
  // print("next");
  // doublyReverse();
  print("object");
  middlelmnt();
}
