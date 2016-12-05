class Map

  def initialize
    @map = {}
  end

  def set(key, value)
    @map[key] = value
  end

  def get(key)
    @map[key]
  end

  def has_key?(key)
    @map.include?(key)
  end

  def remove(key)
    @map.delete(key)
  end

  def iterate(&block)
    @map.each(&block)
  end

end
