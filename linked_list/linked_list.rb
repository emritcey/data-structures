require_relative 'node'

class LinkedList

	attr_reader :first_element 

	def initialize()
		@first_element = nil
	end 

	def insert_first(node)
		@first_element = node
	end 

end
