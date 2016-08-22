class ArrayList
	def initialize(size=5)
		@array = Array.new(size, nil)
	end 

	def length 
		@array.length
	end 

	def add(element)
		@array.push(element)
		element
	end 

	def get(index)
		raise OutOfBoundsError if index >= self.length || index < 0
		@array[index]
	end 

	def set(index, element)
		raise OutOfBoundsError if index >= self.length || index < 0
		@array[index] = element
	end 

	def insert(index, element)
		raise OutOfBoundsError if index >= self.length || index < 0
		@array.insert(index, element)
	end 

end

class OutOfBoundsError < StandardError; end 