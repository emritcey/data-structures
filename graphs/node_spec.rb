require_relative 'node'

describe Node do
  describe '#exists?' do
    graph_node = Node.new(10)

    it "creates a Node" do
      expect(graph_node).to be_instance_of Node
    end

    it "creates a value of 10" do
      expect(graph_node.value).to eq 10
    end

    it "can add an edge" do
      expect(graph_node.nodes).to eq []
      graph_node.add_edge(Node.new("emma"))
      expect(graph_node.nodes.first.value).to eq "emma"
    end


    it "returns true" do
      expect(graph_node.exists?{|node| node.value == "emma"})
    end

  end

end
