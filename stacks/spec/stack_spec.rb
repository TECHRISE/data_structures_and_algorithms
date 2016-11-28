require 'spec_helper'

RSpec.describe Stack do
  describe '#push' do
    it 'inserts an element' do
      stack = Stack.new

      stack.push(1)

      expect(stack.size).to eq(1)
    end
  end

  describe '#pop' do
    it 'pops the last element inserted into the stack and returns it' do
      stack = Stack.new
      stack.push("element one")
      stack.push("element two")

      popped = stack.pop

      expect(popped).to eq("element two")
    end
  end

  describe '#peek' do
    it 'returns the top most element' do
      stack = Stack.new
      stack.push("element one")
      stack.push("element two")

      expect(stack.peek).to eq("element two")
    end
  end

  describe '#size' do
    it "returns the size of the stack" do
      stack = Stack.new
      stack.push("element one")
      stack.push("element two")
      stack.push("element three")
      
      expect(stack.size).to eq(3)
    end
  end

  describe '#empty?' do
    context "stack is empty" do
      it "returns true" do
        stack = Stack.new

        expect(stack.empty?).to eq(true)
      end 
    end

    context "stack is not empty" do
      it "returns false" do
        stack = Stack.new
        stack.push("element one")

        expect(stack.empty?).to eq(false)
      end
    end
  end
end
