require 'spec_helper'

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







