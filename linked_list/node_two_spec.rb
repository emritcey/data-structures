require_relative 'node'

describe Node do
    node = Node.new(4)
  describe "#new" do
    it "initializes with an element" do
      expect(node.element).to eq 4
    end

    it "initializes next as nil" do
      expect(node.next).to be_nil
    end

  end

  describe "#insert_after(node)" do
    it "changes value of next" do
      expect {node.insert_after(5)}.to change{node.next}.from(nil).to(5)
    end
  end

  describe "#remove_after" do
    it "changes next to nil" do
      expect {node.remove_after}.to change{node.next}.from(5).to(nil)
    end
  end

end
