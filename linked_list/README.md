# Single Linked List (SLL)

## Theory

A **single linked list (SLL)** is a sequential list of nodes that hold data which point to other nodes also containing data.

Every node has a pointer to the next node, also, the last node point to null.

## Terminology

### Head
The first node in a linked list
### Tail
The last node in a linked list
### Pointer
Reference to another node
### Node
An object containing data and pointer(s)

### Complexity:

|Operation| Singly Linked | Doubly Linked |
|--|--|--|
| Insert at head | `O(1)` | `O(1)` |
| Insert at tail | `O(1)` | `O(1)` |
| Remove at head | `O(1)` | `O(1)` |
| Remove at head | `O(n)` | `O(1)` |
| Remove at middle | `O(n)` | `O(n)` |
| Search | `O(n)` | `O(n)` |

## Implementation
This is a **Ruby 2.6.4** implementation of a **SLL**, to execute it you can open and **irb** console and the paste:

    require_relative "single_linked_list"

And then instance the **sll** class and add some nodes:

    sll = SingleLinkedList.new
    sll.add(5)
    sll.add(23)
    sll.add(7)
    sll.add(13)


### Single Linked List methods:

### insert
This will insert the value 11 in the third position of the SLL

    sll.insert(11, 2)


### remove
Removes the first node that has that value a re wire the pointers of the nodes related to that value

    sll.remove(11)

### search
Returns the node with the value to search

    sll.search(7)
