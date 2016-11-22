require 'spec_helper'

RSpec.describe "#fibonacci_iterative" do
  context "0" do
    it "returns 0" do
      expect(fibonacci_iterative(0)).to eq(0)
    end
  end

  context "1" do
    it "returns 1" do
      expect(fibonacci_iterative(1)).to eq(1)
    end
  end

  context "5" do
    it "returns 5" do
      expect(fibonacci_iterative(5)).to eq(5)
    end
  end

  context "9" do
    it "returns 34" do
      expect(fibonacci_iterative(9)).to eq(34)
    end
  end
end

RSpec.describe "#fibonacci_recursive" do
  context "0" do
    it "returns 0" do
      expect(fibonacci_recursive(0)).to eq(0)
    end
  end

  context "1" do
    it "returns 1" do
      expect(fibonacci_recursive(1)).to eq(1)
    end
  end

  context "5" do
    it "returns 5" do
      expect(fibonacci_recursive(5)).to eq(5)
    end
  end

  context "9" do
    it "returns 34" do
      expect(fibonacci_recursive(9)).to eq(34)
    end
  end
end