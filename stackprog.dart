// class Anode {
//   late int data;
//   Anode? next;
//   Anode(this.data);
// }

// Anode? top;

// int size = 0;
// Anode? end;

// void push(int data) {
//   Anode newNode = Anode(data);

//   if (top == null) {
//     top = newNode;

//     size++;
//   } else {
//     newNode.next = top;
//     top = newNode;
//     size++;
//   }
// }

// void pop() {
//   if (top == null) {
//     print("empty");
//     return;
//   }
//   if (top != null) {
//     top = top?.next;
//   }
// }

// void middledisplay() {
//   print("***************");
//   print(size);
//   int mid = (size ~/ 2) + 1;
//   Anode? temp = top;
//   while (size > 0) {
//     if (size == mid) {
//       print(temp?.data);
//     }
//     temp = temp?.next;
//     size--;
//   }
// }

// void middleElmnt() {
//   Anode? first = top;
//   Anode? second = top;
//   Anode? prev = top;

//   if (first == null) {
//     return;
//   }
//   while (first != null) {
//     first = first.next?.next;
//     prev = second;
//     second = second?.next;

//     if (first?.next?.next == null) {
//       prev?.next = second?.next;
//       print(second?.data);
//       return;
//     }
//   }
//   prev?.next = second?.next;
//   print(second?.data);
// }

// void displayStack() {
//   if (top == null) {
//     print("Empty");
//     return;
//   }
//   while (top != null) {
//     print(top?.data);
//     top = top?.next;
//   }
// }

// void main(List<String> args) {
//   push(4);
//   push(8);
//   push(12);
//   push(16);
//   push(7);
//   push(15);
//   push(41);
//   push(61);

//   middleElmnt();
//   displayStack();
//   print("-----------------------");

// }

// class StackClass {
//   late int data;
//   StackClass? next;

//   StackClass(this.data);
// }

// StackClass? top;

// void push(int data) {
//   StackClass? newNode = StackClass(data);

//   if (top == null) {
//     top = newNode;
//   } else {
//     newNode.next = top;
//     top = newNode;
//   }
// }

// void pop() {
//   if (top == null) {
//     return;
//   }
//   StackClass? temp = top;
//   top = temp?.next;
// }

// void stkDisplay() {
//   if (top == null) {
//     print("nothing");
//     return;
//   }
//   StackClass? temp = top;
//   while (temp != null) {
//     print(temp.data);
//     temp = temp.next;
//   }
// }

// void main(List<String> args) {
//   push(10);
//   push(35);
//   push(21);
//   push(2);

//   stkDisplay();
// }

class stackpo {
  int? data;
  stackpo? next;

  stackpo(this.data);
}

stackpo? top;

void push(int data) {
  stackpo? newNode = stackpo(data);

  if (top == null) {
    top = newNode;
    size++;
  } else {
    newNode.next = top;
    top = newNode;
    size++;
  }
}

int size = 0;
void midDis() {
  int mid = size ~/ 2;
  stackpo? temp = top;
  stackpo? prev = top;
  while (size > 0) {
    if (size == mid) {
      print(temp?.data);
      prev?.next = temp?.next;
    }
    prev = temp;
    temp = temp?.next;
    size--;
  }
}

void pop() {
  if (top == null) {
    print("none");
    return;
  }
  stackpo? temp = top;
  top = temp?.next;
}

void display() {
  if (top == null) {
    print("none");
    return;
  }
  stackpo? temp = top;
  while (temp != null) {
    print(temp.data);
    temp = temp.next;
  }
}

void main(List<String> args) {
  push(45);
  push(32);
  push(25);
  push(7);
  push(55);
  push(78);
  push(99);
  push(155);

  display();
  //pop();
  print("-----------------");
  // display();
  // middleElmnt();
  midDis();

  print("----------");
  display();
}
