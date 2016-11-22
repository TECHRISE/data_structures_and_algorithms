require 'spec_helper'

RSpec.describe "#caesar_cipher" do
  context "TECHRISE is awesome!, 13" do 
    it "returns GRPUEVFR vf njrfbzr!" do
      expect(caesar_cipher("TECHRISE is awesome!", 13)).to eq("GRPUEVFR vf njrfbzr!")
    end
  end
end