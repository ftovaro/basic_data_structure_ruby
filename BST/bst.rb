require_relative "node"

class Bst
  attr_reader :root

  def initialize
  end

  def insert(node_to_insert)
    parent_node = nil
    current_node = root

    while !current_node.nil?
      parent_node = current_node
      if node_to_insert.value < current_node.value
        current_node = current_node.left
      else
        current_node = current_node.right
      end
    end

    node_to_insert.parent = parent_node

    if parent_node.nil?
      @root = node_to_insert # Tree was empty
    elsif node_to_insert.value == parent_node.value
      return # We are ignoring same values
    elsif node_to_insert.value < parent_node.value
      parent_node.left = node_to_insert
    else
      parent_node.right = node_to_insert
    end
  end

  def search(node, value)
    return node if node.nil? || value == node.value
    return search(node.left, value) if value < node.value
    search(node.right, value)
  end

  def iterative_search(node, value)
    while !node.nil? && value != node.value
      if value < node.value
        node = node.left
      else
        node = node.right
      end
    end
    node
  end

  def minimun(node)
    while !node.left.nil?
      node = node.left
    end
    node
  end

  def maximun(node)
    while !node.right.nil?
      node = node.right
    end
    node
  end

  def preorder(root)
    unless root.nil?
      print "#{root.value} "
      preorder(root.left)
      preorder(root.right)
    end
  end

  def inorder(root)
    unless root.nil?
      inorder(root.left)
      print "#{root.value} "
      inorder(root.right)
    end
  end

  def postorder(root)
    unless root.nil?
      postorder(root.left)
      postorder(root.right)
      print "#{root.value} "
    end
  end
end
