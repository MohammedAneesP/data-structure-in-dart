

class BinarySearchTree {
  dynamic data;
  BinarySearchTree? left;
  BinarySearchTree? right;
  BinarySearchTree(dynamic value) {
    data = value;
  }
}

BinarySearchTree? root;
void insert(dynamic data) {
  BinarySearchTree? currentNode = root;
  if (root == null) {
    root = BinarySearchTree(data);
    return;
  }
  while (true) {
    if (data < currentNode?.data) {
      if (currentNode?.left == null) {
        currentNode?.left = BinarySearchTree(data);
        break;
      } else {
        currentNode = currentNode?.left;
      }
    } else {
      if (currentNode?.right == null) {
        currentNode?.right = BinarySearchTree(data);
        break;
      } else {
        currentNode = currentNode?.right;
      }
    }
  }
}

bool valueContanins(dynamic data) {
  BinarySearchTree? currentNode = root;
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

void removeElement(dynamic data) {
  removeHelper(data, root!, null);
}

void removeHelper(
    dynamic data, BinarySearchTree? currentNode, BinarySearchTree? parent) {
  while (currentNode != null) {
    if (data < currentNode.data) {
      parent = currentNode;
      currentNode = currentNode.left!;
    } else if (data > currentNode.data) {
      parent = currentNode;
      currentNode = currentNode.right!;
    } else {
      if (currentNode.left != null && currentNode.right != null) {
        currentNode.data = getMinimumValue(currentNode.right!);
        //we call the remove helper function again through this we can remove the value without duplication
        removeHelper(currentNode.data, currentNode.right!, parent);
      } else {
        //the next case is the node  containing no parent that mean the node maybe the root
        //then we need to check the left and right node is null
        if (parent == null) {
          if (currentNode.right == null) {
            root = currentNode.left;
          } else {
            root = currentNode.right;
          }
        } else {
          if (parent.left == currentNode) {
            // here we checking the value is present in left side of the parent node
            if (currentNode.right == null) {
              //here we check the right value because the  right value is the highest value but if the right
              //value is empty then we assign the left value of the current node into parent left.
              parent.left = currentNode.left;
            } else {
              parent.left = currentNode.right;
            }
          } else {
            //if the value is not equal to  the parent left value then the value is equal to the parent right
            if (currentNode.right == null) {
              parent.right = currentNode.left;
            } else {
              parent.right = currentNode.right;
            }
          }
        }
      }
      break;
    }
  }
}

int getMinimumValue(BinarySearchTree currentNode) {
  if (currentNode.left == null) {
    return currentNode.data;
  } else {
    return getMinimumValue(currentNode.left!);
  }
}

void inOrder() {
  inorderHelper(root);
}

void inorderHelper(BinarySearchTree? node) {
  //left --> root --> right
  if (node != null) {
    inorderHelper(node.left);
    print(node.data);
    inorderHelper(node.right);
  }
}

void preOrder() {
  preOrderHelper(root);
}

void preOrderHelper(BinarySearchTree? node) {
  //root --> left --> right
  if (node != null) {
    print(node.data);
    preOrderHelper(node.left);
    preOrderHelper(node.right);
  }
}

void postOrder() {
  postOrderHelper(root);
}

void postOrderHelper(BinarySearchTree? node) {
  //left --> right -->root
  if (node != null) {
    postOrderHelper(node.left);
    postOrderHelper(node.right);
    print(node.data);
  }
}

int findClosest(int target) {
  BinarySearchTree? current = root;
  int closest = current!.data;
  while (current != null) {
    if ((target - closest).abs() > (target - current.data).abs()) {
      closest = current.data;
    }
    if (target < current.data) {
      current = current.left;
    } else if (target > current.data) {
      current = current.right;
    } else {
      return current.data;
    }
  }
  return closest;
}

void main(List<String> args) {
  insert(10);
  insert(8);
  insert(11);
  insert(4);
  insert(9);
  // inOrder();
  // print("");
  // preOrder();
  print(findClosest(12));
}