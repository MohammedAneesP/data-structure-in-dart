class BinryTree {
  dynamic data;
  BinryTree? right, left;
  BinryTree(this.data);
}

BinryTree? root;

void insert(dynamic data) {
  BinryTree? currentNode = root;
  if (root == null) {
    root = BinryTree(data);
    return;
  }
  while (true) {
    if (data < currentNode?.data) {
      if (currentNode?.left == null) {
        currentNode?.left = BinryTree(data);
        break;
      } else {
        currentNode = currentNode!.left;
      }
    } else {
      if (currentNode?.right == null) {
        currentNode?.right = BinryTree(data);
        break;
      } else {
        currentNode = currentNode!.right;
      }
    }
  }
}

void nodeRemov(int data) {
  root = removal(root, data);
}

BinryTree? removal(BinryTree? node, int value) {
  if (node == null) {
    return null;
  }
  if (value < node.data) {
    node.left = removal(node.left, value);
  } else if (value > node.data) {
    node.right = removal(node.right, value);
  } else {
    if (node.left == null || node.right == null) {
      BinryTree? temp;
      temp = node.left == null ? node.right : node.left;
      if (temp?.data == null) {
        return null;
      } else {
        return temp;
      }
    } else {
      BinryTree? theNode = getMinVal(node);
      node.data = theNode?.data;
      node.right = removal(node.right, theNode?.data);
      return node;
    }
  }
  return node;
}

BinryTree? getMinVal(BinryTree? node) {
  if (node == null) {
    return null;
  }
  BinryTree? aNode = node.right;
  while (aNode?.left != null) {
    aNode = aNode?.left;
  }
  return aNode;
}

void inOrderHelp() {
  inOrder(root);
}

List<dynamic> inOrderList = [];
void inOrder(BinryTree? node) {
  if (node == null) {
    return null;
  }
  inOrder(node.left);
  inOrderList.add(node.data);
  print(node.data);
  inOrder(node.right);
}

void preOrder(BinryTree? node) {
  if (node == null) {
    return null;
  }
  print(node.data);
  preOrder(node.left);
  preOrder(node.right);
}

void postOrder(BinryTree? node) {
  if (node == null) {
    return null;
  }
  postOrder(node.left);
  postOrder(node.right);
  print(node.data);
}

bool contains(dynamic data) {
  BinryTree? currentNode = root;

  while (currentNode != null) {
    if (data < currentNode.data) {
      currentNode = currentNode.left;
    } else if (data > currentNode.data) {
      currentNode = currentNode.right;
    } else {
      return true;
    }
  }

  return false;
}

BinryTree? prev;
bool isBST(BinryTree? node) {
  if (node == null) {
    return true;
  }
  if (!isBST(node.left)) {
    return false;
  }
  if (prev != null && node.data < prev?.data) {
    return false;
  }
  prev = node;
  return isBST(node.right);
}

bool checkBST() {
  for (var i = 0; i < inOrderList.length - 1; i++) {
    if (inOrderList[i] > inOrderList[i + 1]) {
      return false;
    }
  }
  return true;
}

void main(List<String> args) {
  List<dynamic> a = [30, 44, 21, 46, 14, 40];
  for (var i = 0; i < a.length; i++) {
    insert(a[i]);
  }
  nodeRemov(30);

  inOrderHelp();

  print("-------------------");
  print(checkBST());
}
