require_relative "node"

class SingleLinkedList

  attr_accessor :head, :tail, :size

  def initialize
    @size = 0
  end

  def add(value)
    node = Node.new(value: value)
    if head.nil?
      @head = node
      @tail = node
    else
      @tail.nextn = node
      @tail = node
    end
    @size += 1
  end

  def insert(new_value, position)
    node = head
    i = 0
    # We need to step in the previous node
    # of the position we want to add the new node
    while !node.nil? && i < (position - 1)
      node = node.nextn
      i+=1
    end

    new_node = Node.new(value: new_value, nextn: node.nextn)
    node.nextn = new_node
    @size += 1
    return new_node
  end

  def search(value)
    node = head
    while !node.nil? && node.value != value
      node = node.nextn
    end
    return node
  end

  def contains(value)
    node = head
    while !node.nil? && node.value != value
      node = node.nextn
    end
    return !node.nil?
  end

  def remove(value)
    return false if head.nil? # the list is empty

    node = head
    if node.value == value
      if head == tail
        # the node to remove is the only node in the linked list
        @head = nil
        @tail = nil
      else
        # we are removing the head node
        @head = head.nextn
      end
      @size -= 1
      return true
    end

    while !node.nextn.nil? && node.nextn.value != value
      node = node.nextn
    end

    if !node.nextn.nil?
      if node.nextn == tail
        # we are removing the tail node
        @tail = node
      end
      # the node to remove is somewhere in between the head and tail
      node.nextn = node.nextn.nextn
      @size -= 1
      return true
    end

    # the item to remove doesn’t exist in the linked list
    return false
  end

  def print
    node = head
    while !node.nil?
      p "{ value: #{node.value}, next: #{node.nextn&.value} }"
      node = node.nextn
    end
  end

  def reverse_traversal
    if !tail.nil?
      node = tail
      while node != head
        prev = head
        while prev.nextn != node
          prev = prev.nextn
        end
        p "{ value: #{node.value}, next: #{node.nextn&.value} }"
        node = prev
      end
      p "{ value: #{node.value}, next: #{node.nextn&.value} }"
    end
  end
end

# require_relative "single_linked_list"
# sll = SingleLinkedList.new
# sll.add(4)
# sll.add(8)
# sll.add(10)
# sll.add(2)
# sll.print
# sll.contains(8)
# sll.contains(11)
# sll.remove(8)
# sll.print




