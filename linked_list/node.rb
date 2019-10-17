class Node
  attr_accessor :value, :previous, :nextn

  def initialize(value:, previous: nil, nextn: nil)
    @value = value
    @previous = previous
    @nextn = nextn
  end
end