require 'spec_helper'

RSpec.describe Matrix do
  describe "#rotate" do
    it "rotates the matrix 90 degrees" do
      matrix_1 = Matrix.new([
        [0, 0, 1, 0],
        [1, 0, 1, 0],
        [1, 0, 1, 0],
        [0, 1, 1, 0]
      ])
      matrix_2 = Matrix.new([
        [0, 0, 1, 0, 0, 0, 1, 0],
        [0, 1, 0, 0, 0, 1, 0, 0],
        [1, 0, 0, 1, 1, 0, 0, 1],
        [0, 0, 1, 0, 0, 0, 1, 0],
        [0, 0, 1, 0, 0, 0, 1, 0],
        [0, 0, 1, 0, 0, 0, 1, 0],
        [0, 0, 1, 0, 0, 0, 1, 0],
        [0, 0, 1, 0, 0, 0, 1, 0]
      ])
      matrix_3 = Matrix.new([
        [1, 0, 1, 1],
        [1, 1, 1, 1]
      ])

      expect(matrix_1.rotate).to eq([
        [0, 1, 1, 0], 
        [1, 0, 0, 0], 
        [1, 1, 1, 1], 
        [0, 0, 0, 0]
      ])
      expect(matrix_2.rotate).to eq([
        [0, 0, 0, 0, 0, 1, 0, 0], 
        [0, 0, 0, 0, 0, 0, 1, 0], 
        [1, 1, 1, 1, 1, 0, 0, 1], 
        [0, 0, 0, 0, 0, 1, 0, 0], 
        [0, 0, 0, 0, 0, 1, 0, 0], 
        [0, 0, 0, 0, 0, 0, 1, 0], 
        [1, 1, 1, 1, 1, 0, 0, 1], 
        [0, 0, 0, 0, 0, 1, 0, 0]
      ])
      expect(matrix_3.rotate).to eq(false)
    end
  end

  describe "#rotate_in_place" do
    it "rotates the matrix 90 degrees" do
      matrix_1 = Matrix.new([
        [0, 0, 1, 0],
        [1, 0, 1, 0],
        [1, 0, 1, 0],
        [0, 1, 1, 0]
      ])
      matrix_2 = Matrix.new([
        [0, 0, 1, 0, 0, 0, 1, 0],
        [0, 1, 0, 0, 0, 1, 0, 0],
        [1, 0, 0, 1, 1, 0, 0, 1],
        [0, 0, 1, 0, 0, 0, 1, 0],
        [0, 0, 1, 0, 0, 0, 1, 0],
        [0, 0, 1, 0, 0, 0, 1, 0],
        [0, 0, 1, 0, 0, 0, 1, 0],
        [0, 0, 1, 0, 0, 0, 1, 0]
      ])
      matrix_3 = Matrix.new([
        [1, 0, 1, 1],
        [1, 1, 1, 1]
      ])

      expect(matrix_1.rotate_in_place).to eq([
        [0, 1, 1, 0], 
        [1, 0, 0, 0], 
        [1, 1, 1, 1], 
        [0, 0, 0, 0]
      ])
      expect(matrix_2.rotate_in_place).to eq([
        [0, 0, 0, 0, 0, 1, 0, 0], 
        [0, 0, 0, 0, 0, 0, 1, 0], 
        [1, 1, 1, 1, 1, 0, 0, 1], 
        [0, 0, 0, 0, 0, 1, 0, 0], 
        [0, 0, 0, 0, 0, 1, 0, 0], 
        [0, 0, 0, 0, 0, 0, 1, 0], 
        [1, 1, 1, 1, 1, 0, 0, 1], 
        [0, 0, 0, 0, 0, 1, 0, 0]
      ])
      expect(matrix_3.rotate_in_place).to eq(false)
    end
  end
end