require 'spec_helper'

RSpec.describe "#longest_sequence" do
 context "1,000,000" do
  it "returns 837799 under 2 seconds" do
    beginning_time = Time.now
    answer = longest_sequence(1_000_000)
    end_time = Time.now

    expect(answer).to eq(837799)
    expect((end_time - beginning_time)*1000).to be < 2000
  end
 end
end

RSpec.describe "#find_sequence" do
 context "1" do
  it "returns 1" do
    expect(find_sequence(1)).to eq([1])
  end
 end

 context "6" do
  it "returns 6, 3, 10, 5, 16, 8, 4, 2, 1" do
    expect(find_sequence(6)).to eq([6, 3, 10, 5, 16, 8, 4, 2, 1])
  end
 end

 context "7" do
  it "returns 7, 22, 11, 34, 17, 52, 26, 13, 40, 20, 10, 5, 16, 8, 4, 2, 1" do
    expect(find_sequence(7)).to eq([7, 22, 11, 34, 17, 52, 26, 13, 40, 20, 10, 5, 16, 8, 4, 2, 1])
  end
 end
end