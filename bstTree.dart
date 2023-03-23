class BstTree {
  dynamic data;
  BstTree? left;
  BstTree? right;
  BstTree(this.data);
}

BstTree? root;

void insert(dynamic data) {
  if (root == null) {
    root = BstTree(data);
    return;
  }
  BstTree? nowNode = root;
  while (true) {
    if (data < nowNode?.data) {
      if (nowNode?.left == null) {
        nowNode?.left = BstTree(data);       
        break;
      } else {
        nowNode = nowNode?.left;
      }
    } else {
      if (nowNode?.right == null) {
        nowNode?.right = BstTree(data);
        break;
      } else {
        nowNode = nowNode?.right;
      }
    }
  }
}

BstTree? removing(BstTree? node, dynamic data) {
  if (node == null) {
    return null;
  }
  if (data < node.data) {
    node.left = removing(node.left, data);
  } else if (data > node.data) {
    node.right = removing(node.right, data);
  } else {
    if (node.left == null || node.right == null) {
      BstTree? temp;
      temp = node.left == null ? node.right : node.left;
      if (temp == null) {
        return null;
      } else {
        return temp;
      }
    } else {
      BstTree? newNode = takeMinVal(node);
      node.data = newNode?.data;
      node.right = removing(node.left, newNode?.data);
      return node;
    }
  }

  return node;
}

BstTree? takeMinVal(BstTree? node) {
  if (node == null) {
    return null;
  }
  node = node.right;
  while (node?.left != null) {
    node = node?.left;
  }
  return node;
}

inInOrder(BstTree? node) {
  if (node == null) {
    return null;
  }

  inInOrder(node.left);
  print(node.data);
  inInOrder(node.right);
}

void main(List<String> args) {
  List<dynamic> a = [30, 47, 44, 21, 40, 14];
  for (var i = 0; i < a.length; i++) {
    insert(a[i]);
  }

 // removing(root, 46);

  inInOrder(root);
}
