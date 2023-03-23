class MinHeap {
  List<int> heap = [];

  MinHeap(List<int> array) {
    buildHeap(array);
  }
  void buildHeap(List<int> array) {
    heap = array;
    for (var i = parent(heap.length - 1); i >= 0; i--) {
      shiftDown(i);
    }
  }

  void shiftDown(int currentIdx) {
    int endIdx = heap.length - 1;
    int leftIdx = leftChild(currentIdx);

    while (leftIdx <= endIdx) {
      int rightIdx = rightChild(currentIdx);
      int idxToShift;
      if (rightIdx <= endIdx &&
          heap.elementAt(rightIdx) < heap.elementAt(leftIdx)) {
        idxToShift = rightIdx;
      } else {
        idxToShift = leftIdx;
      }
      if (heap.elementAt(currentIdx) > heap.elementAt(idxToShift)) {
        // perform the swap
        var temp = heap[currentIdx];
        heap[currentIdx] = heap[idxToShift];
        heap[idxToShift] = temp;
        currentIdx = idxToShift;
        leftIdx = leftChild(currentIdx);
      } else {
        return;
      }
    }
  }

  void shiftUp(int currentIdx) {
    int parentIdx = parent(currentIdx);
    while (currentIdx > 0 &&
        heap.elementAt(parentIdx) > heap.elementAt(currentIdx)) {
      var temp = heap[currentIdx];
      heap[currentIdx] = heap[parentIdx];
      heap[parentIdx] = temp;
      currentIdx = parentIdx;
      parentIdx = parent(currentIdx);
    }
  }

  int parent(int i) {
    return (i - 1) ~/ 2;
  }

  int leftChild(int i) {
    return (i * 2) + 1;
  }

  int rightChild(int i) {
    return (i * 2) + 2;
  }
}

void main(List<String> args) {
  List<int> array = [15,5,6,8,2,1,2];
 
 
  print(array);
}