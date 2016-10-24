class FixedArray

	def initialize(size=10)
		@array = Array.new(size, nil)
	end 

	def size
		@array.length
	end 

	def get(index)
		raise OutOfBoundsError if index < 0 || index >= self.size

		@array[index]
	end 

	def set(index, element)
		raise OutOfBoundsError if index < 0 || index >= self.size

		@array[index] = element
	end 
end 


class OutOfBoundsError < StandardError; end 