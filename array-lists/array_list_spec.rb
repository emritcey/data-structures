require_relative 'array_list'

describe ArrayList do
	describe "#new" do 
		it "has a default size" do
			array = ArrayList.new
			expect(array.size).to eq 5
		end 

		it "can be size based on a users input" do 
			array = ArrayList.new(10)
			expect(array.size).to eq 10
		end 
	end 

	describe "#add" do 
		array = ArrayList.new
		it "can add an element at the end of the list and return that element" do 
			expect(array.add("hi")).to eq "hi"
		end 

		it "increases the length of the array" do 
			expect(array.size).to eq 6
		end 

	end 


end
