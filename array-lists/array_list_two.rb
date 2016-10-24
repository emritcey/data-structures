class ArrayList
	def initialize(size=10)
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
		raise OutOfBoundsError if index < 0 || index >= self.length
		@array[index]
	end 

	def set(index, element)
		raise OutOfBoundsError if index < 0 || index >= self.length
		@array[index] = element
	end 

end 

class OutOfBoundsError < StandardError; end 