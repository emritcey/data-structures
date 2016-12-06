class MySet
  def intialize
    @set = []
  end

  def add(element)
    raise Error if @set.contains?(element)
    @set << element
  end

  def remove(element)
    @set.delete(element) if @set.contains?(element)
  end

  def contains?(element)
    @set.include?(element)
  end

  def size
    @set.length
  end



end
