require_relative 'array_list'

describe ArrayList do
	it "has a default size" do
		array = ArrayList.new
		expect(array.size).to eq 5
	end 
	
	it "can be size based on a users input" do 
		array = ArrayList.new(10)
		expect(array.size).to eq 10
	end 

end
