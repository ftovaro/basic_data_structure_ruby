require 'minitest/autorun'

class CustomSetTest < Minitest::Test
  def test_is_empty_returns_true_when_new_set_created
    custom_set = CustomSet.new
    assert custom_set.is_empty? == true
  end

  def test_is_empty_returns_false_when_set_has_data
    custom_set = CustomSet.new
    custom_set.add(1)
    assert custom_set.is_empty? == false
  end

  def test_size_returns_zero_when_new_set_created
    custom_set = CustomSet.new
    assert custom_set.size == 0
  end

  def test_size_returns_one_when_add_one_element
    custom_set = CustomSet.new
    custom_set.add(1)
    assert custom_set.size == 1
  end

  def test_size_returns_number_elements_in_set
    custom_set = CustomSet.new
    custom_set.add(1)
    custom_set.add(2)
    custom_set.add(3)
    assert custom_set.size == 3
  end

  def test_add_returns_one_when_adding_two_equal_elements
    custom_set = CustomSet.new
    custom_set.add(1)
    custom_set.add(1)
    assert custom_set.size == 1
  end

  def test_contains_returns_true_when_search_element
    custom_set = CustomSet.new
    custom_set.add(1)
    assert custom_set.contains(1) == true
  end

  def test_contains_returns_false_when_missing_element
    custom_set = CustomSet.new
    assert custom_set.contains(1) == false
  end

  def test_indexof_returns_position_when_element_is_present
    custom_set = CustomSet.new
    custom_set.add(1)
    assert custom_set.indexof(1) == 0
  end

  def test_indexof_returns_minus_1_when_element_is_not_present
    custom_set = CustomSet.new
    custom_set.add(1)
    assert custom_set.indexof(2) == -1
  end

  def test_remove_reduces_size_of_set
    custom_set = CustomSet.new
    custom_set.add(1)
    custom_set.add(2)
    custom_set.remove(1)
    assert custom_set.size == 1
  end
end

class CustomSet
  attr_reader :size, :data

  def initialize
    @size = 0
    @data = []
  end

  def add(element)
    return if contains(element)

    @size += 1
    @data << element
  end

  def contains(element)
    indexof(element) != -1
  end

  def remove(element)
    idx = indexof(element)
    return if idx == -1

    data[idx], data[-1] = data[-1], data[idx]
    data[-1] = nil
    @size -= 1
  end

  def indexof(element)
    data.each_with_index do |el, idx|
      return idx if el == element
    end

    -1
  end

  def is_empty?
    size == 0
  end
end
