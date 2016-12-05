class Node
  attr_reader :value, :other_node

  def initialize(value=nil)
    @value = value
    @nodes = []
  end

  def add_edge(other_node)
    @nodes << other_node
  end

  def exists?(&block)
    value.exists?(&block)
  end


end
