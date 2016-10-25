require_relative 'node'

describe Node do
	describe "new" do 

		it "is initialized with an element" do 
			node = Node.new(5)
			expect(node.element).to eq 5
		end 

	end

end
