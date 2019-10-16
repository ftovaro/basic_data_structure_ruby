# Binary Search Tree (BST)

## Theory

A **Binary Tree (BT)** is a tree which its nodes has no more than 2 child nodes.

A **Binary Search Tree** is a **BT** where its left side always has values smaller than the right side.

### Complexity:

|Operation| Average | Worst |
|--|--|--|
| Insert | `O(log(n))` | `O(n)` |
| Delete | `O(log(n))` | `O(n)` |
| Remove | `O(log(n))` | `O(n)` |
| Search | `O(log(n))` | `O(n)` |

## Implementation
This is a **Ruby 2.6.4** implementation of a **BST**, to execute it you can open and **irb** console and the paste:

    require_relative "bst"

And then instance the **bst** class and add some nodes:

    bst = Bst.new
    bst.insert(Node.new(value: 7))
    bst.insert(Node.new(value: 20))
    bst.insert(Node.new(value: 5))
    bst.insert(Node.new(value: 15))
    bst.insert(Node.new(value: 10))
    bst.insert(Node.new(value: 4))
    bst.insert(Node.new(value: 4))
    bst.insert(Node.new(value: 33))
    bst.insert(Node.new(value: 2))
    bst.insert(Node.new(value: 25))
    bst.insert(Node.new(value: 6))

This is a graphic representation of the tree:

![bst](https://github.com/ftovaro/basic_data_structure_ruby/blob/master/imgs/bst/bst.png)
###### This is image is from the course *[Easy to Advanced Data Structures](https://www.udemy.com/course/introduction-to-data-structures/)* from **Udemy**.

### BST methods:

### insert
Recibes a node and insert it in the tree, if is the first node to insert, it'll become the root of the tree.

    bst.insert(Node.new(value: 6))

### delete
**TODO**

### search
Returns the node with the value to search, you must pass also the node where to start the search. This is a recursive function.

    node_searched =  bst.search(bst.root, 20)
    node_searched.value
    => 20
    node_searched.left.value
    => 15
    node_searched.right.value
    => 33
    node_searched.parent.value
    => 7

### iterative_search
The same as *search* but in a not recursive way just with a plain loop.

### minimun
Returns the lower value in the tree.

    min_value_node =  bst.minimun(bst.root)
    min_value_node.value
    => 2

### maximun
Returns the highest value in the tree.

    max_value_node =  bst.maximun(bst.root)
    max_value_node.value
	=> 33

### preorder
Prints the current value, then moves to the left node and where is not more nodes to the left to go, moves to the right node.

    bst.preorder(bst.root)
    => 7 5 4 2 6 20 15 10 33 25

### inorder
Always moves to the left until the end of the tree, then print the current value and then moves to the right. In a **BST**, the result of this methods is a sort of the values of the tree.

    bst.inorder(bst.root)
    => 2 4 5 6 7 10 15 20 25 33

### postorder
Moves to the left, the to the right and where is no more right node to move, prints the current node value. The last value is the root value.

    bst.postorder(bst.root)
    => 2 4 6 5 10 15 25 33 20 7

