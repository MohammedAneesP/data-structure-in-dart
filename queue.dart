// class QueueClass {
//   late int data;
//   QueueClass? next;
//   QueueClass(this.data);
// }

// QueueClass? front;
// QueueClass? back;

// void enQueue(int data) {
//   QueueClass? newNode = QueueClass(data);

//   if (front == null) {
//     front = back = newNode;
//   } else {
//     back?.next = newNode;
//     back = newNode;
//   }
// }

// void deQueue() {
//   if (front == null) {
//     print("empty");
//   }

//   front = front?.next;

//   if (front == null) {
//     back = null;
//   }
// }

// void displayQueue() {
//   QueueClass? temp = front;
//   if (front == null) {
//     print("empty");
//     return;
//   }
//   while (temp != null) {
//     print(temp.data);
//     temp = temp.next;
//   }
// }

// void main(List<String> args) {
//   enQueue(5);
//   enQueue(10);
//   enQueue(15);
//   enQueue(20);

//   deQueue();

//   displayQueue();
// }

class queue {
  int? data;
  queue? next;

  queue(this.data);
}

queue? front;
queue? rear;

void enQueue(int data) {
  queue newNode = queue(data);
  if (front == null) {
    front = rear = newNode;
  } else {
    rear?.next = newNode;
    rear = newNode;
  }
}

void deQueue(){
  if (rear == null) {
    return;
  }
  front = front?.next;
}

void display() {
  if (rear == null) {
    return;
  }
  queue? temp = front;
  while(temp!=null){
    print(temp.data);
    temp = temp.next;
  }
}
void main(List<String> args) {
  enQueue(45);
  enQueue(21);
  enQueue(2);

  display();
  deQueue();
  print("--------------");
  display();
}
