class queue {
  int? data;
  queue? next;

  queue(this.data);
}

queue? front;
queue? rear;

void enque(int data) {
  queue newnode = queue(data);
  if (rear == null) {
    front = rear = newnode;
  }
  rear?.next = newnode;
  rear = newnode;
}

void dequeu() {
  if (front == null) {
    return;
  }
 front = front?.next;
}

void display() {
  queue? temp = front;

  if (front == null) {
    return;
  }
  while (temp != null) {
    print(temp.data);
    temp = temp.next;
  }
}

void main(List<String> args) {
  enque(15);
  enque(20);

  dequeu();
  display();
}
