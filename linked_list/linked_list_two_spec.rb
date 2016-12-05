require_relative 'linked_list'

describe LinkedList do

  describe "#new" do
    it "initalizes automatically with first_element = nil" do
      list = LinkedList.new()
      expect(list.first_element).to be_nil
    end

    it "can be initalized with a first value" do
      node = Node.new(5)
      list = LinkedList.new(node)

      expect(list.first_element).to eq node
    end
  end

  describe "#insert_first" do
    node = Node.new(15)
    list = LinkedList.new(node)

    it "can change the first value" do
    end

    it "sets the next pointer to the past "
  end

  describe "#remove_first" do
  end

  describe "#insert_last" do
  end

  describe "#remove_last" do
  end

  describe "#get" do
  end

  describe "#set" do
  end

  describe "#insert" do
  end

end
