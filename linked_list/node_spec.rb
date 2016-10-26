require_relative 'node'

describe Node do
	node = Node.new(5)
	describe "new" do 

		it "is initialized with an element" do 
			expect(node.element).to eq 5
		end 

		it "is initialized with next element = nil" do
			expect(node.next).to eq nil
		end 
	end

	describe "insert after method" do
		second_node = Node.new(15)
		it "sets next to a value or object" do
			node.insert_after(second_node)

			expect(node.next).to be_a_kind_of(Node)
			expect(node.next).to eq second_node
			expect(node.next.element).to eq 15
		end 
	end 

	describe "remove after method" do
		it "resets next to nil" do
			node.remove_after
			expect(node.next).to eq nil 
		end 
	end 

end
