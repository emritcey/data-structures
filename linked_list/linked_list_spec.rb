require_relative 'linked_list'

describe LinkedList do

	describe "new" do 
		it "is initialized with head object == nil" do 
			list = LinkedList.new
			expect(list.first_element).to eq nil 
		end 
	end 

	describe "insert first" do 
		list = LinkedList.new

		it "can set the first element" do 
			a_node = Node.new(500)
			list.insert_first(a_node)

			expect(list.first_element).to eq a_node
		end 
		
		it "" do 
		end
		it "" do 
		end
	end 

	describe "remove first" do 
		it "" do 
		end 
		it "" do 
		end
		it "" do 
		end
	end 

	describe "insert last" do 
		it "" do 
		end 
		it "" do 
		end
		it "" do 
		end
	end 

	describe "remove last" do 
		it "" do 
		end 
		it "" do 
		end
		it "" do 
		end
	end 

end
