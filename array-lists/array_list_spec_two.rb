require_relative 'array_list_two'

describe ArrayList do 

	describe "#new" do 
		it "has a default inital size of 10" do 
			array = ArrayList.new
			expect(array.length).to eq 10
		end 

		it "the size can be set on instantiation" do
			array = ArrayList.new(20)
			expect(array.length).to eq 20 
		end 
	end 

	describe "#add" do 
		array = ArrayList.new
		it "can add an element to the end of the list and return value" do 
			expect(array.add("hey")).to eq "hey"
		end 

		it "makes the array longer" do 
			expect(array.length).to eq 11
		end 
	end 

	describe "#get" do 
		array = ArrayList.new
		it "can get an element at a position that exists" do 
			array.get(0)
			expect(array.get(0)).to eq nil

		end 

		it "raises an OutOfBoundsError if try to get something above than the size" do 
			expect{array.get(15)}.to raise_error OutOfBoundsError
		end 

		it "raises an OutOfBoundsError if try to get something lower than the size" do 
			expect{array.get(-59)}.to raise_error OutOfBoundsError
		end 
	end 

	describe "#set" do 
		array = ArrayList.new
		it "can set an element at a position that exists" do 
			array.set(0, "emma")
			expect(array.get(0)).to eq "emma"
		end 

		it "raises an OutOfBoundsError if try to set something above than the size" do 
			expect{array.set(15, "hi")}.to raise_error OutOfBoundsError
		end 

		it "raises an OutOfBoundsError if try to set something lower than the size" do 
			expect{array.set(-59, "hi")}.to raise_error OutOfBoundsError
		end 
	end 


end 
