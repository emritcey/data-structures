require_relative 'node'

class LinkedList
  attr_reader :first_element

  def initialize(first=nil)
    @first_element = first
    @last_element = nil
  end

  def insert_first(element)
    node = Node.new(element)
    node.insert_after(head)
    self.first_element = node
  end

  def remove_first
    @first_element.next ? @first_element = @first_element.next : @first_element = nil
  end

  def insert_last(element)
    node = Node.new(element)
    if @first_element
      self.last_element.next = node
      self.last_element = node
    else
      @first_element = node
    end
  end

  def remove_last
    @last_element = nil
  end

  def get(index)
    index.times do |x|

    end

  end

  def set(index,element)
  end

  def insert(index, element)
  end

  def size
  end

end
