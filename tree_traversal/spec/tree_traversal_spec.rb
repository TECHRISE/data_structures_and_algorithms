require 'spec_helper'

RSpec.describe Tree::Traverser do
  describe "#dfs" do
    it "performs a depth first search on 11" do
      deep_fifth_node = Tree::Node.new(5, [])
      eleventh_node = Tree::Node.new(11, [])
      fourth_node   = Tree::Node.new(4, [])
      ninth_node = Tree::Node.new(9, [fourth_node])
      sixth_node = Tree::Node.new(6, [deep_fifth_node, eleventh_node])
      seventh_node = Tree::Node.new(7, [sixth_node])
      shallow_fifth_node = Tree::Node.new(5, [ninth_node])
      trunk   = Tree::Node.new(2, [seventh_node, shallow_fifth_node])

      traverser = Tree::Traverser.new
      
      expect(traverser.dfs(trunk, 11)).to eq(eleventh_node)
    end
  end

  describe "#bfs" do
    it "performs a breadth first search" do
      deep_fifth_node = Tree::Node.new(5, [])
      eleventh_node = Tree::Node.new(11, [])
      fourth_node   = Tree::Node.new(4, [])
      ninth_node = Tree::Node.new(9, [fourth_node])
      sixth_node = Tree::Node.new(6, [deep_fifth_node, eleventh_node])
      seventh_node = Tree::Node.new(7, [sixth_node])
      shallow_fifth_node = Tree::Node.new(5, [ninth_node])
      trunk   = Tree::Node.new(2, [seventh_node, shallow_fifth_node])

      traverser = Tree::Traverser.new      
      
      expect(traverser.bfs(trunk, 11)).to eq(eleventh_node)
    end
  end
end