require 'spec_helper'

RSpec.describe "#return_values" do
  it "returns an array of values of the linked list" do
    node1 = LinkedListNode.new(12)
    node2 = LinkedListNode.new(35, node1)
    node3 = LinkedListNode.new(38, node2)
    node4 = LinkedListNode.new(204, node3)
    node5 = LinkedListNode.new(22, node4)
    node6 = LinkedListNode.new(102, node5)

    expect(return_values(node6)).to eq([102, 22, 204, 38, 35, 12])
  end
end

RSpec.describe "#reverse_linked_list" do
  it "returns an array of values of the linked list in reverse" do
    node1 = LinkedListNode.new(12)
    node2 = LinkedListNode.new(35, node1)
    node3 = LinkedListNode.new(38, node2)
    node4 = LinkedListNode.new(204, node3)
    node5 = LinkedListNode.new(22, node4)
    node6 = LinkedListNode.new(102, node5)

    expect(reverse_linked_list(node6)).to eq([12, 35, 38, 204, 22, 102])
  end
end

RSpec.describe "#reverse_linked_list_in_place" do
  it "returns an array of values of the linked list in reverse" do
    node1 = LinkedListNode.new(102)
    node2 = LinkedListNode.new(50, node1)
    node3 = LinkedListNode.new(38, node2)
    node4 = LinkedListNode.new(204, node3)
    node5 = LinkedListNode.new(22, node4)
    node6 = LinkedListNode.new(102, node5)

    expect(reverse_linked_list_in_place(node6)).to eq([102, 50, 38, 204, 22, 102])
  end
end

RSpec.describe "#detect_cycle" do
  context "there is a cycle" do
    it "returns true" do
      node1 = LinkedListNode.new(102)
      node2 = LinkedListNode.new(50, node1)
      node3 = LinkedListNode.new(38, node2)
      node4 = LinkedListNode.new(204, node3)
      node5 = LinkedListNode.new(22, node4)
      node6 = LinkedListNode.new(102, node5)
      node1.right = node2

      expect(detect_cycle(node6)).to eq(true)
    end
  end
  context "there is no cycle" do
    it "returns true" do
      node1 = LinkedListNode.new(102)
      node2 = LinkedListNode.new(50, node1)
      node3 = LinkedListNode.new(38, node2)
      node4 = LinkedListNode.new(204, node3)
      node5 = LinkedListNode.new(22, node4)
      node6 = LinkedListNode.new(102, node5)

      expect(detect_cycle(node6)).to eq(false)
    end
  end
end














