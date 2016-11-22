require 'spec_helper'

RSpec.describe BTreeSort do
  describe '#sort' do
    it 'orders the array' do
      expected = [1, 4, 6, 7, 9, 10, 14]
      array = [7, 4, 9, 1, 6, 14, 10]
      expect(BTreeSort.sort(array)).to eq expected
    end
  end
end