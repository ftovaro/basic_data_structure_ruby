class Node
  attr_accessor :left, :right, :parent, :value

  def initialize(value:)
    @value = value
  end
end