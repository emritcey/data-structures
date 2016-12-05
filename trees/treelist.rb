class TreeList
  attr_reader :size

  def initialize
    @tree_list = Tree.new
  end

  def add(element)
    node = Node.new(element)
    @list << node
  end

  def index_of(element)
  end

  def size
  end

  def each(&block)
  end

end
