require_relative 'node'

class LinkedList

	attr_reader :first_element 
	
	def initialize(first_element=nil)
		@first_element = first_element
	end 

end
