class Hash

  def initialize
    @dictionary = {}
  end

  def set(key,value)
    @dictionary[key] = value
  end

  def get(key)
    @dictionary[key]
  end

  def has_key?(key)

  end

  def remove(key)
  end

  def iterate(&block)
  end

end
