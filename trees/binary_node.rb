require_relative 'node'

class BinaryNode < Node

  def initialize(value)
    super
    @children = [nil,nil]
  end

  def right_child
    @children[0]
  end

  def left_child
    @children[1]
  end

  def set_left(node)
    @children[0] = node
  end

  def set_right(node)
    @children[1] = node
  end

  def add_child(child)
    if (child.value <=> self.value) >= 0
      if right_child
        right_child.add_child(child)
      else
        self.set_right(child)
      end
    else
      if left_child
        left_child.add_child(child)
      else
        self.set_left(child)
      end
    end
  end

end
