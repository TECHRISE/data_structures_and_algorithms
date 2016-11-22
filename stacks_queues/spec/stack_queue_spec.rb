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

RSpec.describe Queue do
  describe '#enqueue' do
    it 'enqueues an element' do
      queue = Queue.new

      queue.enqueue("element one")

      expect(queue.size).to eq(1)
    end
  end

  describe '#dequeue' do
    it 'dequeues the first element and returns it' do
      queue = Queue.new
      queue.enqueue("element one")
      queue.enqueue("element two")

      dequeued = queue.dequeue

      expect(dequeued).to eq("element one")
    end
  end

  describe '#peek' do
    it 'returns the top most elements' do
      queue = Queue.new
      queue.enqueue("element one")
      queue.enqueue("element two")

      expect(queue.peek).to eq("element one")
    end
  end

  describe "#size" do
    it "returns the size of the queue" do
      queue = Queue.new
      queue.enqueue("element one")
      queue.enqueue("element two")

      expect(queue.size).to eq(2)
    end
  end

  describe '#empty?' do
    context "queue is empty" do
      it "returns true" do
        queue = Queue.new

        expect(queue.empty?).to eq(true)
      end
    end

    context "queue is not empty" do
      it "returns false" do
        queue = Queue.new
        queue.enqueue("element one")

        expect(queue.empty?).to eq(false)
      end
    end
  end
end







