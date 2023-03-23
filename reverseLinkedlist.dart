class revLinkList {
  late int data;

  revLinkList? next;
  revLinkList(this.data);
}

revLinkList? head;
revLinkList? tail;

void addNode(int data) {
  revLinkList? newNode = revLinkList(data);

  if (head == null) {
    head = tail = newNode;
  }
  tail?.next = newNode;
  tail = newNode;
}

void reversing() {
  revLinkList? current = head;
  revLinkList? prev;
  revLinkList? nexTo;

  if (head == null) {
    return;
  }
  while (current != null) {
    nexTo = current.next;
    current.next = prev;
    prev = current;
    current = nexTo;
  }
  head = tail;
  tail = head;
}

void revDisplay(){
  revLinkList? temp = head;

  if (head == null) {
    print("nothing");
    return;
  }
  while (temp!=null) {
    print(temp.data);
    temp = temp.next;
  }
}


void main(List<String> args) {
  addNode(23);
  addNode(45);
  addNode(78);
  addNode(21);
  addNode(2);
  addNode(99);

  revDisplay();
  print("--------------------");
  reversing();
  revDisplay();
  print(head?.data);
}