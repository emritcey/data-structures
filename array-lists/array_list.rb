class ArrayList
	def initialize(size=5)
		@array = Array.new(size, nil)
	end 

	def size 
		@array.length
	end 

	def add(element)
		@array.push(element)
		element
	end 

	def get(index)
		raise OutOfBoundsError if index >= self.size || index < 0
		@array[index]
	end 

end

class OutOfBoundsError < StandardError; end 