require_relative 'linked_list'

describe LinkedList do

	describe "new" do 
		it "is initialized with head object == nil" do 
			new_list = LinkedList.new
			expect(new_list.first_element).to eq nil 
		end 
		it "can be initialized with a value" do 
			new_list = LinkedList.new(5)
			expect(new_list.first_element).to eq 5
		end 

		it "can be initialized with a Node" do 
			new_node = Node.new(5)
			new_list = LinkedList.new(new_node)
			expect(new_list.first_element).to eq new_node 
		end
	end 

	describe "insert first" do 
		it "" do 
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
