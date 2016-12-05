class Node
  attr_reader :value, :nodes

  def initialize(value=nil)
    @value = value
    @nodes = []
  end

  def add_edge(other_node)
    @nodes << other_node
  end

  def exists?(&block)
    @nodes.exists?(&block)
  end


end
