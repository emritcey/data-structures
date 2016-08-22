require_relative 'array_list'

describe ArrayList do
	describe "#new" do 
		it "has a default size" do
			array = ArrayList.new
			expect(array.length).to eq 5
		end 

		it "can be size based on a users input" do 
			array = ArrayList.new(10)
			expect(array.length).to eq 10
		end 
	end 

	describe "#add" do 
		array = ArrayList.new
		it "can add an element at the end of the list and return that element" do 
			expect(array.add("hi")).to eq "hi"
		end 

		it "increases the length of the array" do 
			expect(array.length).to eq 6
		end 
	end 

	describe "#get" do 
		array = ArrayList.new
		array.add("hi!")

		it "can return an object that exists" do 
			expect(array.get(5)).to eq "hi!"
		end 

		it "throws and OutOfBoundsError if element doesn't exist" do 
			expect { array.get(7) }.to raise_error(OutOfBoundsError)
		end 
	end 

	describe "#set" do 
		array = ArrayList.new
		it "replaces an item in the array at a given index" do 
			array.set(1, "hey there")
			expect(array.get(1)).to eq "hey there"
		end 

		it "throws an OutOfBoundsError if index doesn't exist" do
			expect { array.set(100, "what")}.to raise_error(OutOfBoundsError)
		end 
	end 

	describe "#length" do 
		it "returns the length of the array" do 
			array = ArrayList.new
			expect(array.length).to eq 5
		end 
	end 

	describe "#insert" do
		array = ArrayList.new 
		it "will insert an object into the middle of a list, without deleting other items" do 
			array.insert(2, "hi")
			expect(array.get(2)).to eq "hi"
		end 

		it "will throw an error if spot doesn't exist yet" do
			expect { array.insert(100, "hey") }.to raise_error(OutOfBoundsError)
		end 
	end 


end
