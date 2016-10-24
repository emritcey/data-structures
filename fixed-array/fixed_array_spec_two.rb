require_relative 'fixed_array_two'

describe FixedArray do
	describe "#new" do 
		it "has a default size of 10" do 
			array = FixedArray.new
			expect(array.size).to eq 10
		end 

		it "can be set to a custom length" do
			array = FixedArray.new(25)
			expect(array.size).to eq 25
		end 
	end 

	describe "#get" do 
		array = FixedArray.new

		it "can return a value from a spot that exists" do 
			expect(array.get(0)).to eq nil
		end 

		it "throws an OutOfBoundsError if you request a value above the range" do 
			expect{ array.get(11) }.to raise_error(OutOfBoundsError)
		end 

		it "raises an OutOfBoundsError if you request a value below the range" do 
			expect{array.get(-10)}.to raise_error(OutOfBoundsError)
		end 
	end 

	describe "#set" do 
		array = FixedArray.new

		it "can set a number that is inbounds" do 
			array.set(0,5)
			expect(array.get(0)).to eq 5
		end 

		it "raises an OutOfBoundsError if try to set location larger than bounds" do 
			expect{array.set(200, 5)}.to raise_error(OutOfBoundsError)
		end 

		it "raises an OutOfBoundsError if try to set location smaller than bounds" do 
			expect{array.set(-100, 5)}.to raise_error(OutOfBoundsError)
		end
	end 
end